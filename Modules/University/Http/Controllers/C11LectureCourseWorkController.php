<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

use App\Helpers\Helper;
use App\Models\Modules\CUserInstitution;
use Session;

use Modules\University\Entities\C11MCourseWork;
use Modules\University\Entities\C11MCourseWorkMark;
use Modules\University\Entities\C11MCourseWorkDetail;
use Modules\University\Entities\C11CLecturesCpmk;
use Modules\University\Entities\C11CLectureCpl;
use Modules\University\Entities\C11CLectureCourseWorkCpmk;
use Modules\University\Entities\C11CLectureCourseWorkCpl;
use Modules\University\Entities\C11CLectureCourseWork;

class C11LectureCourseWorkController extends Controller
{
    public function index()
    {
    }


    public function create()
    {
    }

    public static function store_m_course_work($data){
        try {
            // $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst_id = $data["user_inst_id"];

            $name = strtoupper($data["name"]);
            $flag = Helper::text_preg_flag($name)."-".Helper::text_preg_flag($data["description"]);

            $m_course_work = C11MCourseWork::firstOrCreate([
                "flag" => $flag,
                "name" => $name
            ],[
                "name" => $name,
                "description" => strtoupper($data["description"]),
                "flag" => $flag ,
                "created_by" => $user_inst_id
            ]);

            if($m_course_work){
                $m_course_work_mark = C11MCourseWorkMark::firstOrCreate([
                    "marks" => (int)$data["marks"]
                ], [
                    "marks" => (int)$data["marks"],
                ]);

                if($m_course_work_mark){
                    return C11CLectureCourseWork::firstOrCreate([
                        "c_lecture_class_id" => $data["c_lecture_class_id"],
                        "m_course_works_id" => $m_course_work->id,
                        "m_course_work_marks_id" => $m_course_work_mark->id
                    ],[
                        "c_lecture_class_id" => $data["c_lecture_class_id"],
                        "m_course_works_id" => $m_course_work->id,
                        "m_course_work_marks_id" => $m_course_work_mark->id
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function store_m_lecture_course_work_detail($data){
        try {
            return C11MCourseWorkDetail::firstOrCreate([
                "marks" => (int)$data["marks"],
                "m_course_works_id" => $data["m_course_works_id"],
                "question_name" => strtoupper($data["question_name"]),
            ], [
                "marks" => (int)$data["marks"],
                "question_name" => strtoupper($data["question_name"]),
                "m_course_works_id" => $data["m_course_works_id"]
            ]);
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function store_c_lecture_course_work_cpmk($data){
        try {
            $cpmk_name = $data["cpmk_name"];
            $check_lecture_cpmk = C11CLecturesCpmk::whereHas('m_cpmk', function($q) use ($cpmk_name) {
                $q->where('name', $cpmk_name);
            })->where("c_lecture_class_id", $data["c_lecture_class_id"])->first();

            if($check_lecture_cpmk){
                return C11CLectureCourseWorkCpmk::firstOrCreate([
                    "marks" => (int)$data["marks"],
                    "m_cw_detail_id" => $data["m_cw_detail_id"],
                    "m_cpmk_id" => $check_lecture_cpmk->m_cpmk_id,
                    "c_lecture_class_id" => $data["c_lecture_class_id"]
                ], [
                    "marks" => (int)$data["marks"],
                    "m_cw_detail_id" => $data["m_cw_detail_id"],
                    "m_cpmk_id" => $check_lecture_cpmk->m_cpmk_id,
                    "c_lecture_class_id" => $data["c_lecture_class_id"]
                ]);
            }
            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public static function store_c_lecture_course_work_cpl($data){
        try {
            $cpl_name = $data["cpl_name"];
            $check_lecture_cpl = C11CLectureCpl::whereHas('m_cpl', function($q) use ($cpl_name) {
                $q->where('name', $cpl_name);
            })->where("c_lecture_class_id", $data["c_lecture_class_id"])->first();

            if($check_lecture_cpl){
                return C11CLectureCourseWorkCpl::firstOrCreate([
                    "marks" => (int)$data["marks"],
                    "m_cw_detail_id" => $data["m_cw_detail_id"],
                    "m_cpl_id" => $check_lecture_cpl->m_cpl_id,
                    "c_lecture_class_id" => $data["c_lecture_class_id"]
                ], [
                    "marks" => (int)$data["marks"],
                    "m_cw_detail_id" => $data["m_cw_detail_id"],
                    "m_cpl_id" => $check_lecture_cpl->m_cpl_id,
                    "c_lecture_class_id" => $data["c_lecture_class_id"]
                ]);
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function check_m_course_work_details($data){
        try {
            return C11MCourseWorkDetail::where("m_course_works_id", $data["m_course_works_id"])
                                        ->where("question_name", strtoupper($data["question_name"]))
                                        ->where("marks", $data["marks"])->first();
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
    }

    public function edit($id)
    {
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
