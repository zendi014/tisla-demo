<?php

namespace App\Models\Modules;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use UuidTrait;


class MAuthRoute extends Model
{
    use HasFactory, UuidTrait;

    protected $fillable = [
        'inst_category',
        'inst_level',
    ];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
}