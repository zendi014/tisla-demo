<?php

namespace App\Models\Modules;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GInstitutionCode extends Model
{
    use HasFactory;
    protected $fillable = [
        'institution_name'
    ];

    protected $primaryKey = 'id';
}
