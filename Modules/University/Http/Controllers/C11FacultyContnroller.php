<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use Modules\University\Entities\C11MFaculty;
use Modules\University\Entities\C11CFaculty;
use Session;

use App\Models\Modules\CUserInstitution;

class C11FacultyContnroller extends Controller
{

    public static function store($data)
    {
        $flag = Helper::text_preg_flag($data["fakultas_name"]);
        $user_inst_id = $data["user_inst_id"];
        
        $mfaculty = C11MFaculty::firstOrCreate(
            [
                "flag" => $flag
            ],
            [
                "flag" => $flag,
                "name" => strtoupper($data["fakultas_name"]),
                "created_by" => $user_inst_id
            ]
        );

        if($mfaculty){
            $user_inst = CUserInstitution::where("id", $user_inst_id)->first();

            return C11CFaculty::firstOrCreate([
                "m_faculty_id"=> $mfaculty->id,
                "institution_id"=> $user_inst->institution_id,
            ],
            [
                "m_faculty_id"=> $mfaculty->id,
                "institution_id"=> $user_inst->institution_id,
                "created_by" => $user_inst_id,
            ]);
        }
    }


    public function get_faculty_institution(Request $request){
        $qlimit = Helper::general_query_limit();

        $user_inst_id = session()->get('user_data')['user_inst_id'];
        $user_inst = CUserInstitution::where("id", $user_inst_id)->first();

        return response()->json(
            C11CFaculty::where("institution_id", $user_inst->institution_id)
                                ->with('faculty')
                                // ->select('c11_c_faculties.*', 'c11_m_faculties.name as faculty_name')
                                ->limit($qlimit)->get()
        );
    }



    public function get_department_faculty(Request $request){
        $qlimit = Helper::general_query_limit();

        $user_inst_id = session()->get('user_data')['user_inst_id'];
        $user_inst = CUserInstitution::where("id", $user_inst_id)->first();

        return response()->json(
            C11CFaculty::where("institution_id", $user_inst->institution_id)
                                ->with('departments')                                
                                ->limit($qlimit)->get()
        );
    }


    public function show($id)
    {
        return C11MFaculty::where("id", $id)->first();
    }

    public function update(Request $request, $id)
    {
        $check = C11MFaculty::where("id", $id)->first();
        if($check){
            $check->update([
                'flag' => $request["flag"],
                'name' => $request["name"]
            ]);
            return $check;
        }
    }

    public function destroy($id)
    {
        return C11MFaculty::where('id', $id)->delete();
    }
}
