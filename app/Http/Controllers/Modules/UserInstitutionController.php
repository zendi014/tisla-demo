<?php

namespace App\Http\Controllers\Modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Modules\CUserInstitution;

class UserInstitutionController extends Controller
{
    public function __construct(){
    }

    public static function create($data){
        return CUserInstitution::create($data);
    }

    public static function findByUserId($user_id){
        return CUserInstitution::where('user_id', $user_id)->first();
    }

}
