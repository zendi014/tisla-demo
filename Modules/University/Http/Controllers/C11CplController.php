<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

use App\Helpers\Helper;
use Modules\University\Entities\C11MCpl;
use Modules\University\Entities\C11CCpl;
use App\Models\Modules\CUserInstitution;

class C11CplController extends Controller
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
            $flag = Helper::text_preg_flag($name)."-".Helper::text_preg_flag($data["description"]);
            $user_inst_id = $data["user_inst_id"];

            $mcpl = C11MCpl::firstOrCreate(
                [
                    "flag" => $flag
                ],
                [
                    "flag" => $flag,
                    "name" => strtoupper($name),
                    "description" => strtoupper($data["description"]),
                    "created_by" => $user_inst_id
                ]
            );

            if($mcpl){
                $user_inst = CUserInstitution::where("id", $user_inst_id)->first();

                $ccpl = C11CCpl::firstOrCreate([
                            "m_cpl_id"=> $mcpl->id,
                            "institution_id"=> $user_inst->institution_id,
                        ],
                        [
                            "m_cpl_id"=> $mcpl->id,
                            "institution_id"=> $user_inst->institution_id,
                            "created_by" => $user_inst_id,
                ]);

                return $ccpl;
            }
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public static function find_cpl_by_name($data){
        try{
            $user_inst_id = $data["user_inst_id"];
            $user_inst = CUserInstitution::where("id", $user_inst_id)->first();

            $mcpl = C11MCpl::select("id")->where("name", strtoupper($data["cpl_name"]))
                             ->first();
            
            if($mcpl){
                return C11CCpl::where("institution_id", $user_inst->institution_id)
                    ->where("m_cpl_id", $mcpl->id)
                    ->first();
            }
            
        }catch (Throwable $e) {
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
