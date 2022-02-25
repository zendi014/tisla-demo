<?php

namespace App\Actions\Fortify;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Illuminate\Validation\Rule;
use App\Helpers\Helper;
use Illuminate\Support\Str;


use App\Http\Controllers\Modules\InstitutionController;
use App\Http\Controllers\Modules\UserInstitutionController;

use App\Models\User;
use App\Models\Modules\AInstitution;


class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        
        $validator = Validator::make($input, [
            'email' => [
                'required',
                'string',
                'email',
                'max:255',
                Rule::unique(User::class),
            ],
            'institution_name' => ['required', 'string', 'max:255', Rule::unique(AInstitution::class)],
            'institution_domain' => ['required', 'string', 'max:255', Rule::unique(AInstitution::class)],
            'institution_location' => ['required', 'string', 'max:255'],
            'institution_category' => ['required', 'string', 'max:1'],
            'institution_level' => ['required', 'string', 'max:1'],
            'password' => $this->passwordRules()
        ])->validate();
             
        //  CHECK INSTITUTION NAME and CREATEDBY
        $check_inst_name = InstitutionController::check_by_name($input['institution_name']);
        $check_domain_name = InstitutionController::check_by_domain_name($input['institution_domain']);
        $check_inst_creator = InstitutionController::check_by_creator($input['email']);
        
        if(is_null($check_inst_name) && is_null($check_domain_name) && is_null($check_inst_creator)){
            $avatar = "/images/default-avatar.png";
            $user_code = Helper::GenerateUserCode($input['email']);

            $user_data = array(
                'name' => $input['institution_name']." Admin",
                'email' => $input['email'],
                'password' => Hash::make($input['password']),
                'user_code' => $user_code,
                'remember_token' => Hash::make($input['password'].'|'.Str::random(10)),
                'avatar' => $avatar,            
            );

            $user = User::create($user_data); //insertGetId

            if($user){
                $user->assignRole('Admin');

                // get user id by user code and email
                $uid = User::where("email", $input['email'])
                             ->where("user_code", $user_code)
                             ->first();

                // IF SUCCESS INSERT INSTITUTION & UserInst
                $institution_code = Helper::GenerateInstitutionCode($input['institution_name']);
                $institution_data = array(
                    'institution_code' => $institution_code,
                    'institution_name' => $input['institution_name'],
                    'institution_location' => $input['institution_location'],
                    'institution_category' => (int)$input['institution_category'],
                    'institution_level' => (int)$input['institution_level'],
                    'institution_domain' => $input['institution_domain'],
                    'institution_image' => "/assets/images/insitutions.png",
                    "created_by" => $uid->id
                );

                $res_intitution_data = InstitutionController::create($institution_data);                

                if($res_intitution_data){
                    $user_institution = array(
                        'user_id' => $uid->id,
                        'institution_id' => $res_intitution_data->id,
                        'assigned_by' => $uid->id
                    );

                    $res_user_institution = UserInstitutionController::create($user_institution);

                    return $user;

                }else{
                    // return redirect()->route('register', ['global_error' => 'Institution Instance Already Created...']);
                    return redirect()->back()->withErrors(['global_error' => 'Institution Instance Already Created...']);
                }

            }else{
                return redirect()->back()->withErrors(['global_error' => 'User Already Created...']);
            }
            
        }else{
            // return redirect()->route('register', ['global_error' => 'Institution Instance Already Created...']);
            // return redirect()->back()->withErrors(['global_error' => 'Institution Instance Already Created...']);
            return Redirect::back()->withErrors(['global_error' => 'Institution Instance Already Created...']);
        }       
    }
}
