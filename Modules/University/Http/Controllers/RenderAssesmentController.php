<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use App\Http\Controllers\Test\ReadXLSMController;
use Modules\University\Entities\C11AssesmentFile;


use Modules\University\Http\Controllers\C11FacultyContnroller;
use Modules\University\Http\Controllers\C11DepartmentController;
use Modules\University\Http\Controllers\C11CurriculumController;
use Modules\University\Http\Controllers\C11LecturesController;
use Modules\University\Http\Controllers\C11LecturerController;
use Modules\University\Http\Controllers\C11CollegerController;
use Modules\University\Http\Controllers\C11LectureCourseWorkController;

use Modules\University\Entities\C11CLectureClass;
use Modules\University\Entities\C11CLectureColleger;
use Modules\University\Entities\C11CLectureCpl;

class RenderAssesmentController extends Controller
{

    


    public static function render_assesment_file(Request $request){
        try{
            $file_id = $request->get('file_id');

            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $C11AssesmentFile = C11AssesmentFile::with('files')
                                                ->where('file_id',  $file_id)
                                                ->first();
            if($C11AssesmentFile){
                $file_path = $C11AssesmentFile->files->file_path . $C11AssesmentFile->files->file_name;
            
                $rai = self::render_assesment_identity($file_path);
                $cpls = self::cpl_list($file_path);
                $cpmks = self::cmpk_list($file_path);

                $recap_assesment = self::recap_assesment($file_path);
                $sia_marks = self::sia_marks($recap_assesment);
                
                
                // render assesment indentity
                if(isset($rai["lecture_detail"]["fakultas"])){
                    $fakultas = C11FacultyContnroller::store([
                                    "user_inst_id" => $user_inst_id,
                                    "fakultas_name" => $rai["lecture_detail"]["fakultas"]
                                ]);

                    if($fakultas){

                        if(isset($rai["lecture_detail"]["programstudi"])){

                            $department = C11DepartmentController::store([
                                            "user_inst_id" => $user_inst_id,
                                            "c_faculty_id" => $fakultas->id,
                                            "name" => $rai["lecture_detail"]["programstudi"]
                                        ]);

                            if($department){
                                $latest_curriculum = C11CurriculumController::latest();
                                // dd($latest_curriculum);

                                $department_curricullum = C11DepartmentController::set_department_curriculum([
                                            "user_inst_id" => $user_inst_id,
                                            "curriculum_id" => $latest_curriculum->id, 
                                            "department_id" => $department->id
                                ]);

                                if(isset($rai["lecture_detail"]["kodematakuliah"])){
                                    // store lecture and get lecture id
                                    $lectures = C11LecturesController::store([
                                        "user_inst_id" => $user_inst_id,
                                        "code" => $rai["lecture_detail"]["kodematakuliah"],
                                        "name" => $rai["lecture_detail"]["matakuliah"],
                                        "level_marks" => $rai["lecture_detail"]["jenjangsks"],
                                        "semester" => $rai["lecture_detail"]["tahunajaran"],
                                        "dept_flag" => $department->flag
                                    ]);
                                    
                                    if($lectures){   
                                        $curriculum_lecture = C11CurriculumController::set_curriculum_lecture([
                                                "user_inst_id" => $user_inst_id,
                                                "lecture_id" => $lectures->id,
                                                "curriculum_id" => $latest_curriculum->id
                                        ]);

                                        $lecturer = C11LecturerController::store([
                                            "user_inst_id" => $user_inst_id,
                                            "name" => $rai["lecture_detail"]["namadosen"],
                                            "nidn" => $rai["lecture_detail"]["nidn"],
                                            "dept_flag" => $department->flag,
                                        ]);

                                        if($lecturer){
                                            $department_lecturer= C11DepartmentController::set_department_lecturer([
                                                "user_inst_id" => $user_inst_id,
                                                "department_id" => $department->id,
                                                "lecturer_id" => $lecturer->id
                                            ]);
                                        }       
                                        
                                        
                                        $c_lecture_class = C11LecturesController::store_c_lecture_class([
                                                "m_faculty_id"       => $fakultas->m_faculty_id,
                                                "m_department_id"    => $department->id,
                                                "m_lecture_id"       => $lectures->id,
                                                "m_lecturer_id"      => $lecturer->id,
                                                "assement_file_id"   => $file_id,
                                        ]);
                                    }
                                }
                                
                            }
                            
                        }
                    }                    
                }

                // render assesment colleger
                if(isset($rai["student_lists"])){
                    foreach($rai["student_lists"] as $val) {
                        $colleger = C11CollegerController::store([
                            "user_inst_id" => $user_inst_id,
                            "name" => $val['name'],
                            "nim" => $val['nim'],
                            "dept_flag" => $department->flag
                        ]);

                        if($colleger){
                            $department_colleger= C11DepartmentController::set_department_colleger([
                                "user_inst_id" => $user_inst_id,
                                "m_department_id" => $department->id,
                                "m_colleger_id" => $colleger->id
                            ]);


                            if($c_lecture_class){
                                $c_lecture_colleger = C11LecturesController::store_c_lecture_colleger([
                                        "c_lecture_class_id" => $c_lecture_class->id,
                                        "m_colleger_id"      => $colleger->id
                                ]);
                            }                            
                        }
                        
                    }                    
                }
                
                //get cpls
                if($cpls){
                    foreach($cpls as $val) {
                        C11CplController::store([
                            "user_inst_id" => $user_inst_id,
                            "name" => $val['name'],
                            "description" => $val['description']
                        ]);
                    }
                }

                if($cpmks){
                    if($lectures){
                        foreach($cpmks as $val) {
                            $res_cmpk = C11CpmkController::store([
                                "user_inst_id" => $user_inst_id,
                                "name" => $val['name'],
                                "description" => $val['description'],
                                "c_lecture_class_id" => $c_lecture_class->id,
                            ]);

                            
                            if($res_cmpk){
                                foreach($val["cpl"] as $_vval){
                                    $cpl_by_name = C11CplController::find_cpl_by_name([
                                        "user_inst_id" => $user_inst_id,
                                        "cpl_name" => $_vval
                                    ]);
                                    
                                    if($cpl_by_name){
                                        $c_lecture_cpls = C11LecturesController::store_c_lecture_cpls([
                                            "c_lecture_class_id" => $c_lecture_class->id,
                                            "m_cpl_id"           => $cpl_by_name->m_cpl_id
                                        ]);
                                    }

                                }
                            }                            
                        }
                    }
                }

                if($sia_marks){
                    foreach($sia_marks as $vsia){
                        $res_m_course_work = C11LectureCourseWorkController::store_m_course_work([
                            "user_inst_id" => $user_inst_id,
                            "name" => $vsia["Name"],
                            "description" => $vsia["Description"],
                            "marks" => $vsia["Bobot"],
                            "c_lecture_class_id" => $c_lecture_class->id
                        ]);
                        
                        
                        if($res_m_course_work){
                            foreach($vsia["Question_Map_CPMK"] as $qmap){
                                $m_cw_detail = C11LectureCourseWorkController::store_m_lecture_course_work_detail([
                                    "question_name" => $qmap["Name"],
                                    "marks" => $qmap["Marks"],
                                    "m_course_works_id" => $res_m_course_work->m_course_works_id
                                ]);

                                if($m_cw_detail){
                                    C11LectureCourseWorkController::store_c_lecture_course_work_cpmk([
                                        "cpmk_name" => $qmap["CPMK"]["Name"],
                                        "c_lecture_class_id" => $c_lecture_class->id,
                                        "m_cw_detail_id" =>  $m_cw_detail->id,
                                        "marks" => $qmap["CPMK"]["Marks"]
                                    ]);
                                    
                                    foreach($qmap["CPL"] as $qmap_cpl){
                                        C11LectureCourseWorkController::store_c_lecture_course_work_cpl([
                                            "cpl_name" => $qmap_cpl["Name"],
                                            "c_lecture_class_id" => $c_lecture_class->id,
                                            "m_cw_detail_id" =>  $m_cw_detail->id,
                                            "marks" => $qmap_cpl["Marks"]
                                        ]);
                                    }
                                    
                                }                               
                            }

                            // student marks                            
                            foreach($vsia["student_marks"] as $vsmap){
                                $check_c_lecture_colleger = C11LecturesController::check_c_lecture_colleger([
                                    "name" => $vsmap['Name'],
                                    "nim" => $vsmap['NIM'],
                                    "dept_flag" => $department->flag,
                                    "c_lecture_class_id" => $c_lecture_class->id
                                ]); // m_colleger_id

                                if($check_c_lecture_colleger){
                                    foreach($vsmap["Marks"] as $vsmap_marks){
                                        if($vsmap_marks["Name"] != "TotalMarks"){
                                            $check_m_course_work_details = C11LectureCourseWorkController::check_m_course_work_details([
                                                "m_course_works_id" => $res_m_course_work->m_course_works_id,
                                                "question_name" => $vsmap_marks["Name"],
                                                "marks" => $vsmap_marks["CPMK_Marks"]
                                            ]);

                                            if($check_m_course_work_details){
                                                $store_c_lecture_mark_colleger = C11LecturesController::store_c_lecture_mark_colleger([
                                                    "m_course_works_id" => $res_m_course_work->m_course_works_id ,
                                                    "m_cw_detail_id" => $check_m_course_work_details->id ,
                                                    "c_lecture_class_id" => $c_lecture_class->id , 
                                                    "m_colleger_id" => $check_c_lecture_colleger->m_colleger_id ,
                                                    "student_marks" => (float)$vsmap_marks["Marks"],
                                                    "cw_detail_marks" => (float)$vsmap_marks["AssesmentMarks"]
                                                ]);
                                            }
                                        }else{
                                            // total marks
                                            $store_c_lecture_total_mark_colleger = C11LecturesController::store_c_lecture_total_mark_colleger([
                                                "m_course_works_id" => $res_m_course_work->m_course_works_id,
                                                "c_lecture_class_id" => $c_lecture_class->id , 
                                                "m_colleger_id" => $check_c_lecture_colleger->m_colleger_id ,
                                                "student_total_marks" => (float)$vsmap_marks["Marks"]
                                            ]);
                                        }
                                    }

                                    $update_stat_assesment = C11AssesmentFile::where('file_id',  $file_id)
                                                                               ->update(["is_rendered" => 1]);                                    
                                }
                            }
                        }
                    }
                }

                if($update_stat_assesment){
                    return response()->json([
                        "status" => "OK",
                        "msg" => "Successfully Rendered",
                        "data" => $sia_marks
                    ]);  
                }

            }else{
                $update_stat_assesment = C11AssesmentFile::where('file_id',  $file_id)
                                                           ->update(["is_rendered" => 2]);
                if($update_stat_assesment){
                    return response()->json([
                        "status" => "ERROR",
                        "msg" => "ERROR - Please Check Assesment Layout"
                    ]);  
                }
            }

        }catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }
    // dd(Helper::CheckSimilarity("Tahun Ajaran 2017/2018 - 1", "tahunajaran 2017/2018 - 2"));













