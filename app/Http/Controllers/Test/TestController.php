<?php

namespace App\Http\Controllers\Test;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Helpers\Helper;
use App\Authorizable;
use App\Http\Controllers\Test\ReadXLSMController;
use Session;

use App\Models\Modules\AInstitution;

class TestController extends Controller
{
    // use Authorizable;

    public function __construct()
    {
        parent::__construct();
        // $this->middleware('auth')->except('logout');
    }

    public function session_auth(Request $request)
    {
        try{
            return response()->json([
                'Session' => session(),
                'Auth' => Auth::user()
            ]);
        }catch (Throwable $e) {
            report($e);
    
            return false;
        }
        
    }

    public function TestHelpers(){
        try{
            $inst_name = "Universitas Mercu Buana";
            $email = "zendi.iklima@mercubuanac.ac.id";
            return response()->json([
                // "encryptData" => Helper::encryptData("Zendi Iklima"),
                // "decryptData" => Helper::decryptData(Helper::encryptData("Zendi Iklima")),
                "ClientDeviceInfo" => Helper::ClientDeviceInfo()
                // "CheckSimilarity" => Helper::CheckSimilarity("Univ. Mercu Buana", $inst_name),
                // "GenerateInstCode" => Helper::GenerateInstitutionCode($inst_name),
                // "GenerateUserCode" => Helper::GenerateUserCode($email),
                // "GetInstitutionCategory" => Helper::GetInstitutionCategory(),
                // "GetInstitutionLevel" => Helper::GetInstitutionLevel(),
                // "GetProvinceCity"=>Helper::GetProvinceCity(),
                // "csrf_token" => csrf_token(),
                // "institution_name" => AInstitution::where('institution_name', "Mercu Buana")->first()
                // "CountProvinceCity"=>count(Helper::GetProvinceCity())
            ]);
        }catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }









    public function assesment_page(){
        return view('test.assesment');
    }

    public function assesment_content_detail($file_name){
        $render = $this->render_excel($file_name);
        $this->data["assesment_data"] = $render;
        return view('test.assesment_content_detail', $this->data);
    }
    
    public function assesment_content_details($file_name){
        $render = $this->render_excel($file_name);
        return response()->json($render);
    }

















    // ===================MAIN=======================
    public function render_excel($file_name){
        try{
            $file_path = "files/uploads/".$file_name.".xlsm";

            $LECTURE = $this->render_sheet_mk_mhs($file_path);

            // MAPPING
            $cmpk_lists = $this->cmpk_list($file_path);
            $cw_mapping_detail = $this->cpmk_mapping_bobot($file_path);
            $cpl_lists = $this->cpl_list($file_path);
            // $map_to_cpl = $this->map_to_cpls($file_path);
            // dd($map_to_cpl);

            // BOBOT
            // $map_cpmk_marks = $this->map_cpmk_marks($file_path);

            // RECAP
            $recap_assesment = $this->recap_assesment($file_path);

            $SIA_marks = $this->sia_marks($recap_assesment);

            $FINAL_grade = $this->final_grades($recap_assesment);

            $CQI_analysis = $this->AnalyzeCQI($SIA_marks);

            return [
                "LECTURE" => [
                    "lecture_detail" => $LECTURE["lecture_detail"],
                    "students" => $LECTURE["student_lists"],
                    "total_student" => count($LECTURE["student_lists"]),
                ],
                
                "MAPPING" => [                    
                    "CPL" => [
                        "cpl_lists" => $cpl_lists,
                        "total_cpl" => count($cpl_lists),
                    ],

                    "CPMK" => [
                        "cmpk_lists" => $cmpk_lists,
                        "total_cmpk" => count($cmpk_lists),
                        // "map_to_cpls" => $map_to_cpl
                    ],

                    "CW_MAP" => $cw_mapping_detail,
                ],

                // "MARKS" => [
                //     $map_cpmk_marks
                // ],

                // "RECAP" => [
                //     $recap_assesment
                // ],
                
                "SIA" => $SIA_marks,
                
                "FINAL_GRADE" => $FINAL_grade,

                "CQI" => $CQI_analysis
            ];
            
        }catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }

