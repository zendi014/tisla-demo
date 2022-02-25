<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

// use Modules\University\Entities\C11MCourseWork;

class C11MCourseWorkMark extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["marks"];
    
    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11MCourseWorkMarkFactory::new();
    }

    // public function course_work(){
    //     return $this->belongTo(
    //         C11MCourseWork::class, "id", "m_course_works_id"
    //     );
    // }

    public function getCreatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['created_at'])->format('d, M Y H:i:s');
    }

    public function getUpdatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['updated_at'])->format('d, M Y H:i:s');
    }
}