    private static function cpl_list($file_path){
        $rs = 31;
        $re = 69;
        $rsma = self::render_sheet_mapping_assesment($file_path, $rs, $re, "C");
        
        $cpl_lists = array();
        $c = 1;

        foreach($rsma as $val) {
            if($c >= $rs && $c <= $re){
                if(is_null($val['B'])==false && is_null($val['C'])==false){ 
                    $cpl_lists[] = array(
                        'name' => $val['B'],
                        'description' => $val['C']
                    );
                }
            }
            $c++;
        }
        return $cpl_lists;
    }


    private static function cmpk_list($file_path){
        $rs = 8;
        $re = 15;
        $rsma = self::render_sheet_mapping_assesment($file_path, $rs, $re, "D");
        
        $cmpk_lists = array();
        $c = 1;

        foreach($rsma as $val) {
            if($c >= $rs && $c <= $re){
                if(is_null($val['C'])==false && is_null($val['D'])==false){ 
                    $cmpk_lists[] = array(
                        'name' => "CPMK".$val['C'],
                        'description' => $val['D'],
                        'cpl' => self::map_to_cpls($file_path, "CPMK".$val['C'])
                    );
                }
            }
            $c++;
        }
        return $cmpk_lists;
    }



    
    private static function map_to_cpls($file_path, $cpmk_name){
        $rs = 18;
        $re = 28;
        $rsma = self::render_sheet_mapping_assesment($file_path, $rs, $re, "AO");

        $map_to_cpl_list = array();
        $c = 20;

        switch ($cpmk_name) {
            case 'CPMK1':
                $j=1;
                foreach ($rsma[$c] as $k => $v){
                    if(is_null($v) == false && is_null($rsma[18][$k]) == false){
                        array_push($map_to_cpl_list, $rsma[18][$k]);
                    }
                    $j++;
                }
                break;

            case 'CPMK2':
                $j=1;
                foreach ($rsma[$c+1] as $k => $v){
                    if(is_null($v) == false && is_null($rsma[18][$k]) == false){
                        array_push($map_to_cpl_list, $rsma[18][$k]);
                    }
                    $j++;
                }
                break;

            case 'CPMK3':
                $j=1;
                foreach ($rsma[$c+2] as $k => $v){
                    if(is_null($v) == false && is_null($rsma[18][$k]) == false){
                        array_push($map_to_cpl_list, $rsma[18][$k]);
                    }
                    $j++;
                }
                break;

            case 'CPMK4':
                $j=1;
                foreach ($rsma[$c+3] as $k => $v){
                    if(is_null($v) == false && is_null($rsma[18][$k]) == false){
                        array_push($map_to_cpl_list, $rsma[18][$k]);
                    }
                    $j++;
                }
                break;

            case 'CPMK5':
                $j=1;
                foreach ($rsma[$c+4] as $k => $v){
                    if(is_null($v) == false && is_null($rsma[18][$k]) == false){
                        array_push($map_to_cpl_list, $rsma[18][$k]);
                    }
                    $j++;
                }
                break;
            
            case 'CPMK6':
                $j=1;
                foreach ($rsma[$c+5] as $k => $v){
                    if(is_null($v) == false && is_null($rsma[18][$k]) == false){
                        array_push($map_to_cpl_list, $rsma[18][$k]);
                    }
                    $j++;
                }
                break;

            case 'CPMK7':
                $j=1;
                foreach ($rsma[$c+6] as $k => $v){
                    if(is_null($v) == false && is_null($rsma[18][$k]) == false){
                        array_push($map_to_cpl_list, $rsma[18][$k]);
                    }
                    $j++;
                }
                break;
            
            case 'CPMK8':
                $j=1;
                foreach ($rsma[$c+7] as $k => $v){
                    if(is_null($v) == false && is_null($rsma[18][$k]) == false){
                        array_push($map_to_cpl_list, $rsma[18][$k]);
                    }
                    $j++;
                }
                break;
        }
        
        return $map_to_cpl_list;
    }


    
    private static function render_assesment_identity($file_path){
        try{
            $sheet_name = ['MK & Mhs'];

            $val_sheet_mk_mhs = new ReadXLSMController(
                $file_path, $sheet_name,
                1, 70, self::createColumnsArray('C')
            );

            $lecture_detail = array();
            $student_lists = array();
            $c = 0;
            foreach($val_sheet_mk_mhs->ReadXLSM() as $val) {
                // check identity
                if($c < 9){
                    $lecture_detail[Helper::text_preg_flag($val['B'])] = $val['C'];
                }

                // check mhs
                if($c>12 && $c < 68){
                    if(is_null($val['B'])==false && is_null($val['C'])==false){
                        $student_lists[] = array(
                            'name' => $val['B'],
                            'nim' => $val['C']
                        );
                    }                    
                }
                $c++;
            }

            $res = array (
                "lecture_detail" => $lecture_detail,
                "student_lists" => $student_lists
            );
            return $res;
        }catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }


