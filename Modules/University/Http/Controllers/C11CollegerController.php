<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use Modules\University\Entities\C11MColleger;
use Modules\University\Entities\C11CDepartmentColleger;

use Carbon\Carbon;

class C11CollegerController extends Controller
{
    public function index()
    {
        return view('university::index');
    }


    public static function collegers()
    {
        $qlimit = Helper::general_query_limit();

        $user_inst_id = session()->get('user_data')['user_inst_id'];
        $department_id = session()->get('user_data')['user_department_id']; // "952bf804-824c-43cc-8650-c1a7b2517db8";

        /*
        $collegers = C11CDepartmentColleger::with('collegers')
                                            ->where("created_by", $user_inst_id)
                                            ->where("m_department_id", $department_id)
                                            // ->where("collegers.status", "=", "A")
                                            ->limit($qlimit)->get();
        */
        $collegers = C11CDepartmentColleger::select("c11_m_collegers.*", "c11_c_department_collegers.m_department_id")
                                            ->join('c11_m_collegers', 'c11_m_collegers.id', 'm_colleger_id')
                                            ->where("c11_c_department_collegers.created_by", $user_inst_id)
                                            ->where("m_department_id", $department_id)
                                            ->where("c11_m_collegers.status", "=", "A")
                                            ->limit($qlimit)->get();

        return response()->json([
            "total_collegers" => count($collegers),
            "collegers" => $collegers
        ]);
        // return view('university::index');
    }


    public function create()
    {
        return view('university::create');
    }


    public static function store($data)
    {
       try{
        $name = $data["name"];
        $flag = Helper::text_preg_flag($name)."-".str_replace(' ', '', strtoupper($data["nim"]))."-".$data["dept_flag"];

        $user_inst_id = $data['user_inst_id'];

        $colleger = C11MColleger::firstOrCreate(
            [
                "flag" => $flag,
                "nim" => str_replace(' ', '', strtoupper($data["nim"]))
            ], 
            [
                "flag" => $flag,
                "nim" => str_replace(' ', '', strtoupper($data["nim"])),
                "name" => strtoupper($name),
                "created_by" => $user_inst_id
            ]
        );
        return $colleger;

        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public static function sync_store($data)
    {
       try{
        $name = $data["name"];
        $flag = Helper::text_preg_flag($name)."-".str_replace(' ', '', strtoupper($data["nim"]))."-".$data["dept_flag"];

        $user_inst_id = $data['user_inst_id'];
        
        $colleger = C11MColleger::updateOrCreate(
            [
                "flag" => $flag,
                "nim" => str_replace(' ', '', strtoupper($data["nim"]))
            ],
            [
                "flag" => $flag,
                "nim" => str_replace(' ', '', strtoupper($data["nim"])),
                "name" => strtoupper($name),
                "status" => strtoupper($data["status"]),
                "campus_loc" => strtoupper($data["campus_loc"]),
                "class_pos" => strtoupper($data["class_pos"]),
                "batch" => strtoupper($data["batch"]),
                "created_by" => $user_inst_id
            ]
        );

        if($colleger){
            $dept_colleger = C11CDepartmentColleger::updateOrCreate(
               [
                   "m_department_id" => $data["department_id"],
                    "m_colleger_id" => $colleger->id,
               ], [
                   "m_department_id" => $data["department_id"],
                    "m_colleger_id" => $colleger->id,
                    "created_by" => $user_inst_id
               ]
            );

            if($dept_colleger){
                return $colleger;
            }
        }  
    

        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    


    public function show(Request $request)
    {
        return view('university::colleger_show');
    }


    public function edit(Request $request)
    {
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $department_id = session()->get('user_data')['user_department_id'];
            $collegers = C11CDepartmentColleger::select("c11_m_collegers.*", "c11_c_department_collegers.m_department_id")
                                ->join('c11_m_collegers', 'c11_m_collegers.id', 'm_colleger_id')
                                ->where("c11_c_department_collegers.created_by", $user_inst_id)
                                ->where("m_department_id", $department_id)
                                ->where("c11_m_collegers.status", "=", "A")
                                ->where("c11_m_collegers.id", "=", $request["m_colleger_id"])
                                ->first();

            $batch = C11MColleger::select("batch")->whereNotNull("batch")->orderBy("batch")->groupBy("batch")->get();
            $campus_loc = C11MColleger::select("campus_loc")->whereNotNull("campus_loc")->orderBy("campus_loc")->groupBy("campus_loc")->get();
            $class_pos = C11MColleger::select("class_pos")->whereNotNull("class_pos")->orderBy("class_pos")->groupBy("class_pos")->get();

            return view(
                'university::colleger_edit',
                compact(
                    'collegers',
                    'batch',
                    'campus_loc',
                    'class_pos'
                )
            );
        } catch (Throwable $e) {
            report($e);
            return false;
        }
        
    }


    public function update(Request $request)
    {
        try {
            $colleger = C11MColleger::updateOrCreate(
                [
                    "id" => $request["data"]["m_colleger_id"],
                ],
                [
                    "colleger_name" => strtoupper($request["data"]["name"]),
                    "campus_loc" => strtoupper($request["data"]["campus_loc"]),
                    "class_pos" => strtoupper($request["data"]["class_pos"]),
                    "batch" => strtoupper($request["data"]["batch"]),
                    "updated_at" => Carbon::now()
                ]
            );

            if($colleger){
                $dept_colleger = C11CDepartmentColleger::where("m_colleger_id", $request["data"]["m_colleger_id"])
                                                ->update(["updated_at" => Carbon::now()]);

                if($dept_colleger){
                    return response()->json([
                        "status" => "OK",
                        "msg" => "Successfully Saved",
                        "data" => $request["data"]
                    ]); 
                }
                 
            }
           
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function delete(Request $request)
    {
        try {
            $colleger = C11MColleger::where("id", $request["m_colleger_id"])
                                      ->delete();

            if($colleger){
                $dept_colleger = C11CDepartmentColleger::where("m_colleger_id", $request["m_colleger_id"])
                                                ->delete();
                if($dept_colleger){
                    return response()->json([
                        "status" => "OK",
                        "msg" => "Successfully Deleted",
                        "data" => $request["m_colleger_id"]
                    ]); 
                }               
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }
}
