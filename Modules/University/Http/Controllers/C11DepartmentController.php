<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use Modules\University\Entities\C11MDepartment;
use Modules\University\Entities\C11CDepartment;
use Modules\University\Entities\C11CDepartmentCurriculum;
use Modules\University\Entities\C11CDepartmentLecturer;
use Modules\University\Entities\C11CDepartmentColleger;

use App\Models\Modules\CUserInstitution;

class C11DepartmentController extends Controller
{
    public static function store($data)
    {
        try{
            $name = $data["name"];
            $flag = Helper::text_preg_flag($name);
            $user_inst_id = $data["user_inst_id"];

            $mdepartment = C11MDepartment::firstOrCreate(
                [
                    "flag" => $flag
                ],
                [
                    "flag" => $flag,
                    "name" => strtoupper($name),
                    "created_by" => $user_inst_id
                ]
            );

            if($mdepartment){
                $user_inst = CUserInstitution::where("id", $user_inst_id)->first();

                $cdepartment = C11CDepartment::firstOrCreate([
                            "m_department_id"=> $mdepartment->id,
                            "c_faculty_id"=> $data["c_faculty_id"],
                        ],
                        [
                            "m_department_id"=> $mdepartment->id,
                            "c_faculty_id"=> $data["c_faculty_id"],
                            "created_by" => $user_inst_id,
                ]);

                return $mdepartment;
            }
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function set_department_curriculum($data){
        try{
            $user_inst_id = $data["user_inst_id"];
            
            $mcurricullum = C11CDepartmentCurriculum::firstOrCreate(
                [
                    "department_id" => $data["department_id"],
                    "curriculum_id" => $data["curriculum_id"]
                ],
                [
                    "department_id" => $data["department_id"],
                    "curriculum_id" => $data["curriculum_id"],
                    "created_by" => $user_inst_id
                ]
            );
            return $mcurricullum;
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function set_department_lecturer($data){
        try{
            $user_inst_id = $data["user_inst_id"];
            
            $department_lecturer = C11CDepartmentLecturer::firstOrCreate(
                [
                    "department_id" => $data["department_id"],
                    "lecturer_id" => $data["lecturer_id"]
                ],
                [
                    "department_id" => $data["department_id"],
                    "lecturer_id" => $data["lecturer_id"],
                    "created_by" => $user_inst_id
                ]
            );
            return $department_lecturer;
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function set_department_colleger($data){
        try{
            $user_inst_id = $data["user_inst_id"];
            
            $set_department_colleger = C11CDepartmentColleger::firstOrCreate(
                [
                    "m_department_id" => $data["m_department_id"],
                    "m_colleger_id" => $data["m_colleger_id"]
                ],
                [
                    "m_department_id" => $data["m_department_id"],
                    "m_colleger_id" => $data["m_colleger_id"],
                    "created_by" => $user_inst_id
                ]
            );
            return $set_department_colleger;
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


}