    private static function sia_marks($recap_assesment){

        $i = 0;
        $group_by_cmpk = array();
        foreach($recap_assesment as $vra){
            $j = 0;
            
            foreach($vra["student_marks"] as $key => $smark){

                $recap_assesment[$i]["group_by_cpmk"][$j]["Name"] = $smark["Name"];
                $recap_assesment[$i]["group_by_cpmk"][$j]["NIM"] = $smark["NIM"];
                $recap_assesment[$i]["group_by_cpmk"][$j]["Marks"] = self::group_by("CPMK_Name", $smark["Marks"]);

                $recap_assesment[$i]["group_by_cpmk"][$j]["BobotXTotalMarks"] = $recap_assesment[$i]["group_by_cpmk"][$j]["Marks"]["AVG"][0]["Marks"] * $recap_assesment[$i]["Bobot"] / 100;
                
                $k=0;
                $sel_cpmk = "";
                foreach( $recap_assesment[$i]["group_by_cpmk"][$j]["Marks"] as $kk => $vv){                    
                    if(count($vv)>1){
                        $n = 0;
                        $sum = 0;
                        $avg = 0;
                        foreach($vv as $vvv){
                            $sum = $sum + $vvv["AssesmentMarks"];
                            $n++;
                        }
                        $avg = $sum/$n;

                        $recap_assesment[$i]["group_by_cpmk"][$j]["Marks"][$kk]["CPMK_AVG"] = $avg;
                    }else{
                        // dd($vv[0]);
                        if(isset($vv[0]["AssesmentMarks"]) == true){
                            $recap_assesment[$i]["group_by_cpmk"][$j]["Marks"][$kk]["CPMK_AVG"] = $vv[0]["AssesmentMarks"];
                        }                        
                    }                    

                    $sel_cpmk = $kk;
                    $k++; 
                }

                $j++;
            }
            $i++;
        }
        return $recap_assesment;
    }


