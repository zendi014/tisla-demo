<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class C11GLectureSeq extends Model
{
    use HasFactory;

    protected $fillable = ["code"];
    
    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11GLectureSeqFactory::new();
    }
}
