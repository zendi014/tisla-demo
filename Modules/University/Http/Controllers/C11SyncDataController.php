<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Helpers\Helper;

use App\Http\Controllers\Test\ReadXLSMController;

use Modules\University\Http\Controllers\C11CollegerController;

use App\Models\Modules\CUserInstitution;
use Modules\University\Entities\C11MDepartment;
use Modules\University\Entities\C11CDepartmentColleger;

use Yajra\Datatables\Datatables;

class C11SyncDataController extends Controller
{

    public function sync_colleger(){
        $currentAdminMenu =  'Sync. Colleger';
        return view(
            'university::sync_colleger', 
            compact(
                'currentAdminMenu'
            )
        );
    }


    public function sync_lecturer(){
        $currentAdminMenu =  'Sync. Lecturer';
        return view(
            'university::sync_lecturer', 
            compact(
                'currentAdminMenu'
            )
        );
    }


    public function sync_faculty(){
        $currentAdminMenu =  'Config Faculty';
        return view(
            'university::sync_faculty', 
            compact(
                'currentAdminMenu'
            )
        );
    }


    public function sync_department(){
        $currentAdminMenu =  'Config Department';
        return view(
            'university::sync_department', 
            compact(
                'currentAdminMenu'
            )
        );
    }

    public function sync_curriculum(){
        $currentAdminMenu =  'Config Curriculum';
        return view(
            'university::sync_curriculum', 
            compact(
                'currentAdminMenu'
            )
        );
    }


    public function sync_api_data_colleger(Request $request){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            // $user_inst = CUserInstitution::where('id', $user_inst_id)->first();  
            $department_id = session()->get('user_data')['user_department_id'];      

            // $dept = C11MDepartment::where('id', $user_inst->department_id)->first();
            $dept = C11MDepartment::where('id', $department_id)->first();

            if($dept){
                $i = 0;
                foreach($request->get('json_data') as $dt) {

                    $colleger_dt = [
                        "nim" => $dt["nim"],
                        "name" => $dt["name"],
                        "class_pos" => $dt["class_pos"],
                        "campus_loc" => $dt["campus_loc"],
                        "batch" => $dt["batch"],
                        "status"=> $dt["status"],
                        "dept_flag" => $dept->flag,
                        "user_inst_id" => $user_inst_id,
                        "department_id"=> $department_id
                    ];

                    C11CollegerController::sync_store($colleger_dt);

                    if(($i+1) == count($request->get('json_data')) ){
                        return response()->json([
                            "status" => "OK",
                            "msg" => "Google Sheet Data Successfully Rendered",
                            "data" => $colleger_dt
                        ]);
                    }

                    $i++;
                }
            }
            
        }catch (Throwable $e) {
            report($e);

            return response()->json([
                "status" => "ERROR",
                "msg" => "ERROR - Please Check Master Data Layout"
            ]);
        }
    }


    public function sync_colleger_ajax(Request $request){
        try {
            if ($request->ajax()) {
                $qlimit = Helper::general_query_limit();
                $user_inst_id = session()->get('user_data')['user_inst_id'];
                $department_id = session()->get('user_data')['user_department_id'];

                $collegers = C11CDepartmentColleger::select(
                                                'c11_m_collegers.name',
                                                'c11_m_collegers.nim',
                                                'c11_m_collegers.batch',
                                                'c11_m_collegers.class_pos',
                                                'c11_m_collegers.campus_loc',
                                                'c11_m_collegers.status',
                                                "c11_c_department_collegers.m_colleger_id",
                                                "c11_c_department_collegers.m_department_id"
                                            )
                                            ->join('c11_m_collegers', 'c11_m_collegers.id', 'm_colleger_id')
                                            // ->where("c11_c_department_collegers.created_by", $user_inst_id)
                                            ->where("m_department_id", $department_id)
                                            ->where("c11_m_collegers.status", "=", "A");

                if(!empty($request->search["value"])){
                    // $collegers->orWhere('c11_m_collegers.name', 'like', '%' . $request->search["value"] . '%');
                            //   ->orWhere('c11_m_collegers.nim', 'like', '%' . $request->search["value"] . '%')
                            //   ->orWhere('c11_m_collegers.batch', 'like', '%' . $request->search["value"] . '%')
                            //   ->orWhere('c11_m_collegers.campus_loc', 'like', '%' . $request->search["value"] . '%')
                            //   ->orWhere('c11_m_collegers.class_pos', 'like', '%' . $request->search["value"] . '%');
                }

                $collegers->orderByDesc(
                    'c11_m_collegers.batch', 'c11_m_collegers.nim', 
                    'c11_m_collegers.name', 'c11_m_collegers.class_pos', 
                    'c11_m_collegers.campus_loc'
                )->limit($qlimit)->get();

                return Datatables::of($collegers)
                            // ->addIndexColumn()
                            ->editColumn('name', function ($row){
                                return '<a href="#" target="__blank"><strong>'.$row->nim.'</strong><br/>'.$row->name.'</a>';
                            })
                            // ->addColumn('avatar', function ($row){
                            //     return '<div class="avatar-sm d-inline-block align-middle me-2">'.
                            //                 '<div class="avatar-title bg-soft-light text-light font-size-24 m-0 rounded-circle">'.
                            //                     '<i class="bx bxs-user-circle"></i>'.
                            //                 '</div>'.
                            //             '</div>';
                            // })                         
                            ->addColumn('category', function ($row){
                                return '<strong>'.$row->class_pos.'</strong><br/>'.$row->campus_loc;
                            })
                            ->addColumn('status', function ($row){
                                $status = 'ACTIVE';
                                if($row->status != "A"){
                                    $status = '-';
                                }
                                return '<strong>'.$status.'</strong><br/>'.$row->batch;
                            })
                            ->addColumn('action', function($row){
                                $actionBtn = '<div class="row">'.
                                            '<div class="col-md-6 d-grid"><button type="button" onclick="edit_colleger(`'.$row->m_colleger_id.'`)" class=" btn btn-soft-secondary waves-effect waves-light"><i class="far fa-edit"></i>  Edit</button></div>'.
                                            '<div class="col-md-6 d-grid"><button type="button" onclick="delete_colleger(`'.$row->m_colleger_id.'`)" class="btn btn-soft-danger waves-effect waves-light"><i class="far fa-trash-alt"></i>  Delete</button></div>'.
                                        '</div>';
                                return $actionBtn;
                                // onclick='detail_rendered_assesment_file("{{ $val["assement_file_id"] }}")'
                                
                            })
                            // ->rawColumns(['name','nim','batch','campus_loc','class_pos','action'])
                            ->escapeColumns(['c11_m_collegers.name', 'c11_m_collegers.nim', 'c11_m_collegers.status', 'c11_m_collegers.batch']) 
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


    
    // ===================HELPER=======================

    private static function createColumnsArray($end_column, $first_letters = ''){
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
                $new_columns = self::createColumnsArray($end_column, $column);
                // Merge the new columns which were created with the final columns array.
                $columns = array_merge($columns, $new_columns);
            }
        }
        
        return $columns;
    }


    private static function group_by($key, $data) {
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
