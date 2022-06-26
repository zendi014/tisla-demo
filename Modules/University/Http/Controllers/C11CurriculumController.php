<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use Modules\University\Entities\C11MCurricullum;
use Modules\University\Entities\C11CCurriculumLectures;
use App\Models\Modules\CUserInstitution;
use Modules\University\Entities\C11MDepartment;
use Modules\University\Entities\C11MFaculty; 
use Modules\University\Entities\C11CDepartmentCurriculum; 

use Session;
use Yajra\Datatables\Datatables;


class C11CurriculumController extends Controller
{
    
    public function index()
    {
        try{
            $qlimit = Helper::general_query_limit();
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            
            $MCurricullum = C11MCurricullum::where('created_by',  $user_inst_id)
                                            ->orderBy('created_at', 'desc')
                                            ->limit($qlimit)
                                            ->get();

            return $MCurricullum;
            // return view('university::index', compact("MCurricullum"));

        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    
    public function create()
    {
        // return view('university::create');
    }

    
    public function store(Request $request)
    {
        try{
            $name = $request["data"]["name"];
            $flag = Helper::text_preg_flag($name);
            
            // $user_inst_id = "9653fe43-9b0a-4203-86b3-dd3b2764ad4a";
            $user_inst_id = session()->get('user_data')['user_inst_id'];

            $user_inst = CUserInstitution::where("id", $user_inst_id)->first();
            
            $mcurricullum = C11MCurricullum::firstOrCreate(
                [
                    "flag" => $flag
                ],
                [
                    "flag" => $flag,
                    "code" => $request["data"]["code"], //Helper::TextAliases($name),
                    "name" => strtoupper($name),
                    "year" =>  $request["data"]["year"],
                    "created_by" => $user_inst_id,
                    "institution_id" => $user_inst->institution_id,
                ]
            );

            if($mcurricullum){
                $department_curriculum = self::set_department_curriculum([
                    "user_inst_id" => $user_inst_id,
                    "department_id" => $request["data"]["department_id"],
                    // "department_id" => "96763e98-ebe9-494b-aad3-79f6211c203e",
                    "curriculum_id" => $mcurricullum->id
                ]);

                if($department_curriculum){
                    return response()->json([
                        "status" => "OK",
                        "msg" => "Successfully Saved",
                        "data" => $request["data"]
                    ]); 
                }
            }

        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    
    public function show($id)
    {
        $MCurricullum = C11MCurricullum::where('id',  $id)
                      ->orderBy('created_at', 'desc')
                      ->first();
        return $MCurricullum;
        // return view('university::show', compact("MCurricullum"));
    }


    public static function latest(){
        $user_inst_id = session()->get('user_data')['user_inst_id'];
        // $user_inst_id = "964fd435-e4c7-4847-830c-0037c65e1f0f";

        $inst_id = CUserInstitution::where('id',  $user_inst_id)
                                    ->orderBy('created_at', 'desc')
                                    ->first()->institution_id;
        if($inst_id){
            return C11MCurricullum::where('institution_id',  $inst_id)
                                ->orderBy('created_at', 'desc')
                                ->first();
        }
        
    }

    
    public function edit($id)
    {
        $MCurricullum = new C11MCurricullum();
        $MCurricullum->where('id',  $id)
                      ->orderBy('created_at', 'desc')
                      ->first();
        return view('university::edit', compact("MCurricullum"));
    }

    
    public function update(Request $request, $id)
    {
        $name = $request["name"];
        $flag = Helper::text_preg_flag($name);

        return C11MCurricullum::where('id',  $id)
                                ->update([
                                    // "flag" => $flag,
                                    "code" => Helper::TextAliases($name),
                                    "name" => strtoupper($name),
                                    "year" => $request["year"],
                                ]);
    }

    
    public function destroy($id)
    {
        return C11MCurricullum::where('id', $id)->delete();
    }



    public static function set_curriculum_lecture($data){
        try{
            $user_inst_id = $data['user_inst_id'];
            
            $curriculum_lecture = C11CCurriculumLectures::firstOrCreate(
                [
                    "lecture_id" => $data["lecture_id"],
                    "curriculum_id" => $data["curriculum_id"]
                ],
                [
                    "lecture_id" => $data["lecture_id"],
                    "curriculum_id" => $data["curriculum_id"],
                    "created_by" => $user_inst_id
                ]
            );
            return $curriculum_lecture;
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function set_department_curriculum($data){
        try{
            $user_inst_id = $data['user_inst_id'];
            
            $department_curriculum = C11CDepartmentCurriculum::firstOrCreate(
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
            return $department_curriculum;
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    
    public function form_curricullum(){
        $department = C11MDepartment::get();
        $faculty = C11MFaculty::get(); 
        return view('university::curriculum_form', compact("department", "faculty"));
    }


    public function sync_curriculum_ajax(Request $request){
        try {
            if ($request->ajax()) {
                $qlimit = Helper::general_query_limit();
                $curr_data = C11MCurricullum::select(
                                                "c11_m_curricullums.id",
                                                "c11_m_curricullums.code",
                                                "c11_m_curricullums.name",
                                                "c11_m_curricullums.year",
                                                "c11_m_curricullums.created_at",
                                                "c11_m_departments.name as department_name",
                                                "c11_m_faculties.name as faculty_name"
                                              )
                                              ->join("c11_c_department_curricula", "c11_m_curricullums.id", "c11_c_department_curricula.curriculum_id")
                                              ->join("c11_m_departments", "c11_m_departments.id", "c11_c_department_curricula.department_id")
                                              ->join("c11_c_departments", "c11_c_departments.m_department_id", "c11_c_department_curricula.department_id")
                                              ->join("c11_c_faculties", "c11_c_departments.c_faculty_id", "c11_c_faculties.id")
                                              ->join("c11_m_faculties", "c11_m_faculties.id", "c11_c_faculties.m_faculty_id");
                $curr_data->orderByDesc(
                    'c11_m_curricullums.created_at',
                    "c11_m_curricullums.code",
                    "c11_m_curricullums.name",
                )->limit($qlimit)->get();

                return Datatables::of($curr_data)
                                    ->editColumn('name', function ($row){
                                        return '<a href="#" target="__blank"><strong>'.$row->code.'</strong></a> <span class="badge badge-soft-success">'.$row->year.'</span> <br/>'.$row->name;
                                    })
                                    ->editColumn('department_name', function ($row){
                                        return '<strong>'.$row->department_name.'</strong><br/>'.$row->faculty_name;
                                    })
                                    ->addColumn('action', function($row){
                                        $actionBtn = '<div class="row">'.
                                                    '<div class="col-md-6 d-grid"><button type="button" onclick="edit_curriculum(`'.$row->id.'`)" class=" btn btn-soft-secondary waves-effect waves-light"><i class="far fa-edit"></i>  Edit</button></div>'.
                                                    '<div class="col-md-6 d-grid"><button type="button" onclick="delete_curriculum(`'.$row->id.'`)" class="btn btn-soft-danger waves-effect waves-light"><i class="far fa-trash-alt"></i>  Delete</button></div>'.
                                                '</div>';
                                        return $actionBtn;
                                    })
                                    ->escapeColumns(['c11_m_collegers.name', 'c11_m_collegers.code', 'c11_m_departments.name']) 
                                    ->rawColumns(['action'])
                                    ->make(true);
            }
        }catch (Throwable $e) {
            report($e);

            return response()->json([
                "status" => "ERROR",
                "msg" => "ERROR - Please Check Master Data Layout"
            ]);

        }
    }

}
