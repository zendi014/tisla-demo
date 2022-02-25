<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

class C11CCurriculumCpl extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = [];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CCurriculumCplFactory::new();
    }
}
