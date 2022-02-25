<?php

namespace Modules\University\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use UuidTrait;
use SoftDeletes;

use App\Models\Modules\FileUpload;

class C11AssesmentFile extends Model
{
    use HasFactory, UuidTrait, SoftDeletes;

    protected $fillable = ['created_by', 'file_id', 'is_rendered', 'error_message'];
    
    protected $primaryKey = 'id';
    protected $dates = ['deleted_at'];

    protected static function newFactory()
    {
        return \Modules\University\Database\factories\C11AssesmentFileFactory::new();
    }

    public function files(){
        return $this->hasOne(
            FileUpload::class, 'id', 'file_id'
        );
    }

}