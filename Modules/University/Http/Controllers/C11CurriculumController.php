<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use Modules\University\Entities\C11MCurricullum;
use Modules\University\Entities\C11CCurriculumLectures;
use App\Models\Modules\CUserInstitution;

use Session;

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
            $name = $request["name"];
            $flag = Helper::text_preg_flag($name);
            
            $user_inst_id = "951230bf-d7b8-437c-a3ad-53847e8811b8";
            // session()->get('user_data')['user_inst_id'];
            
            $mcurricullum = C11MCurricullum::firstOrCreate(
                [
                    "flag" => $flag
                ],
                [
                    "flag" => $flag,
                    "code" => Helper::TextAliases($name),
                    "name" => strtoupper($name),
                    "year" => $request["year"],
                    "created_by" => $user_inst_id
                ]
            );
            return $mcurricullum;
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

}
