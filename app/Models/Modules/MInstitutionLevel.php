<?php

namespace App\Models\Modules;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Concerns\UuidTrait;

class MInstitutionLevel extends Model
{
    use HasFactory, UuidTrait;

    protected $fillable = [
        'level',
        'institution_category_id'
    ];

    protected $primaryKey = 'id';
}
