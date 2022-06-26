<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use Modules\University\Entities\C11MLecture;
use Modules\University\Entities\C11CLectureClass;
use Modules\University\Entities\C11CLectureColleger;
use Modules\University\Entities\C11CLectureCpl;
use Modules\University\Entities\C11CLectureMarksColleger;
use Modules\University\Entities\C11CLectureTotalMarksColleger;
// use Modules\University\Entities\;

class C11LecturesController extends Controller
{

    public function index()
    {
        return view('university::index');
    }


    public function create()
    {
        return view('university::create');
    }


    public static function store($data)
    {
        try{
            $name = $data["name"];
            $flag = Helper::text_preg_flag($name)."-".strtolower($data["code"])."-".$data["dept_flag"];

            // $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst_id = $data["user_inst_id"];
            
            $mlecture = C11MLecture::firstOrCreate(
                [
                    "flag" => $flag
                ],
                [
                    "flag" => $flag,
                    "code" => $data["code"],
                    "level_marks" => $data["level_marks"],
                    "semester_mk" => $data["semester_mk"],
                    "tahun_ajaran" => Helper::text_remove_space($data["tahun_ajaran"]),
                    "name" => strtoupper($name),
                    "created_by" => $user_inst_id
                ]
            );
            return $mlecture;

        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function store_c_lecture_class($data){
        try{
            return C11CLectureClass::firstOrCreate(
                [
                    "m_faculty_id"       => $data["m_faculty_id"],
                    "m_department_id"    => $data["m_department_id"],
                    "m_lecture_id"       => $data["m_lecture_id"],
                    "m_lecturer_id"      => $data["m_lecturer_id"],
                    "assement_file_id"   => $data["assement_file_id"]
                ],
                [
                    "m_faculty_id"       => $data["m_faculty_id"],
                    "m_department_id"    => $data["m_department_id"],
                    "m_lecture_id"       => $data["m_lecture_id"],
                    "m_lecturer_id"      => $data["m_lecturer_id"],
                    "assement_file_id"   => $data["assement_file_id"]
                ]
            );
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function store_c_lecture_colleger($data){
        try{
            return C11CLectureColleger::firstOrCreate(
                [
                    "c_lecture_class_id"  => $data["c_lecture_class_id"],
                    "m_colleger_id"       => $data["m_colleger_id"]
                ],
                [
                    "c_lecture_class_id"  => $data["c_lecture_class_id"],
                    "m_colleger_id"       => $data["m_colleger_id"]
                ]
            );
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public static function store_c_lecture_cpls($data){
        try{
            return C11CLectureCpl::firstOrCreate(
                [
                    "c_lecture_class_id"    => $data["c_lecture_class_id"],
                    "m_cpl_id"              => $data["m_cpl_id"]
                ],
                [
                    "c_lecture_class_id"    => $data["c_lecture_class_id"],
                    "m_cpl_id"              => $data["m_cpl_id"]
                ]
            );
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function check_c_lecture_colleger($data){
        try {
            $name = $data["name"];
            $flag = Helper::text_preg_flag($name)."-".$data["nim"]."-".$data["dept_flag"];
            return C11CLectureColleger::whereHas('m_colleger', function($q) use ($flag) {
                $q->where('flag', $flag);
            })->where("c_lecture_class_id", $data["c_lecture_class_id"])->first();
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function store_c_lecture_mark_colleger($data)
    {
        try {
            return C11CLectureMarksColleger::firstOrCreate([
                "m_course_works_id" => $data["m_course_works_id"] ,
                "m_cw_detail_id" => $data["m_cw_detail_id"] ,
                "c_lecture_class_id" => $data["c_lecture_class_id"] ,
                "m_colleger_id" => $data["m_colleger_id"],
            ],[
                "m_course_works_id" => $data["m_course_works_id"] ,
                "m_cw_detail_id" => $data["m_cw_detail_id"] ,
                "c_lecture_class_id" => $data["c_lecture_class_id"] ,
                "m_colleger_id" => $data["m_colleger_id"] ,
                "student_marks" => (float)$data["student_marks"],
                "cw_detail_marks" => (float)$data["cw_detail_marks"]
            ]);
        } catch (Throwable $th) {
            report($e);
            return false;
        }
    }



    public static function store_c_lecture_total_mark_colleger($data)
    {
        try {
            return C11CLectureTotalMarksColleger::firstOrCreate([
                "m_course_works_id" => $data["m_course_works_id"] ,
                "c_lecture_class_id" => $data["c_lecture_class_id"] ,
                "m_colleger_id" => $data["m_colleger_id"],
            ],[
                "m_course_works_id" => $data["m_course_works_id"] ,
                "c_lecture_class_id" => $data["c_lecture_class_id"] ,
                "m_colleger_id" => $data["m_colleger_id"] ,
                "student_total_marks" => (float)$data["student_total_marks"]
            ]);
        } catch (Throwable $th) {
            report($e);
            return false;
        }
    }
    


    public function show($id)
    {
        return view('university::show');
    }


    public function edit($id)
    {
        return view('university::edit');
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }
}
