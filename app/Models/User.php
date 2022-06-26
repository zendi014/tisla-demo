<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

use Carbon\Carbon;

use Spatie\Permission\Traits\HasRoles;
use App\Models\Concerns\UuidTrait;

use App\Models\Modules\CUserInstitution;



class User extends Authenticatable
{
    use HasFactory, Notifiable, UuidTrait, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'user_code',
        'avatar'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $visible = ['id', 'user_code', 'name', 'avatar'];

    // protected $primaryKey = 'user_id';

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime'
    ];

    protected $attributes = [
        'avatar' => '/images/default-avatar.png'
    ];

    protected $keyType = 'string';
    public $incrementing = false;

    public function getCreatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['created_at'])->format('d, M Y H:i:s');
    }

    public function getUpdatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['updated_at'])->format('d, M Y H:i:s');
    }

    public function getVerifiedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['email_verified_at'])->format('d, M Y H:i:s');
    }

    public function roles_() {
        return $this->belongsToMany(
            User::class, 
            'model_has_roles', 
            'model_id', 
            'model_id'
        )->join('roles', 'roles.id', '=', 'model_has_roles.role_id')
        ->withPivot('model_has_roles.role_id as role_id', 'roles.name as role_name', 'roles.a_institutions_id as role_institution'); 
    }

    public function c_user_institutions(){
        return $this->belongsTo(CUserInstitution::class, 'id', 'user_id')
                     ->select(['institution_id', 'user_id', 'assigned_by', 'faculty_id', 'department_id']);
    }

    public function scopeWithWhereHas($query, $relation, $constraint){
        return $query->whereHas($relation, $constraint)
        ->with([$relation => $constraint]);
    }

    
    public function isAdmin() {
        return $this->hasRole->name('Admin');
    }
}