    private static function recap_assesment($file_path){
        $rs = 3;
        $re = 61;
        $rra = self::render_recap_assesment($file_path, $rs, $re, "CF");
        $cw_mapping_detail = self::map_cpmk_marks($file_path);
        $rqcm = self::render_question_cmpk_marks($file_path, 4, 12, "BV");

        $rra_map = array();
        $student_marks = array();

        $c = 0;
        for($p=0; $p < count($cw_mapping_detail); $p++){ // student list
            $i = 1;
            foreach(range(5, 61) as $cc){
                if(is_null(array_slice($rra[$cc], 1, 2)["B"]) == false){
                    if(array_slice($rra[$cc], 1, 2)["B"] != 0){
                        $student_marks[$p][$i] = array(
                            "Name" => array_slice($rra[$cc], 1, 2)["B"],
                            "NIM" => array_slice($rra[$cc], 1, 2)["C"]
                        );
                        // dd( array_slice($rra[$cc], 1, 2) );
                    }                                        
                }
                $i++;
            }
        }
        // dd( array_slice($rra[5], 1, 2)["B"] ); // MHS NAME
        
        $n = 3;
        $gap = 9;

        for($p=0; $p < count($cw_mapping_detail); $p++){
            if($n < 75){ // cols
                $i = 1;
                foreach (array_slice($rra[4], $n, $gap) as $k){ // cols
                    if(is_null($k) == false){
                        $rra_map[$p][$i] = array(
                            "Name" => "P".$i,
                            "Marks" => $k
                        );                      
                    }     
                    $i++;
                }

                $i = 1;
                foreach (array_slice($rra[60], $n, $gap) as $k){ // cols
                    if(is_null($k) == false){
                        if(strlen($k) != 0){
                            $rra_map[$p][$i]["AVG"] = $k;   
                        }                                           
                    }     
                    $i++;
                }

                $i = 1;
                foreach (array_slice($rra[61], $n, $gap) as $k){ // cols
                    if(is_null($k) == false){
                        if(strlen($k) != 0){
                            $rra_map[$p][$i]["STD"] = $k;   
                        }                      
                    }     
                    $i++;
                }

                foreach(range(5,59) as $cc){
                    $j = 1;
                    foreach (array_slice($rra[$cc], $n, $gap) as $k){
                        if(is_null($k) == false){
                            if(isset($student_marks[$p][$cc-4]["Name"]) == true){
                                if($j < 9 ){
                                    $marks = (float)$k;
                                    $cpmk_marks = (float)$cw_mapping_detail[$p]['Question_Map_CPMK'][$j]["CPMK"]["Marks"];

                                    $student_marks[$p][$cc-4]["Marks"][$j] = array(
                                        "Name" => "P" . $j,
                                        "Marks" => $marks,
                                        "CPMK_Name" => $cw_mapping_detail[$p]['Question_Map_CPMK'][$j]["CPMK"]["Name"],
                                        "CPMK_Marks" => $cpmk_marks,
                                        "AssesmentMarks" => 100 * $marks / $cpmk_marks
                                    );  
                                }else{
                                    $student_marks[$p][$cc-4]["Marks"][$j] = array(
                                        "Name" => "TotalMarks",
                                        "Marks" => (float)$k
                                    ); 
                                    $student_marks[$p][$cc-4]["BobotXTotalMarks"] = (float)$k * $cw_mapping_detail[$p]["Bobot"] / 100;
                                }                                                              
                            }                                           
                        }    
                        $j++; 
                    }
                }

                foreach(range(5,12) as $cc){
                    $i = 1;
                    foreach (array_slice($rqcm[$cc], $n, $gap) as $k){
                        if(is_null($k) == false){
                            $quest_map_cpmk[$p][$i]["CPMK"] = array(
                                "Name" => "CPMK" . ($cc-4),
                                "Marks" => (float)$k
                            );                    
                        }     
                        $i++;
                    }
                }

            }

            

            if($p == count($cw_mapping_detail)-1 ){
                $ii = 1;
                foreach (array_slice($rra[4], 75, $gap) as $k){  // cols
                    if(is_null($k) == false){
                        $rra_map[$p][$ii] = array(
                            "Name" => "P".$ii,
                            "Marks" => $k
                        );
                    }     
                    $ii++;
                }

                $i = 1;
                foreach (array_slice($rra[60], 75, $gap) as $k){ // cols
                    if(is_null($k) == false){
                        if(strlen($k) != 0){
                            $rra_map[$p][$i]["AVG"] = $k;   
                        }                                           
                    }     
                    $i++;
                }

                $i = 1;
                foreach (array_slice($rra[61], 75, $gap) as $k){ // cols
                    if(is_null($k) == false){
                        if(strlen($k) != 0){
                            $rra_map[$p][$i]["STD"] = $k;   
                        }                      
                    }     
                    $i++;
                }

                foreach(range(5,59) as $cc){ // row 5 s/d 61
                    $ii = 1;
                    foreach (array_slice($rra[$cc], 75, $gap) as $k){ //cols 
                        if(is_null($k) == false){
                            if(isset($student_marks[$p][$cc-4]["Name"]) == true){
                                if($ii < 9 ){
                                    $marks = (float)$k;
                                    $cpmk_marks = (float)$cw_mapping_detail[$p]['Question_Map_CPMK'][$ii]["CPMK"]["Marks"];

                                    $student_marks[$p][$cc-4]["Marks"][$ii] = array(
                                        "Name" => "P".$ii,
                                        "Marks" => $marks,
                                        "CPMK_Name" => $cw_mapping_detail[$p]['Question_Map_CPMK'][$ii]["CPMK"]["Name"],
                                        "CPMK_Marks" => $cpmk_marks,
                                        "AssesmentMarks" => 100 * $marks / $cpmk_marks
                                    );
                                }else{
                                    $student_marks[$p][$cc-4]["Marks"][$ii] = array(
                                        "Name" => "TotalMarks",
                                        "Marks" => (float)$k
                                    ); 
                                    $student_marks[$p][$cc-4]["BobotXTotalMarks"] = (float)$k * $cw_mapping_detail[$p]["Bobot"] / 100;
                                }                                
                            }                                          
                        }
                        $ii++; 
                    }
                }
            }
            // 3 12 21 30 39 48 57 66 75 84
            // 2 10 18 26 34 42 50 58 66
            
            
            $cw_mapping_detail[$p] = array_merge( 
                $cw_mapping_detail[$p], 
                ["student_marks" => $student_marks[$p]],
                ["rra_map" => $rra_map[$p]]
            );

            $n += $gap;
        }
        return $cw_mapping_detail;
    }


