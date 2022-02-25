<?php

namespace App\Http\Controllers\Modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

// use App\Repositories\Modules\Interfaces\InstitutionRepoInterfaces;
// use App\Authorizable;

use App\Models\Modules\AInstitution;

class InstitutionController extends Controller
{
    // use Authorizable;

    // private $institutionRepo;
    // public function __construct(InstitutionRepoInterfaces $institutionRepo){
    //     parent::__construct();
    //     $this->institutionRepo = $institutionRepo;
    // }

    public function __construct(){
    }

    public static function create($data){
        return AInstitution::create($data);
    }


    public static function check_by_name($val){
        return AInstitution::where('institution_name', $val)->first();
        // return AInstitution::where('institution_name', $val)->firstOrFail();
    }

    public static function check_by_domain_name($val){
        return AInstitution::where('institution_name', $val)->first();
    }

    public static function check_by_creator($val){
        return AInstitution::where('institution_name', $val)->first();
    }

    public static function findById($id){
        return AInstitution::where('id', $id)->first();
    }
    
}
