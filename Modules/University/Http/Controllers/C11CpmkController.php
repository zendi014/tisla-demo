<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

use App\Helpers\Helper;
use Modules\University\Entities\C11MCpmk;
use Modules\University\Entities\C11CLecturesCpmk;

class C11CpmkController extends Controller
{
    public function index()
    {
    }

    public function create()
    {
    }

    public static function store($data)
    {
        try{
            $name = $data["name"];
            $flag = Helper::text_preg_flag($name)."-".Helper::text_preg_flag($data["description"]);
            $user_inst_id = $data["user_inst_id"];

            $mcpmk = C11MCpmk::firstOrCreate(
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

            if($mcpmk){

                $ccpmklec = C11CLecturesCpmk::firstOrCreate([
                            "m_cpmk_id"=> $mcpmk->id,
                            "c_lecture_class_id"=> $data["c_lecture_class_id"],
                        ],
                        [
                            "m_cpmk_id"=> $mcpmk->id,
                            "c_lecture_class_id"=> $data["c_lecture_class_id"]
                ]);

                return $ccpmklec;
            }
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public function show($id)
    {

    }

    public function edit($id)
    {
    }


    public function update(Request $request, $id)
    {
    }

    public function destroy($id)
    {
    }
}