    private static function map_cpmk_marks($file_path){     
        $rs = 4;
        $re = 12;
        $rqcm = self::render_question_cmpk_marks($file_path, $rs, $re, "BV");
        $rqclm = self::render_question_cpl_marks($file_path, $rs, 43, "BV");
        $cw_mapping_detail = self::cpmk_mapping_bobot($file_path);

        $quest_map_cpmk = array();
        $quest_map_cpl = array();
        $n = 2;
        $gap = 8;

        for($p=0; $p < count($cw_mapping_detail); $p++){
            
            if($n < 66) {
                $i = 1;
                foreach (array_slice($rqcm[4], $n, $gap) as $k){
                    if(is_null($k) == false){
                        $quest_map_cpmk[$p][$i] = array(
                            "Name" => "P".$i,
                            "Marks" => $k
                        );                      
                    }     
                    $i++;
                }

                // $i = 1;
                // foreach (array_slice($rqclm[4], $n, $gap) as $k){
                //     if(is_null($k) == false){
                //         $quest_map_cpl[$p][$i] = array(
                //             "Name" => "P".$i,
                //             "Marks" => $k
                //         );                      
                //     }     
                //     $i++;
                // }

                foreach(range(5,12) as $cc){
                    $i = 1;
                    foreach (array_slice($rqcm[$cc], $n, $gap) as $k){
                        if(is_null($k) == false){
                            $quest_map_cpmk[$p][$i]["CPMK"] = array(
                                "Name" => "CPMK" . ($cc-4),
                                "Marks" => (float)$k
                            );                    
                        }     
                        $i++;
                    }
                }
                
                foreach(range(5,43) as $cc){
                    $i = 1;
                    foreach (array_slice($rqclm[$cc], $n, $gap) as $k){
                        if(is_null($k) == false){
                            // $quest_map_cpl[$p][$i]["CPL"][] = array(
                            //     "Name" => "CPL" . ($cc-4),
                            //     "Marks" => $k
                            // ); 
                            
                            $quest_map_cpmk[$p][$i]["CPL"][] = array(
                                "Name" => "CPL" . ($cc-4),
                                "Marks" => $k
                            ); 
                        }     
                        $i++;
                    }                    
                }                
            }            
            if($p == count($cw_mapping_detail)-1 ){
                $ii = 1;
                foreach (array_slice($rqcm[4], 66, $gap) as $k){ 
                    if(is_null($k) == false){
                        $quest_map_cpmk[$p][$ii] = array(
                            "Name" => "P".$ii,
                            "Marks" => $k
                        );
                    }     
                    $ii++;
                }

                // $i = 1;
                // foreach (array_slice($rqclm[4], 66, $gap) as $k){
                //     if(is_null($k) == false){
                //         $quest_map_cpl[$p][$i] = array(
                //             "Name" => "P".$i,
                //             "Marks" => $k
                //         );                      
                //     }     
                //     $i++;
                // }

                foreach(range(5,12) as $cc){
                    $i = 1;
                    foreach (array_slice($rqcm[$cc], 66, $gap) as $k){
                        if(is_null($k) == false){
                            $quest_map_cpmk[$p][$i]["CPMK"] = array(
                                "Name" => "CPMK" . ($cc-4),
                                "Marks" => $k
                            );                    
                        }     
                        $i++;
                    }
                }  

                foreach(range(5,43) as $cc){
                    $i = 1;                    
                    foreach (array_slice($rqclm[$cc], 66, $gap) as $k){
                        if(is_null($k) == false){
                            // $quest_map_cpl[$p][$i]["CPL"][] = array(
                            //     "Name" => "CPL" . ($cc-4),
                            //     "Marks" => $k
                            // );   
                            
                            $quest_map_cpmk[$p][$i]["CPL"][] = array(
                                "Name" => "CPL" . ($cc-4),
                                "Marks" => $k
                            ); 
                        }     
                        $i++;
                    }
                }
            }

            $cw_mapping_detail[$p] = array_merge( 
                $cw_mapping_detail[$p], 
                ["Question_Map_CPMK" => $quest_map_cpmk[$p]],
                // ["Question_Map_CPL" => $quest_map_cpl[$p]] 
            );
            
            $n += $gap;
        }

        // dd($cw_mapping_detail);
        
        return $cw_mapping_detail;
    }


