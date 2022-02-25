<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;

use Spatie\MediaLibrary\MediaCollections\Models\Media as BaseMedia;

use App\Models\Concerns\UuidTrait;

class Media extends BaseMedia
{
    use HasFactory, UuidTrait;
    // protected $fillable = [
    //     'file_name',
    //     'base_path',
    //     'mime_type',
    //     'file_size',
    //     'collection_type'
    // ];

    protected $primaryKey = 'id';
    protected $keyType = 'string';
    
    public $incrementing = false;
}
