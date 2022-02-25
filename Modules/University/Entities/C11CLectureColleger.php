<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

class C11CLectureColleger extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["c_lecture_class_id", "m_colleger_id"];
    
    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CLectureCollegerFactory::new();
    }

    public function getCreatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['created_at'])->format('d, M Y H:i:s');
    }

    public function getUpdatedAtFormattedAttribute()
    {
        return Carbon::parse($this->attributes['updated_at'])->format('d, M Y H:i:s');
    }

    public function c_lecture_class(){
        return $this->belongsTo(
            C11CLectureClass::class, "c_lecture_class_id", "id"
        );
    }

    public function m_colleger(){
        return $this->belongsTo(
            C11MColleger::class, "m_colleger_id", "id"
        );
    }
}