    private static function cpmk_mapping_bobot($file_path){
        $rs = 3;
        $re = 11;
        $rsma = self::render_sheet_mapping_assesment($file_path, $rs, $re, "AA");
        
        $assesment_name = array();
        $c = 1; $cw = 1;
        foreach($rsma as $val) {
            if($c >= $rs && $c <= $re){
                if(is_null($val['Q'])==false || is_null($val['S'])==false){
                    $list_cpmk = array(
                        !is_null($val["T"]) ? 'CPMK1': null,
                        !is_null($val["U"]) ? 'CPMK2': null,
                        !is_null($val["V"]) ? 'CPMK3': null,
                        !is_null($val["W"]) ? 'CPMK4': null,
                        !is_null($val["X"]) ? 'CPMK5': null,
                        !is_null($val["Y"]) ? 'CPMK6': null,
                        !is_null($val["Z"]) ? 'CPMK7': null,
                        !is_null($val["AA"]) ? 'CPMK8': null,
                    );
                    $cpmk_list = array();

                    foreach($list_cpmk as $v) {
                        if(!is_null($v)){
                            $cpmk_list[] = $v;
                        }
                    }

                    $_name = "Course Work " . $cw;
                    if(Helper::text_preg_flag($val["Q"]) == "uas"){
                        $_name = "EXAM";
                    }
                    
                    $assesment_name[] = array(
                        "Name" => strtoupper($_name),
                        "Description" => strtoupper($val["Q"]),
                        "Bobot" => $val["S"],
                        "CPMKs" => $cpmk_list,
                        "Total_CPMK" => count($cpmk_list)
                    );
                    $cw++;                  
                }
            }
            $c++;
        }
        return $assesment_name;
    }





