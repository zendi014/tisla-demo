<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use Modules\University\Entities\C11MLecturer;

class C11LecturerController extends Controller
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
        $flag = Helper::text_preg_flag($name)."-".$data["nidn"]."-".$data["dept_flag"];

        $user_inst_id = $data['user_inst_id'];

        $mlecture = C11MLecturer::firstOrCreate(
            [
                "flag" => $flag,
                "nidn" => $data["nidn"]
            ],
            [
                "flag" => $flag,
                "nidn" => $data["nidn"],
                "name" => strtoupper($name),
                "created_by" => $user_inst_id
            ]
        );
        return $mlecture;

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
