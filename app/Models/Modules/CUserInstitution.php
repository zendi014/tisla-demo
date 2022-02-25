<?php

namespace App\Models\Modules;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Concerns\UuidTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

use App\Models\User;

class CUserInstitution extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;
    protected $fillable = [
        'institution_id',
        'user_id',
        'assigned_by',
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

    // public function users(){
    //     return $this->hasMany(User::class, 'id', 'user_id')->select(['id', 'user_code', 'name', 'avatar']);;
    // }

}