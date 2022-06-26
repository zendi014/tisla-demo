<?php

namespace App\Http\Controllers;

use App\Models\User;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\App;
use Session;
use Auth;

use App\Http\Controllers\Modules\UserInstitutionController;
use App\Http\Controllers\Modules\InstitutionController;
use App\Http\Controllers\Modules\MAuthRouteController;

use Modules\University\Entities\C11CLectureClass;


use Modules\University\Http\Controllers\C11AssesmentFileController;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except('logout');
    }

    public function index(Request $request)
    {   
        // if(Auth::check()){
        //     if (view()->exists($request->path())) {
        //         return view($request->path());
        //     }
        //     return abort(404);
        // }
        // $this->clear_session();

        return $next($request);
    }

    public function root(Request $request)
    {
        if(Auth::check()){

            $user_inst_id = UserInstitutionController::findByUserId(Auth::user()->id);
            $inst_data = InstitutionController::findById($user_inst_id->institution_id);
            $inst_route = MAuthRouteController::findById($inst_data->institution_category, $inst_data->institution_level);

            $r = "/admin";
            
            if(Auth::user()->roles_()->get()[0]['role_name'] == "Admin"){
                session([
                    "user_data" => array(
                        "user_inst_id" => $user_inst_id->id,
                        "user_id" => $user_inst_id->user_id,
                        "inst_id" => $user_inst_id->institution_id,
                        'inst_domain' => $inst_data->institution_domain,
                        "inst_category_id" => $inst_data->institution_category,
                        "route_preffix" => $inst_route->id
                    )
                ]);       
            }else{
                session([
                    "user_data" => array(
                        "user_inst_id" => $user_inst_id->id,
                        "user_faculty_id" => $user_inst_id->faculty_id,
                        "user_department_id" => $user_inst_id->department_id,
                        "route_preffix" => $inst_route->id
                    )
                ]);

                if(Auth::user()->roles_()->get()[0]['role_name'] == "Prodi"){
                    $r = "/prodi";
                }else{
                    $r = "/client";
                }
            }

            $url = 'c'.$inst_route->inst_category . $inst_route->inst_level . $r;
            // dd($url);

            return redirect($url)
                   ->withSuccess('You have Successfully logged in'); //redirect
            
        }
        return redirect('logout');
    }


    public function get_session(){
        try {
            return response()->json([
                '_token' => session()->token(),
                'Session' => Session::get('user_data'),
                'Auth' => Auth::user()
            ]);
        } catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }

    
    // Direction to the dashboard
    public function c11_dashboard_admin(){
        $this->data['currentAdminMenu'] = 'Dashboard';

        if(Auth::user()->roles_()->get()[0]['role_name'] == "Admin"){
            return view('dashboard.university.admin');
        }elseif(Auth::user()->roles_()->get()[0]['role_name'] == "Prodi" ){ // || Auth::user()->roles_()->get()[0]['role_name'] == "KBI"
            return redirect(c11_dashboard_prodi());
        }else{
            return redirect(c11_dashboard_client());
        }
    }


    public function c11_dashboard_prodi(){
        $currentAdminMenu =  'Dashboard';
        return view(
            'dashboard.university.prodi', 
            compact(
                'currentAdminMenu'
            )
        );
    }


    public function c11_dashboard_client(){
        $currentAdminMenu =  'Dashboard';
        return view(
            'dashboard.university.client', 
            compact(
                'currentAdminMenu'
            )
        );
    }





    /*
    public static function detail_rendered_assesment_file($file_id){
        $currentAdminMenu =  'Detail Assesment';
        $user_inst_id = session()->get('user_data')['user_inst_id'];

        $data = [
            "file_id" => $file_id,
            "user_inst_id" => $user_inst_id
        ];


        $lecture_class = C11CLectureClass::where("assement_file_id", $file_id)->first();
        $assesment_identity = C11AssesmentFileController::get_assesment_identity($data);

        if($lecture_class){
            $data["c_lecture_class_id"] = $lecture_class->id;

            $stat_cqi_cmpk  = C11AssesmentFileController::stat_cqi_cmpk($data);
            $stat_cqi_cpls = C11AssesmentFileController::stat_cqi_cpls($data);

            $mapping_course_work_marks = C11AssesmentFileController::get_mapping_course_work_marks($data); 
            
            $student_marks = C11AssesmentFileController::get_student_marks($data);
            $cqi_stat_grades = C11AssesmentFileController::get_cqi_stat_grades($data);

            // dd($mapping_course_work_marks);
            return view(
                'dashboard.university.assesment_detail', 
                compact(
                    'assesment_identity',
                    'stat_cqi_cmpk',
                    'stat_cqi_cpls',
                    'mapping_course_work_marks',
                    'student_marks',
                    'cqi_stat_grades'
                )
            );
        }
    }
    */

    




    /*Language Translation*/
    public function lang($locale)
    {
        if ($locale) {
            App::setLocale($locale);
            Session::put('lang', $locale);
            Session::save();
            return redirect()->back()->with('locale', $locale);
        } else {
            return redirect()->back();
        }
    }
}