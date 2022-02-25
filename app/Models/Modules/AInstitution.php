<?php

namespace App\Models\Modules;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Concerns\UuidTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class AInstitution extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;
    protected $fillable = [
        'institution_code',
        'institution_name',
        'institution_location',
        'institution_domain',
        'institution_level',
        'institution_category',
        'institution_image',
        'created_by'
    ];
    
    protected $keyType = 'string';
    public $incrementing = false;

    protected $dates = ['deleted_at'];


    public function getCreatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['created_at'])->format('d, M Y H:i:s');
    }

    public function getUpdatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['updated_at'])->format('d, M Y H:i:s');
    }
}
