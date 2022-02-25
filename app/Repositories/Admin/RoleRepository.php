<?php

namespace App\Repositories\Admin;

use App\Repositories\Admin\Interfaces\RoleRepositoryInterface;

use App\Models\Role;
use Session;
use DB;
use App\Helpers\Helper;


class RoleRepository implements RoleRepositoryInterface
{
    public function findAll($options = [])
    {
        $perPage = $options['per_page'] ?? null;
        $orderByFields = $options['order'] ?? [];

        $roles = new Role();

        $inst_id = session()->get('user_data')['inst_id'];
        $qlimit = Helper::general_query_limit();

        if ($orderByFields) {
            foreach ($orderByFields as $field => $sort) {
                $roles = $roles->where('a_institutions_id', null)
                               ->orWhere('a_institutions_id', $inst_id)
                               ->orderBy($field, $sort)->limit($qlimit);
            }
        }

        if ($perPage) {
            return $roles->where('a_institutions_id', null)
                         ->orWhere('a_institutions_id', $inst_id)
                         ->paginate($perPage);
        }
        
        return $roles->where('a_institutions_id', null)
                      ->orWhere('a_institutions_id', $inst_id)->limit($qlimit)->get();
    }

    public function findById($id)
    {
        return Role::findOrFail($id);
    }

    public function findByName($name)
    {
        return  Role::findOrCreate($name);
    }

    public function create($params = [])
    {
        $params['guard_name'] = 'web';
        $params['a_institutions_id'] = session()->get('user_data')['inst_id']; //from session data

        // dd($params);
        return DB::transaction(function () use ($params) {
            if ($role = Role::create($params)) {
                $permissions = !empty($params['permissions']) ? $params['permissions'] : [];
                $role->syncPermissions($permissions);
    
                return $role;
            }
        });
    }

    public function update($id, $params = [])
    {
        $role = Role::findOrFail($id);

        if ($role->name == Role::ADMIN) {
            return true;
        }

        return DB::transaction(function () use ($params, $role) {
            $permissions = !empty($params['permissions']) ? $params['permissions'] : [];
            $role->syncPermissions($permissions);
        
            return $role->update($params);
        });
    }

    public function delete($id)
    {
        $role  = Role::findOrFail($id);

        if ($role->name == Role::ADMIN) {
            return false;
        }

        return $role->delete();
    }
}
