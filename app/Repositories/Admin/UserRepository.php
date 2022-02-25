<?php

namespace App\Repositories\Admin;

use Carbon\Carbon;
use DB;

use App\Repositories\Admin\Interfaces\UserRepositoryInterface;

use App\Models\User;
use App\Models\Role;

use App\Models\Modules\CUserInstitution;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\Helpers\Helper;

use App\Http\Controllers\Modules\UserInstitutionController;

class UserRepository implements UserRepositoryInterface
{
    public function findAll($options = [])
    {
        $perPage = $options['per_page'] ?? null;
        $orderByFields = $options['order'] ?? [];

        $institution_id =  session()->get('user_data')['inst_id'];

        $users = (new User())
                      ->with('roles')
                      ->with('c_user_institutions');
        
        $qlimit = Helper::general_query_limit();

        if ($orderByFields) {
            foreach ($orderByFields as $field => $sort) {
                $users = $users->orderBy($field, $sort);
            }
        }

        if (!empty($options['filter']['start_date']) && !empty($options['filter']['end_date'])) {
            $startDate = Carbon::parse($options['filter']['start_date']);
            $endDate = Carbon::parse($options['filter']['end_date']);

            $users = $users->whereBetween(DB::raw('DATE(created_at)'), [$startDate, $endDate]);
        }

        if (!empty($options['filter']['q'])) {
            $users = $users->whereHas('c_user_institutions', fn ($query) =>
                        $query->where('institution_id', '=', $institution_id)
                    )->orWhere('name', 'LIKE', "%{$options['filter']['q']}%")
                    ->orWhere('email', 'LIKE', "%{$options['filter']['q']}%")
                    ->limit($qlimit);
        }

        if ($perPage) {
            return $users->whereHas('c_user_institutions', fn ($query) =>
                $query->where('institution_id', '=', $institution_id)
            )->paginate($perPage);
        }
        
        return $users->whereHas('c_user_institutions', fn ($query) =>
            $query->where('institution_id', '=', $institution_id)
        )->limit($qlimit)->get();
    }

    public function findById($id)
    {
        return User::findOrFail($id);
    }


    public function create($params = [])
    {
        // dd(session()->get('user_data'));

        //check_user_name
        $user_email = $params['user_name'] . '@'. session()->get('user_data')['inst_domain'];
        $check_user_name = $this->check_user_name($user_email);

        if(is_null($check_user_name)){           

            $avatar = "/images/default-avatar.png";
            $user_code = Helper::GenerateUserCode($user_email);

            $user_data = array(
                'name' => $params['name'],
                'email' => $user_email,
                'password' => Hash::make($params['password']),
                'user_code' => $user_code,
                'remember_token' => Hash::make($params['password'].'|'.Str::random(10)),
                'avatar' => $avatar,
                // 'permissions' => $params['permissions'],
                // 'role_id' => $params['role_id']         
            );

            if(isset($params['permissions'])){
                $user_data['permissions'] = $params['permissions'];
            }
            if(isset($params['role_id'])){
                $user_data['role_id'] = $params['role_id'];
            }

            // dd($user_data);

            return DB::transaction(function () use ($user_data) {
                $user = User::create($user_data);
                $this->syncRolesAndPermissions($user_data, $user);

                // get user id by user code and email
                $uid = User::where("email", $user_data['email'])
                            ->where("user_code", $user_data['user_code'])
                            ->first();

                if($user){
                    $user_institution = array(
                        'user_id' => $uid->id,
                        'institution_id' => session()->get('user_data')['inst_id'],
                        'assigned_by' => session()->get('user_data')['user_id']
                    );

                    $res_user_institution = UserInstitutionController::create($user_institution);

                    return $user;
                }
            });
        }
        
    }


    private function check_user_name($user_email){
        return User::where("email", $user_email)->first();
    }

    public function update($id, $params = [])
    {
        $user = User::findOrFail($id);
        
        if (!$params['password']) {
            unset($params['password']);
        }

        return DB::transaction(function () use ($params, $user) {
            $user->update($params);
            $this->syncRolesAndPermissions($params, $user);
            
            return $user;
        });
    }

    public function delete($id)
    {
        $user  = User::findOrFail($id);

        return $user->delete();
    }
    
    /**
     * Sync roles and permissions
     *
     * @param Request $request
     * @param $user
     * @return string
     */
    private function syncRolesAndPermissions($params, $user)
    {
        // Get the submitted roles
        $roles = isset($params['role_id']) ? [$params['role_id']] : [];
        $permissions = isset($params['permissions']) ? $params['permissions'] : [];

        // Get the roles
        $roles = Role::find($roles);

        // check for current role changes
        if (!$user->hasAllRoles($roles)) {
            // reset all direct permissions for user
            $user->permissions()->sync([]);
        } else {
            // handle permissions
            $user->syncPermissions($permissions);
        }

        $user->syncRoles($roles);

        return $user;
    }
}
