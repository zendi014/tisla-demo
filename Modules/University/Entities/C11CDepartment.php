<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

class C11CDepartment extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["m_department_id", "c_faculty_id", "created_by"];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CDepartmentFactory::new();
    }

    // public function curriculums(){
    //     return $this->hasMany(
    //         C11CDepartment::class, 'c_faculty_id', 'id'
    //     )->join('c11_m_departments', 'c11_m_departments.id', '=', 'c11_c_departments.m_department_id');
    // }
}
