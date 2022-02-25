<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

use Modules\University\Entities\C11MCpmk;

class C11CLecturesCpmk extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ["m_cpmk_id", "c_lecture_class_id"];

    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];


    public function m_cpmk(){
        return $this->belongsTo(
            C11MCpmk::class, "m_cpmk_id", "id"
        );
    }
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CLecturesCpmkFactory::new();
    }
}