    // ===================MAIN=======================

    private static function render_recap_assesment($file_path, $rs, $re, $ce){
        $sheet_name = ['Rekap Asesmen', 'MK & Mhs', 'CPMK Bobot'];
        // $sheet_name = ['Rekap Asesmen'];
        // dd($sheet_name);
        $val_sheet_mapping_assesment = new ReadXLSMController(
            $file_path, $sheet_name,
            $rs, $re, self::createColumnsArray($ce)
        );
        // dd($val_sheet_mapping_assesment->ReadXLSM()->getActiveSheet());
        return $val_sheet_mapping_assesment->ReadXLSM();
    }


    private static function render_sheet_mapping_assesment($file_path, $rs, $re, $ce){
        $sheet_name = ['Mapping Asesmen'];
        $val_sheet_mapping_assesment = new ReadXLSMController(
            $file_path, $sheet_name,
            $rs, $re, self::createColumnsArray($ce)
        );
        return $val_sheet_mapping_assesment->ReadXLSM();
    }


    private static function render_question_cmpk_marks($file_path, $rs, $re, $ce){
        $sheet_name = ['CPMK Bobot'];
        $val_sheet_mapping_assesment = new ReadXLSMController(
            $file_path, $sheet_name,
            $rs, $re, self::createColumnsArray($ce)
        );
        return $val_sheet_mapping_assesment->ReadXLSM();
    }

