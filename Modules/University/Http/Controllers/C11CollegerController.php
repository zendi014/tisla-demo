<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use Modules\University\Entities\C11MColleger;
use Modules\University\Entities\C11CDepartmentColleger;

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
        $department_id = "952bf804-824c-43cc-8650-c1a7b2517db8";

        $collegers = C11CDepartmentColleger::where("created_by", $user_inst_id)
                                            ->where("department_id", $department_id)
                                            ->with('collegers')
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
        $flag = Helper::text_preg_flag($name)."-".$data["nim"]."-".$data["dept_flag"];

        $user_inst_id = $data['user_inst_id'];

        $colleger = C11MColleger::firstOrCreate(
            [
                "flag" => $flag,
                "nim" => strtoupper($data["nim"])
            ],
            [
                "flag" => $flag,
                "nim" => strtoupper($data["nim"]),
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
