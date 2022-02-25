<?php

namespace App\Models\Modules;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GUserCode extends Model
{
    use HasFactory;
    protected $fillable = [
        'email',
        'created_at'
    ];

    protected $primaryKey = 'id';
}