    private function AnalyzeCQI($SIA_marks){
        $group_by_cpmk = array();
        $total_participant = 0;

        foreach($SIA_marks as $smval) {
            $total_participant = count($smval['student_marks']);
            foreach($smval['group_by_cpmk'] as $gbcval) {
                $group_by_cpmk[] = $gbcval;
            }
        }
        // $this->array_count_avg(array_column($final_marks["student_marks"], 'Grade'));

        $CPMKs = array();
        $CPMK_AVGs = array();

        foreach($group_by_cpmk as $gbcval){
            // echo " ".count($gbcval["Marks"]);
            foreach($gbcval["Marks"] as $key => $val){
                // dd($key, $val["CPMK_AVG"]);
                if($key != "AVG"){
                    $CPMKs[$key][] = $val["CPMK_AVG"];
                }
            }
        }

        foreach($CPMKs as $key => $vcpmk){
            $CPMK_AVGs[$key]["AVG"] = array_sum($vcpmk) / count($vcpmk);
            $CPMK_AVGs[$key]["AVG_LI"] = 4 * ( array_sum($vcpmk) / count($vcpmk) ) / 100;

            for($i=0; $i<$total_participant;$i++){
                $CPMK_AVGs[$key]["Details"][$i]["MarksTotal"] = 0;
            }
            
            $j = 0;
            $n = 1;
            foreach($vcpmk as $vv){ 
                $CPMK_AVGs[$key]["Details"][$j]["MarksTotal"] = ($CPMK_AVGs[$key]["Details"][$j]["MarksTotal"] + $vv);
                $CPMK_AVGs[$key]["Details"][$j]["MarksAVG"] = $CPMK_AVGs[$key]["Details"][$j]["MarksTotal"]/$n;
                $CPMK_AVGs[$key]["Details"][$j]["Grade"] = $this->grade_covertion($CPMK_AVGs[$key]["Details"][$j]["MarksAVG"]);
                $CPMK_AVGs[$key]["Details"][$j]["Detail"][$n] = $vv;
                
                if($j < $total_participant-1){                    
                    $j++;
                }else{
                    $j = 0;
                    $n++;
                }
            }

            $CPMK_AVGs[$key]["CPMKGrade"] = $this->array_count_avg(array_column($CPMK_AVGs[$key]["Details"], 'Grade'));
        }

        return $CPMK_AVGs;        
    }


    private function grade_covertion($final_marks){
        // =IF(H13="","E", IF(H13>=80,"A",IF(H13>=74,"B+",IF(H13>=68,"B",IF(H13>=62,"C+",IF(H13>=56,"C",IF(H13>=45,"D","E")))))))
        if($final_marks >= 80 && $final_marks < 100){
            return "A";
        }
        if($final_marks >=74){
            return "B+";
        }
        if($final_marks >= 68){
            return "B";
        }
        if($final_marks >= 62){
            return "C+";
        }
        if($final_marks >= 56){
            return "C";
        }
        if($final_marks >= 45){
            return "D";
        }
        if($final_marks >= 0){
            return "E";
        }
        if($final_marks < 0){
            return "ERROR";
        }
    }

