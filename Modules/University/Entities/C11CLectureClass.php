<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

class C11CLectureClass extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = [
        "m_faculty_id", "m_department_id", "m_lecture_id", "m_lecturer_id", "assement_file_id"
    ];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CLectureClassFactory::new();
    }
}