    private static function render_question_cpl_marks($file_path, $rs, $re, $ce){
        $sheet_name = ['CPL Bobot'];
        $val_sheet_mapping_assesment = new ReadXLSMController(
            $file_path, $sheet_name,
            $rs, $re, self::createColumnsArray($ce)
        );
        return $val_sheet_mapping_assesment->ReadXLSM();
    }


    // ===================HELPER=======================

    private static function createColumnsArray($end_column, $first_letters = ''){
        $columns = array();
        $length = strlen($end_column);
        $letters = range('A', 'Z');
        
        // Iterate over 26 letters.
        foreach ($letters as $letter) {
            // Paste the $first_letters before the next.
            $column = $first_letters . $letter;
        
            // Add the column to the final array.
            $columns[] = $column;
        
            // If it was the end column that was added, return the columns.
            if ($column == $end_column)
                return $columns;
        }
        
        // Add the column children.
        foreach ($columns as $column) {
            // Don't itterate if the $end_column was already set in a previous itteration.
            // Stop iterating if you've reached the maximum character length.
            if (!in_array($end_column, $columns) && strlen($column) < $length) {
                $new_columns = self::createColumnsArray($end_column, $column);
                // Merge the new columns which were created with the final columns array.
                $columns = array_merge($columns, $new_columns);
            }
        }
        
        return $columns;
    }


    private static function group_by($key, $data) {
        $result = array();

        foreach($data as $val) {
            if(array_key_exists($key, $val)){
                $result[$val[$key]][] = $val;
            }else{
                $result["AVG"][] = $val;
            }
        }

        return $result;
    }


    private function array_count_avg($array, $round=1){
        $num = count($array);
        return array_map(
            function($val) use ($num,$round){
                return array('count'=>$val,'avg'=>round($val/$num*100, $round));
            },
            array_count_values($array)
        );
    }
}
