<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Arr;

use Session;
use DB;


use App\Helpers\Helper;
use Modules\University\Entities\C11AssesmentFile;
use Modules\University\Entities\C11CLectureClass;

class C11AssesmentFileController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        $assesment_files = $this->findAll(array(
            'order' => 'file_name',
            'per_page' => 6
        ));
        return view('university::assesmentfile', compact('assesment_files'));
    }


    private function findAll($params = []){
        $qlimit = Helper::general_query_limit();
        $user_inst_id = session()->get('user_data')['user_inst_id'];

        $perPage = $params['per_page'] ?? null;
        $orderByFields = $params['order'] ?? [];

        $C11AssesmentFile = (new C11AssesmentFile())
                                 ->with('files');

        if (!empty($params['filter']['q'])) {
            
        }

        if ($perPage) {
            return $C11AssesmentFile->where('created_by', $user_inst_id)
                         ->paginate($perPage);
        }

        if($orderByFields){
            foreach ($orderByFields as $field => $sort) {
                $C11AssesmentFile = $C11AssesmentFile->where('created_by', $user_inst_id)
                                                      ->orderBy($field, $sort);
            }
        }
        
        return $C11AssesmentFile->where('created_by',  $user_inst_id)
                                ->limit($qlimit)->get();
    }


    private static function assesment_by_file_id(){
        $user_inst_id = session()->get('user_data')['user_inst_id'];
        
        $C11AssesmentFile = C11AssesmentFile::with('files')
                                              ->where('created_by',  $user_inst_id)
                                              ->orderBy('created_at', 'desc')
                                              ->limit(9)
                                              ->get();
        $i = 0;
        $assesment_files = array();

        foreach ($C11AssesmentFile as $key => $value) {
            $assesment_files[$i]["file_name"] = $C11AssesmentFile[$i]->files['file_name'];
            $assesment_files[$i]["assement_file_id"] = $C11AssesmentFile[$i]["file_id"];
            $assesment_files[$i]["created_by"] = $C11AssesmentFile[$i]["created_by"];   
            $assesment_files[$i]["is_rendered"] = $C11AssesmentFile[$i]["is_rendered"]; 
            $assesment_files[$i]["created_at"] = $C11AssesmentFile[$i]["created_at"]; 
            if($value->is_rendered == 1){
                    $assesment_files[$i]['assesment_detail'] =  DB::select("SELECT * FROM assesment_by_file_id ('$user_inst_id', '$value->file_id');");
            }else{
                    $assesment_files[$i]['assesment_detail'] = null;
            }
            $i++;
        }
        
        return $assesment_files;
    }
    

    public static function create($data)
    {
        $data['created_by'] = session()->get('user_data')['user_inst_id'];

        return C11AssesmentFile::create($data);
    }

    public function store(Request $request)
    {
        //
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

    public static function delete($file_id)
    {
        return C11AssesmentFile::where('file_id', $file_id)->delete();
    }



    public function dashboard_last_assesment(){
        try{
            $latest_assesment_file = self::assesment_by_file_id();

            return view(
                'university::latest_assesment_file', 
                compact(
                    'latest_assesment_file'
                )
            );
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public function dashboard_last_cqi(){
        try{

        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function assesment_file_uploader(){
        try{
            return view(
                'modules.file_uploader'
            );
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public function dashboard_statistics(){
        try{ // procedure
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $assesment_statistic = DB::select("SELECT * FROM stat_obe_assesment_file ('$user_inst_id');");
            return view(
                'university::assesment_statistic', 
                compact(
                    'assesment_statistic'
                )
            );
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }
















    public static function detail_rendered_assesment_file($file_id){
        $currentAdminMenu =  'Detail Assesment';        

        if( isset(session()->get('user_data')['user_inst_id']) ){
            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $data = [
                "file_id" => $file_id,
                "user_inst_id" => $user_inst_id
            ];
    
    
            $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
            $assesment_identity = self::get_assesment_identity($data);
    
            if($lecture_class){
                $data["c_lecture_class_id"] = $lecture_class->id;
    
                $stat_cqi_cmpk  = self::stat_cqi_cmpk($data);
                $stat_cqi_cpls = self::stat_cqi_cpls($data);
    
                $cqi_stat_grades = self::get_cqi_stat_grades($data);
    
                // dd($mapping_course_work_marks);
                return view(
                    'university::assesment_detail', 
                    compact(
                        'assesment_identity',
                        'stat_cqi_cmpk',
                        'stat_cqi_cpls',
                        'cqi_stat_grades'
                    )
                );
            }
        }else{
            return redirect('logout');
        }        
    }


    public static function student_marks_content($file_id){
        $currentAdminMenu =  'Detail Assesment';
        $user_inst_id = session()->get('user_data')['user_inst_id'];

        $data = [
            "file_id" => $file_id,
            "user_inst_id" => $user_inst_id
        ];


        $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();

        if($lecture_class){
            $data["c_lecture_class_id"] = $lecture_class->id;

            $student_marks = self::get_student_marks($data);
            $pivot_student_mark_by_cpmk = self::pivot_student_mark_by_cpmk($data);
            $pivot_student_mark_by_cpl = self::pivot_student_mark_by_cpl($data);

            // pivot_student_mark_by_cpmk pivot_student_mark_by_cpl
            
            return view(
                'university::student_marks_content', 
                compact(
                    'student_marks',
                    'pivot_student_mark_by_cpmk',
                    'pivot_student_mark_by_cpl'
                )
            );
        }
    }



    public function assesment_chart_content($file_id){
        try{ // procedure
            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $data = [
                "file_id" => $file_id,
                "user_inst_id" => $user_inst_id
            ];
            $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();

            if($lecture_class){
                $data["c_lecture_class_id"] = $lecture_class->id;

                $stat_cqi_cmpk  = self::stat_cqi_cmpk($data);
                $stat_cqi_cpls = self::stat_cqi_cpls($data);
                $cqi_stat_grades = self::get_cqi_stat_grades($data);
                
                return view(
                    'university::assesment_chart_content', 
                    compact(
                        'stat_cqi_cmpk',
                        'stat_cqi_cpls',
                        'cqi_stat_grades'
                    )
                );
            }
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function lecture_info_content($file_id){
        try{ // procedure
            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $data = [
                "file_id" => $file_id,
                "user_inst_id" => $user_inst_id
            ];
            $assesment_identity = self::get_assesment_identity($data);

            return view(
                'university::lecture_info_content', 
                compact(
                    'assesment_identity'
                )
            );
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public function stat_cqi_cpl_cw($file_id){
        try{ // procedure
            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $data = [
                "file_id" => $file_id,
                "user_inst_id" => $user_inst_id
            ];
            $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
            
            if($lecture_class){
                $data["c_lecture_class_id"] = $lecture_class->id;
    
                $stat_cqi_cmpk  = self::stat_cqi_cpl_by_course_work($data);

                return response()->json([
                    'status'=> 200,
                    'statusText'=> "OK",
                    'data'=> $stat_cqi_cmpk
                ]);
            }
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public function cqi_cpls_stats($file_id){
        try{ // procedure
            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $data = [
                "file_id" => $file_id,
                "user_inst_id" => $user_inst_id
            ];

            $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
            
            if($lecture_class){
                $data["c_lecture_class_id"] = $lecture_class->id;
    
                $stat_cqi_cpls  = self::stat_cqi_cpls($data);

                return response()->json([
                    'status'=> 200,
                    'statusText'=> "OK",
                    'data'=> $stat_cqi_cpls
                ]);
            }
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public function cqi_cpmks_stats($file_id){
        try{ // procedure
            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $data = [
                "file_id" => $file_id,
                "user_inst_id" => $user_inst_id
            ];

            $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
            
            if($lecture_class){
                $data["c_lecture_class_id"] = $lecture_class->id;
    
                $stat_cqi_cmpk  = self::stat_cqi_cmpk($data);

                return response()->json([
                    'status'=> 200,
                    'statusText'=> "OK",
                    'data'=> $stat_cqi_cmpk
                ]);
            }
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public function assesment_map_content($file_id){
        try{ // procedure
            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $data = [
                "file_id" => $file_id,
                "user_inst_id" => $user_inst_id
            ];
            
            $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();

            if($lecture_class){
                $data["c_lecture_class_id"] = $lecture_class->id;
    
                $stat_cqi_cmpk  = self::stat_cqi_cmpk($data);
    
                $mapping_course_work_marks = self::get_mapping_course_work_marks($data);                 
    
                // dd($mapping_course_work_marks);
                return view(
                    'university::assesment_map_content', 
                    compact(
                        'stat_cqi_cmpk',
                        'mapping_course_work_marks',
                    )
                );
            }
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }















    public static function get_assesment_identity($data)
    {
        try {
            $user_inst_id = $data["user_inst_id"];
            $file_id = $data["file_id"];
            return DB::select("SELECT * FROM assesment_by_file_id ('$user_inst_id', '$file_id');");
            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function get_stat_cqi_cmpk(Request $request)
    {
        try {
            dd($request);
            $lecture_class = C11CLectureClass::where("assement_file_id", $request->file_id)->first();            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public static function stat_cqi_cmpk($data)
    {
        try {
            $c_lecture_class_id = $data["c_lecture_class_id"];
            return DB::select("SELECT * FROM stat_cqi_cmpk ('$c_lecture_class_id');");
            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function stat_cqi_cpl_by_course_work($data)
    {
        try {
            if(isset($data["c_lecture_class_id"])){
                $c_lecture_class_id = $data["c_lecture_class_id"];
            }else{
                $file_id = $data;
                $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
                $c_lecture_class_id = $lecture_class->id;
            }
            return DB::select("SELECT * FROM stat_cqi_cpl_by_course_work ('$c_lecture_class_id');");
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public static function stat_cqi_cpmk_by_course_work($data)
    {
        try {
            if(isset($data["c_lecture_class_id"])){
                $c_lecture_class_id = $data["c_lecture_class_id"];
            }else{
                $file_id = $data;
                $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
                $c_lecture_class_id = $lecture_class->id;
            }
            return DB::select("SELECT * FROM stat_cqi_cpmk_by_course_work ('$c_lecture_class_id');");
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public static function stat_cqi_cpls($data) 
    {
        try {
            $c_lecture_class_id = $data["c_lecture_class_id"];
            return DB::select("SELECT * FROM stat_cqi_cpls ('$c_lecture_class_id');");
            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function get_mapping_course_work_marks($data) 
    {
        try {
            $c_lecture_class_id = $data["c_lecture_class_id"];
            $course_work_marks = DB::select("SELECT * FROM course_work_marks ('$c_lecture_class_id');");
            
            $result = array();
            $i = 0;
            foreach ($course_work_marks as $key => $value) {
                $result[$i] = $value;             
                
                $get_cpmk = DB::select("SELECT * FROM cpmk_list_by_course_work_id('$c_lecture_class_id', '$value->cw_id');");
                // dd($get_cpmk);  
                $j=0;
                foreach($get_cpmk as $k => $v){
                    $result[$i]->CPMKs[$j] = $v->cpmk_name;
                    $j++;
                }

                $get_cpl = DB::select("SELECT * FROM cpl_list_by_course_work_id('$c_lecture_class_id', '$value->cw_id');");
                $j=0;
                foreach($get_cpl as $k => $v){
                    $result[$i]->CPLs[$j] = $v->cpl_name;
                    $j++;
                }


                $map_question_mark = DB::select("
                    SELECT 
                        mqcpmk.question_name,
                        mqcpmk.question_marks
                    FROM (
                        SELECT 
                        * 
                        FROM 
                        map_questions_cpmk('$c_lecture_class_id', '$value->cw_id')
                    ) as mqcpmk
                    GROUP BY mqcpmk.question_name, mqcpmk.question_marks
                    ORDER BY mqcpmk.question_name            
                ");

                foreach($map_question_mark as $k => $v){
                    $result[$i]->map_question_mark[] = $v;
                }
                

                $get_questions_cpmk = DB::select("SELECT * FROM map_questions_cpmk ('$c_lecture_class_id', '$value->cw_id');");
                
                foreach($get_questions_cpmk as $k => $v){
                    $result[$i]->questions_cpmk[] = $v;
                }


                $get_questions_cpl = DB::select("SELECT * FROM map_questions_cpl ('$c_lecture_class_id', '$value->cw_id');");
                
                foreach($get_questions_cpl as $k => $v){
                    $result[$i]->questions_cpl[] = $v;
                }

                $i++;
            }

            // dd($result);
            return $result;
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function pivot_student_mark_by_cpmk($data) 
    {
        try {
            if(isset($data["c_lecture_class_id"])){
                $c_lecture_class_id = $data["c_lecture_class_id"];
            }else{
                $file_id = $data;
                $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
                $c_lecture_class_id = $lecture_class->id;
            }

            $course_work_marks = DB::select("SELECT * FROM course_work_marks ('$c_lecture_class_id');");
            
            if($course_work_marks){
                $result = array();
                $i = 0;
                foreach ($course_work_marks as $key => $value) { 
                    $result[$i]["cw_name"] = $value->cw_name;
                    $result[$i]["cw_description"] = $value->cw_description;
                    $result[$i]["pivot_data"] = DB::select("SELECT * FROM pivot_student_mark_by_cpmk('$c_lecture_class_id', '$value->cw_id');");  
                    $i++;
                }
                return $result;
            }            

        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function pivot_student_mark_by_cpl($data) 
    {
        try {
            if(isset($data["c_lecture_class_id"])){
                $c_lecture_class_id = $data["c_lecture_class_id"];
            }else{
                $file_id = $data;
                $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
                $c_lecture_class_id = $lecture_class->id;
            }

            $course_work_marks = DB::select("SELECT * FROM course_work_marks ('$c_lecture_class_id');");
            
            if($course_work_marks){
                $result = array();
                $i = 0;
                foreach ($course_work_marks as $key => $value) {
                    $result[$i]["cw_name"] = $value->cw_name;
                    $result[$i]["cw_description"] = $value->cw_description;
                    $result[$i]["pivot_data"]= DB::select("SELECT * FROM pivot_student_mark_by_cpl('$c_lecture_class_id', '$value->cw_id');");  
                    $i++;
                }
                return $result;
            }

        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function get_cqi_stat_grades($data)  
    {
        try {
            if(isset($data["c_lecture_class_id"])){
                $c_lecture_class_id = $data["c_lecture_class_id"];
            }else{
                $file_id = $data;
                $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
                $c_lecture_class_id = $lecture_class->id;
            }
            // dd($c_lecture_class_id)
            return DB::select("SELECT * FROM cqi_stat_grades ('$c_lecture_class_id');");            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function student_grades_by_cpmk($data)  
    {
        try {
            if(isset($data["c_lecture_class_id"])){
                $c_lecture_class_id = $data["c_lecture_class_id"];
            }else{
                $file_id = $data;
                $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
                $c_lecture_class_id = $lecture_class->id;
            }
            // dd($c_lecture_class_id)
            return DB::select("SELECT * FROM student_grades_by_cpmk ('$c_lecture_class_id');");            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function student_grades_by_cpl($data)  
    {
        try {
            if(isset($data["c_lecture_class_id"])){
                $c_lecture_class_id = $data["c_lecture_class_id"];
            }else{
                $file_id = $data;
                $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
                $c_lecture_class_id = $lecture_class->id;
            }
            // dd($c_lecture_class_id)
            return DB::select("SELECT * FROM student_grades_by_cpl ('$c_lecture_class_id');");            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public static function get_student_marks($data) 
    {
        try {
            $c_lecture_class_id = $data["c_lecture_class_id"];

            $student_course_work_mark = DB::select("SELECT * FROM student_mark_course_work ('$c_lecture_class_id');");
            $student_mark_final_exam = DB::select("SELECT * FROM student_mark_final_exam ('$c_lecture_class_id');");
            $student_mark_grades = DB::select("SELECT * FROM student_mark_grades ('$c_lecture_class_id');");

            $result = array();
            $i = 0;
            foreach ($student_course_work_mark as $key => $value) {
                $result[$i] = $value;
                $result[$i]->exam_marks = $student_mark_final_exam[$i]->exam_marks;
                $result[$i]->final_exam_marks = $student_mark_final_exam[$i]->final_exam_marks;
                $result[$i]->avg_exam_marks = $student_mark_final_exam[$i]->avg_exam_marks;

                $result[$i]->total_final_marks = $student_mark_grades[$i]->final_marks;
                $result[$i]->grade = $student_mark_grades[$i]->grade;                   
                $i++;
            }
            // dd($result);
            return $result;            
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    

}
