<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

class C11CLectureMarksColleger extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["m_course_works_id", "m_cw_detail_id", "c_lecture_class_id", "m_colleger_id", "student_marks", "cw_detail_marks"];
    
    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];

    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CLectureMarksCollegerFactory::new();
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
