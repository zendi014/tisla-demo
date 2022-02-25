<?php

namespace App\Repositories\Admin;

use App\Repositories\Admin\Interfaces\PermissionRepositoryInterface;

use App\Models\Permission;
use Session;
use App\Helpers\Helper;

class PermissionRepository implements PermissionRepositoryInterface
{
    public function findAll($options = [])
    {
        $perPage = $options['per_page'] ?? null;
        $orderByFields = $options['order'] ?? [];

        $permissions = new Permission();

        $inst_category_id = session()->get('user_data')['inst_category_id'];
        $qlimit = Helper::general_query_limit();

        $inst_id = session()->get('user_data')['inst_id'];

        if ($orderByFields) {
            foreach ($orderByFields as $field => $sort) {
                $permissions = $permissions->where('m_institution_categories_id', $inst_category_id)
                                           ->orWhere('m_institution_categories_id', null)
                                           ->orWhere('a_institutions_id', $inst_id)
                                           ->orWhere('a_institutions_id', null)
                                           ->orderBy($field, $sort)
                                           ->limit($qlimit);
            }
        }

        if ($perPage) {
            return $permissions->where('m_institution_categories_id', $inst_category_id)
                               ->orWhere('m_institution_categories_id', null)
                               ->orWhere('a_institutions_id', $inst_id)
                               ->orWhere('a_institutions_id', null)
                               ->paginate($perPage);
        }
        
        return $permissions->where('m_institution_categories_id', $inst_category_id)
                           ->orWhere('m_institution_categories_id', null)
                           ->orWhere('a_institutions_id', $inst_id)
                           ->orWhere('a_institutions_id', null)
                           ->limit($qlimit)->get();
    }

    public function findById($id)
    {
        return Permission::findOrFail($id);
    }

    public function create($params = [])
    {
        return Permission::firstOrCreate($params);
    }

    public function update($id, $params = [])
    {
        $permission = Permission::findOrFail($id);
       
        return $permission->update($params);
    }

    public function delete($id)
    {
        $permission  = Permission::findOrFail($id);

        return $permission->delete();
    }
}
