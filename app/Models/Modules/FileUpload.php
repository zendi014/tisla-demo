<?php

namespace App\Models\Modules;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Concerns\UuidTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class FileUpload extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;
    
    protected $fillable = [
        'file_name',
        'file_path',
        'collection_type',
        'mime_type',
        'file_size'
    ];

    protected $primaryKey = 'id';

    protected $dates = ['deleted_at'];

}
