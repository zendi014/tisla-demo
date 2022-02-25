<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;


use UuidTrait;
use SoftDeletes;

class C11CLectureCourseWorkCpmk extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["m_cw_detail_id", "m_cpmk_id", "marks", "c_lecture_class_id"];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CLectureCourseWorkCpmkFactory::new();
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
