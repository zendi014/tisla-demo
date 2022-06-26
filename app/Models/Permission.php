<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Support\Str;

use Spatie\Permission\Models\Permission as SpatiePermission;
use App\Models\Concerns\UuidTrait;

class Permission extends SpatiePermission
{
    use HasFactory, UuidTrait;

    protected $fillable = [
        'id',
        'name',
        'guard_name',
    ];

    protected $primaryKey = 'id';
    protected $keyType = 'string';
    public $incrementing = false;

    public static function defaultPermissions()
    {
        return [
            'view_users',
            'add_users',
            'edit_users',
            'delete_users',

            'view_roles',
            'add_roles',
            'edit_roles',
            'delete_roles',
            
            'view_assesment',
            'add_assesment',
            'edit_assesment',
            'delete_assesment', 
            'download_assesment',
            'upload_assesment',

            'view_recap_assesment',
            'add_recap_assesment',
            'edit_recap_assesment',
            'delete_recap_assesment', 
            'download_recap_assesment',
            'upload_recap_assesment',

            'view_curriculum',
            'add_curriculum',
            'edit_curriculum',
            'delete_curriculum', 
            'download_curriculum',

            'view_assesment_statistic',
            'add_assesment_statistic',
            'edit_assesment_statistic',

            'view_sync',
            'view_sync',
            'edit_sync',
            'delete_sync', 
            'download_sync',
            'upload_sync',
        ];
    }
}

/*
            'view_assesment',
            'add_assesment',
            'edit_assesment',
            'delete_assesment', 
            'download_assesment',
            'upload_assesment',

            'view_academicboard',
            'add_academicboard',
            'edit_academicboard',
            'delete_academicboard', 
            'download_academicboard',
            'upload_academicboard',
            
            'view_analysisreport',
            'add_analysisreport',
            'edit_analysisreport',
            'delete_analysisreport', 
            'download_analysisreport',
            'upload_analysisreport',
            
            'view_university',
            'add_university',
            'edit_university',
            'delete_university', 

            

            'view_faculty',
            'add_faculty',
            'edit_faculty',
            'delete_faculty', 

            'view_department',
            'add_department',
            'edit_department',
            'delete_department', 

            'view_education_level',
            'add_education_level',
            'edit_education_level',
            'delete_education_level', 

            'view_lecturer',
            'add_lecturer',
            'edit_lecturer',
            'delete_lecturer', 
            'download_lecturer', 

            'view_student',
            'add_student',
            'edit_student',
            'delete_student', 
            'download_student', 
            
            'view_lectures',
            'add_lectures',
            'edit_lectures',
            'delete_lectures', 
            'download_lectures',

            'view_class_room',
            'add_class_room',
            'edit_class_room',
            'delete_class_room', 
            'download_class_room',

            'view_cpl',
            'add_cpl',
            'edit_cpl',
            'delete_cpl', 
            'download_cpl',

            'view_cpmk',
            'add_cpmk',
            'edit_cpmk',
            'delete_cpmk', 
            'download_cpmk',

            'view_course_work',
            'add_course_work',
            'edit_course_work',
            'delete_course_work', 
            'download_course_work',

            'view_mapping_lectures',
            'add_mapping_lectures',
            'edit_mapping_lectures',
            'delete_mapping_lectures', 
            'download_mapping_lectures',

            'view_lecture_schedule',
            'add_lecture_schedule',
            'edit_lecture_schedule',
            'delete_lecture_schedule', 
            'download_lecture_schedule'
*/