    private function final_grades($recap_assesment){
        $i = 0;
        
        $bobot_cw = 0;
        $total_cw = 0;

        $bobot_exam = 0;
        $total_exam = 0;

        $final_marks = array();
        $ExamMarks = array();
        $CourseWorkMarks = array();
        $Grade = array();

        foreach($recap_assesment as $vra){
            $j = 0;
            foreach($vra["student_marks"] as $smvra){
                $CourseWorkMarks[$j] = 0;
                $ExamMarks[$j] = 0;
                $j++;
            }
        }

        foreach($recap_assesment as $vra){

            if($vra["Description"] == "UAS"){
                $final_marks["ExamMarks"] = $vra["Bobot"];
            }else{
                $bobot_cw = $bobot_cw + $vra["Bobot"];
                $final_marks["CourseWorkMarks"] = $bobot_cw;
            }

            $j = 0;
            foreach($vra["student_marks"] as $smvra){
                $final_marks["student_marks"][$j]["Name"] = $smvra["Name"];
                $final_marks["student_marks"][$j]["NIM"] = $smvra["NIM"];

                if($vra["Description"] == "UAS"){
                    $ExamMarks[$j] = $smvra["BobotXTotalMarks"];
                    $final_marks["student_marks"][$j]["ExamMarks"] = $ExamMarks[$j];
                }else{
                    $CourseWorkMarks[$j] = $CourseWorkMarks[$j] + $smvra["BobotXTotalMarks"];
                    $final_marks["student_marks"][$j]["CourseWorkMarks"] = $CourseWorkMarks[$j];
                }     
                $j++;
            }
        }

        $j = 0;
        foreach($final_marks["student_marks"] as $fmsm){
            $final_marks["student_marks"][$j]["FinalMarks"] = $fmsm["ExamMarks"] + $fmsm["CourseWorkMarks"];
            $grade =  $this->grade_covertion($fmsm["ExamMarks"] + $fmsm["CourseWorkMarks"]);
            $final_marks["student_marks"][$j]["Grade"] = $grade;
            $j++;
        }
  
        $final_marks["GradeDistribution"] = $this->array_count_avg(array_column($final_marks["student_marks"], 'Grade'));
        
        return $final_marks;
    }


