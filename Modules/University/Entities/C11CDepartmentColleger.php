<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Modules\University\Entities\C11MColleger;

use UuidTrait;
use SoftDeletes;

class C11CDepartmentColleger extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["m_department_id", "m_colleger_id", "created_by"];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CDepartmentCollegerFactory::new();
    }


    public function collegers(){
        return $this->hasMany(
            C11MColleger::class, 'id', 'm_colleger_id'
        );
        // ->join('c11_m_departments', 'c11_m_departments.id', '=', 'c11_c_departments.m_department_id');
    }
}
