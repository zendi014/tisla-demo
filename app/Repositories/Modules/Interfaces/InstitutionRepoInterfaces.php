<?php

namespace App\Repositories\Modules\Interfaces;

interface InstitutionRepoInterfaces
{
    public function findAll($options = []);
    public function findById($id);
    public function findByName($val);
    public function findByDomainName($val);
    public function findByCreator($val);
    public function create($params = []);
    public function update($id, $params = []);
    public function delete($id);
}