<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

class C11MColleger extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["name", "nim", "flag", "status", "campus_loc", "class_pos", "batch", "created_by"];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11MCollegerFactory::new();
    }
}
