<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Modules\University\Entities\C11MFaculty;
use Modules\University\Entities\C11CDepartment;

use UuidTrait;
use SoftDeletes;

class C11CFaculty extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["m_faculty_id", "institution_id", "created_by"];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CFacultyFactory::new();
    }


    public function faculty(){
        return $this->belongsTo(
            C11MFaculty::class, 'm_faculty_id', 'id'
        );
    }

    public function departments(){
        return $this->hasMany(
            C11CDepartment::class, 'c_faculty_id', 'id'
        )->join('c11_m_departments', 'c11_m_departments.id', '=', 'c11_c_departments.m_department_id');
    }
}
