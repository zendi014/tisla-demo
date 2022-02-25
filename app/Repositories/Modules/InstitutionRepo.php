<?php

namespace App\Repositories\Modules;


use App\Repositories\Modules\Interfaces\InstitutionRepoInterfaces;
use App\Models\Modules\AInstitution;
use App\Models\Modules\CUserInstitution;


class InstitutionRepo implements InstitutionRepoInterfaces
{
    public function findByName($val){
        return AInstitution::where('institution_name', $val)->first();
    }

    public function findByDomainName($val){
        return AInstitution::where('institution_domain', $val)->first();
    }

    public function findByCreator($val){
        return AInstitution::where('created_by', $val)->first();
    }

    public function findAll($options = []){

    }

    public function findById($id){

    }

    public function update($id, $params = []){

    }

    public function create($params = []){

    }

    public function delete($id){

    }
}