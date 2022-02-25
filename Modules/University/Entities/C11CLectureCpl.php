<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use UuidTrait;
use SoftDeletes;

use Modules\University\Entities\C11MCpl;

class C11CLectureCpl extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;
    protected $fillable = ["c_lecture_class_id", "m_cpl_id"];
    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];


    public function m_cpl(){
        return $this->belongsTo(
            C11MCpl::class, "m_cpl_id", "id"
        );
    }

    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11CLectureCplFactory::new();
    }
}
