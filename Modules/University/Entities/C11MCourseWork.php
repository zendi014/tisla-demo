<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

use Modules\University\Entities\C11MCourseWorkMark;
use Modules\University\Entities\C11MCourseWorkDetail;

class C11MCourseWork extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["flag", "name", "description", "created_by"];
    
    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11MCourseWorkFactory::new();
    }

    public function course_work_detail(){
        return $this->hasMany(
            C11MCourseWorkDetail::class, "id", "m_course_works_id"
        );
    }

    public function course_work_mark(){
        return $this->hasOne(
            C11CCourseWorkMark::class, "id", "m_course_works_id"
        );
    }

    public function getCreatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['created_at'])->format('d, M Y H:i:s');
    }

    public function getUpdatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['updated_at'])->format('d, M Y H:i:s');
    }
}
