<?php

namespace App\Models\Modules;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Concerns\UuidTrait;

class MInstitutionCategory extends Model
{
    use HasFactory, UuidTrait;

    protected $fillable = [
        'category'
    ];

    protected $primaryKey = 'id';
}