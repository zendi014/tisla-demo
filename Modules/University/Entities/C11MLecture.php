<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

class C11MLecture extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = [
        "name",
        "code",
        "level_marks",
        "semester_mk",
        "tahun_ajaran",
        "flag",
        "created_by"
    ];


    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11MLectureFactory::new();
    }
}