    private function cpl_list($file_path){
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


    private function cmpk_list($file_path){
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
                        'CPLs' => $this->map_to_cpls($file_path, "CPMK".$val['C']),
                        'TotalCPL' => count($this->map_to_cpls($file_path, "CPMK".$val['C']))
                    );
                }
            }
            $c++;
        }
        return $cmpk_lists;
    }





    private function sia_marks($recap_assesment){

        $i = 0;
        $group_by_cmpk = array();
        foreach($recap_assesment as $vra){
            $j = 0;
            
            foreach($vra["student_marks"] as $key => $smark){

                $recap_assesment[$i]["group_by_cpmk"][$j]["Name"] = $smark["Name"];
                $recap_assesment[$i]["group_by_cpmk"][$j]["NIM"] = $smark["NIM"];
                $recap_assesment[$i]["group_by_cpmk"][$j]["Marks"] = $this->group_by("CPMK_Name", $smark["Marks"]);

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

    private function recap_assesment($file_path){
        $rs = 3;
        $re = 61;
        $rra = $this->render_recap_assesment($file_path, $rs, $re, "CF");
        $cw_mapping_detail = $this->map_cpmk_marks($file_path);
        $rqcm = $this->render_question_cmpk_marks($file_path, 4, 12, "BV");

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

    private function map_cpmk_marks($file_path){     
        $rs = 4;
        $re = 12;
        $rqcm = $this->render_question_cmpk_marks($file_path, $rs, $re, "BV");
        $rqclm = $this->render_question_cpl_marks($file_path, $rs, 43, "BV");
        $cw_mapping_detail = $this->cpmk_mapping_bobot($file_path);

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

    private function cpmk_mapping_bobot($file_path){
        $rs = 3;
        $re = 11;
        $rsma = $this->render_sheet_mapping_assesment($file_path, $rs, $re, "AA");
        
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


    


    private function assesment_cpmk($file_path, $cpmk_name){
        $rs = 18;
        $re = 28;
        $rsma = $this->render_sheet_mapping_assesment($file_path, $rs, $re, "AP");
        $c = 20;
        $assement_txt = "";

        switch ($cpmk_name) {
            case 'CPMK1':
                if(is_null($rsma[$c]["AP"]) == false){
                    $assement_txt = $rsma[$c]["AP"];
                }
                break;

            case 'CPMK2':
                if(is_null($rsma[$c+1]["AP"]) == false){
                    $assement_txt = $rsma[$c+1]["AP"];
                }
                break;

            case 'CPMK3':
                if(is_null($rsma[$c+2]["AP"]) == false){
                    $assement_txt = $rsma[$c+2]["AP"];
                }
                break;

            case 'CPMK4':
                if(is_null($rsma[$c+3]["AP"]) == false){
                    $assement_txt = $rsma[$c+3]["AP"];
                }
                break;

            case 'CPMK5':
                if(is_null($rsma[$c+4]["AP"]) == false){
                    $assement_txt = $rsma[$c+4]["AP"];
                }
                break;
            
            case 'CPMK6':
                if(is_null($rsma[$c+5]["AP"]) == false){
                    $assement_txt = $rsma[$c+5]["AP"];
                }
                break;

            case 'CPMK7':
                if(is_null($rsma[$c+6]["AP"]) == false){
                    $assement_txt = $rsma[$c+6]["AP"];
                }
                break;
            
            case 'CPMK8':
                if(is_null($rsma[$c+7]["AP"]) == false){
                    $assement_txt = $rsma[$c+7]["AP"];
                }
                break;
        }

        return str_replace("\n",", ", $assement_txt);
    }

    private function map_to_cpls($file_path, $cpmk_name){
        $rs = 18;
        $re = 28;
        $rsma = $this->render_sheet_mapping_assesment($file_path, $rs, $re, "AO");

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


    // ================ GENERAL ======================


    private function render_recap_assesment($file_path, $rs, $re, $ce){
        $sheet_name = ['Rekap Asesmen', 'MK & Mhs', 'CPMK Bobot'];
        // $sheet_name = ['Rekap Asesmen'];
        // dd($sheet_name);
        $val_sheet_mapping_assesment = new ReadXLSMController(
            $file_path, $sheet_name,
            $rs, $re, $this->createColumnsArray($ce)
        );
        // dd($val_sheet_mapping_assesment->ReadXLSM()->getActiveSheet());
        return $val_sheet_mapping_assesment->ReadXLSM();
    }

    private function render_question_cmpk_marks($file_path, $rs, $re, $ce){
        $sheet_name = ['CPMK Bobot'];
        $val_sheet_mapping_assesment = new ReadXLSMController(
            $file_path, $sheet_name,
            $rs, $re, $this->createColumnsArray($ce)
        );
        return $val_sheet_mapping_assesment->ReadXLSM();
    }

    private function render_question_cpl_marks($file_path, $rs, $re, $ce){
        $sheet_name = ['CPL Bobot'];
        $val_sheet_mapping_assesment = new ReadXLSMController(
            $file_path, $sheet_name,
            $rs, $re, $this->createColumnsArray($ce)
        );
        return $val_sheet_mapping_assesment->ReadXLSM();
    }

    private function render_sheet_mapping_assesment($file_path, $rs, $re, $ce){
        $sheet_name = ['Mapping Asesmen'];
        $val_sheet_mapping_assesment = new ReadXLSMController(
            $file_path, $sheet_name,
            $rs, $re, $this->createColumnsArray($ce)
        );
        return $val_sheet_mapping_assesment->ReadXLSM();
    }

    private function render_sheet_mk_mhs($file_path){
        $sheet_name = ['MK & Mhs'];
        $val_sheet_mk_mhs = new ReadXLSMController(
            $file_path, $sheet_name,
            1, 70, $this->createColumnsArray('C')
        );

        $lecture_detail = array();
        $student_lists = array();
        $c = 0;
        foreach($val_sheet_mk_mhs->ReadXLSM() as $val) {
            if($c < 8){
                $lecture_detail[][$val['B']] = $val['C'];
            }
            if($c>11 && $c < 67){
                if(is_null($val['B'])==false && is_null($val['C'])==false){
                    $student_lists[] = array(
                        'Name' => $val['B'],
                        'NIM' => $val['C']
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
    }


    private function createColumnsArray($end_column, $first_letters = ''){
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
                $new_columns = $this->createColumnsArray($end_column, $column);
                // Merge the new columns which were created with the final columns array.
                $columns = array_merge($columns, $new_columns);
            }
        }
        
        return $columns;
    }


    // ===================HELPER=======================

    private function group_by($key, $data) {
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
