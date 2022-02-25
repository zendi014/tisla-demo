<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

class C11CCpl extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["m_cpl_id", "institution_id", "created_by"];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CCplFactory::new();
    }
}
