<?php

namespace Modules\University\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Arr;
use App\Helpers\Helper;
use Session;
use DB;

use Illuminate\Pagination\Paginator;

use App\Models\Modules\CUserInstitution;
use Modules\University\Entities\C11MColleger;

class C11RecapAssesmentController extends Controller
{

    public function recap_assesment_lectures(){
        $currentAdminMenu =  'Recap Assesment Lectures';

        return view(
            'university::recap_assesment_lectures', 
            compact(
                'currentAdminMenu'
            )
        );
    }

    public function recap_assesment_lecturers(){
        $currentAdminMenu =  'Recap Assesment Lecturers';

        return view(
            'university::recap_assesment_lecturers', 
            compact(
                'currentAdminMenu'
            )
        );
    }


    public function recap_assesment_detail_by_colleger($colleger_id){
        $user_dept_id = session()->get('user_data')['user_department_id'];
        $currentAdminMenu =  'Recap Assesment Detail';
        $colleger = C11MColleger::where("id", $colleger_id)->first();
        $total_semester_colleger = self::total_semester_colleger($user_dept_id, $colleger_id);

        return view(
            'university::recap_assesment_detail_by_colleger', 
            compact(
                'currentAdminMenu',
                'colleger',
                'total_semester_colleger'
            )
        );
    }


    public function recap_assesment_collegers(Request $request){
        try {
            $user_dept_id = session()->get('user_data')['user_department_id'];
            $user_faculty_id = session()->get('user_data')['user_faculty_id'];
            $currentAdminMenu =  'Recap Assesment Collegers';
            $qlimit = Helper::general_query_limit();
            $search_ = "";

            if( !empty($request->input("q")) == true){
                $q = $request->input("q");
                $q_ = strtoupper($q);
                $search_ = " WHERE dt.colleger_name like '%$q_%' or dt.nim like '%$q%' ";
            }

            $dept_info = DB::select("
                select 
                    cmd.name as department_name,
                    cmf.name as faculty_name
                from c_user_institutions as cui
                        inner join c11_m_departments as cmd
                                    on cui.department_id = cmd.id
                        inner join c11_m_faculties as cmf
                                    on cui.faculty_id = cmf.id
                where cmd.id::varchar = '$user_dept_id'
                        and cmf.id::varchar = '$user_faculty_id'
                group by cmd.name, cmf.name
            ");

            $query = DB::select("
                SELECT
                        dt.dept_name,
                        dt.m_colleger_id,
                        dt.colleger_name,
                        dt.nim,
                        dt.is_assesed
                FROM (
                        SELECT
                            cmd.name AS dept_name,
                            cmc.id as m_colleger_id,
                            cmc.nim,
                            cmc.name as colleger_name,
                            CASE WHEN cclcg.c_lecture_class_id IS NOT NULL
                                THEN 'TRUE'
                            ELSE 'FALSE'
                            END AS is_assesed
                        FROM c11_c_department_collegers AS ccdc
                                        
                                INNER JOIN c11_m_collegers AS cmc
                                            ON ccdc.m_colleger_id = cmc.id
                                            
                                INNER JOIN c11_m_departments AS cmd
                                            ON ccdc.m_department_id = cmd.id
                                            
                                LEFT JOIN c11_c_lecture_collegers as cclcg
                                            ON cclcg.m_colleger_id = cmc.id
                        WHERE ccdc.m_department_id::varchar = '$user_dept_id'
                        GROUP BY 
                                cmc.id,
                                cmd.name,
                                cmc.nim,
                                cmc.name,
                                cclcg.c_lecture_class_id
                        ORDER BY 
                                cmc.nim, 
                                cmc.name
                ) AS dt
                $search_
                GROUP BY dt.dept_name,
                        dt.m_colleger_id,
                        dt.colleger_name,
                        dt.nim,
                        dt.is_assesed
                LIMIT '$qlimit';
            ");

            $query_paginate = new Paginator($query, 10); 
            // https://medium.com/@nellytadi/manual-pagination-in-laravel-fb7a68e57f17
            
            $query_paginate->withPath('./recap_assesment_collegers');
            $count_query = count($query);

            $total_competencies_by_year = self::total_competencies_by_year();

            return view(
                'university::recap_assesment_collegers', 
                compact(
                    'currentAdminMenu',
                    'dept_info',
                    'query_paginate',
                    'count_query',
                    'total_competencies_by_year'
                )
            );
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    private function total_competencies_by_year(){
        try{
            $query = DB::select("
                SELECT
                        dt.dept_name,
                        dt.batch,
                        SUM(dt.is_assesed_) as is_assesed
                FROM (
                        SELECT
                            cmd.name AS dept_name,
                            cmc.batch,
                            CASE WHEN cclcg.c_lecture_class_id IS NOT NULL
                                THEN (
                                    SELECT 
                                        COUNT(1) total_lectures
                                    FROM c11_c_lecture_collegers AS cclclg
                                    WHERE cclclg.m_colleger_id = cmc.id
                                )
                            ELSE 0
                            END AS is_assesed_
                        FROM c11_c_department_collegers AS ccdc
                                        
                                INNER JOIN c11_m_collegers AS cmc
                                            ON ccdc.m_colleger_id = cmc.id
                                            
                                INNER JOIN c11_m_departments AS cmd
                                            ON ccdc.m_department_id = cmd.id
                                            
                                LEFT JOIN c11_c_lecture_collegers as cclcg
                                            ON cclcg.m_colleger_id = cmc.id
                        WHERE ccdc.m_department_id::varchar = '96846378-8589-4fbd-a8d2-ae45168dbd47' 
                                AND cmc.batch::int > (SELECT date_part('year', (SELECT current_timestamp))-4)
                        GROUP BY 
                                cmc.id,
                                cmd.name,
                                cmc.batch,
                                cclcg.c_lecture_class_id
                        ORDER BY 
                                cmc.batch
                ) AS dt
                GROUP BY dt.dept_name,
                        dt.batch
                ORDER BY dt.batch DESC;
            ");

            return $query;
        }catch (Throwable $e) {
            report($e);
            return false;
        }
        
    }


    private function total_semester_colleger($dept_id, $colleger_id){
        try {
            $data["lecture_semester"] = DB::select("
                SELECT
                    cml.semester_mk
                FROM
                    c11_c_lecture_classes AS cclc
                        INNER JOIN c11_m_lectures AS cml
                                    ON cclc.m_lecture_id = cml.id
                        INNER JOIN c11_c_lecture_collegers AS cclcg
                                    ON cclcg.c_lecture_class_id = cclc.id
                        INNER JOIN c11_m_collegers AS cmcg
                                    ON cclcg.m_colleger_id = cmcg.id
                WHERE cclc.m_department_id::varchar = '$dept_id' 
                      AND cmcg.id = '$colleger_id'
                GROUP BY cml.semester_mk
                ORDER BY cml.semester_mk ASC;                            
            ");

            $data["lecture_semester_lists"] = DB::select("
                SELECT
                    cml.semester_mk,
                    cml.name,
                    cml.code,
                    cml.id as lecture_id,
                    cclcs.assement_file_id
                FROM
                    c11_c_lecture_classes AS cclc
                        INNER JOIN c11_m_lectures AS cml
                                    ON cclc.m_lecture_id = cml.id
                        INNER JOIN c11_c_lecture_collegers AS cclcg
                                    ON cclcg.c_lecture_class_id = cclc.id
                        INNER JOIN c11_m_collegers AS cmcg
                                    ON cclcg.m_colleger_id = cmcg.id
                        INNER JOIN c11_c_lecture_classes AS cclcs
                                    ON cclcg.c_lecture_class_id = cclcs.id
                WHERE cclc.m_department_id::varchar = '$dept_id' 
                      AND cmcg.id = '$colleger_id'
                GROUP BY cml.semester_mk, cml.name, cml.code, cml.id, cclcs.assement_file_id
                ORDER BY cml.semester_mk ASC;                            
            ");

            return $data;
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function recap_assesment_competencies_lecture(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();
            $lecture_id = '96532f65-3a5c-4218-85d9-e1e5603e9530';

            if($user_inst){
                $query = DB::select("
                    SELECT
                                mark_.name as lecture_name,
                                mark_.competency,
                                mark_.avg_marks,
                                mark_.stddev_marks,
                                mark_.rate_marks,
                                CASE						
                                        WHEN mark_.avg_marks >= 80 THEN
                                        'A' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 74 THEN
                                        'B+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 68 THEN
                                        'B' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 62 THEN
                                        'C+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 56 THEN
                                        'C' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 45 THEN
                                        'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                END AS grade_ 
                    FROM (
                            SELECT
                                cml.name, -- MK NAME
                                ccc.competency,
                                ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                            FROM
                                c11_c_lecture_marks_collegers AS clmc
                                INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                            AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                            WHERE
                                cclc.m_department_id::VARCHAR = '$user_inst->department_id'
                                AND cml.id::VARCHAR = '$lecture_id'
                            GROUP BY
                                cml.name,
                                ccc.competency
                            ORDER BY
                                cml.name,
                                ccc.competency
                            ASC
                    ) AS mark_;
                ");

                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public function recap_assesment_cpl_lecture(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();
            $lecture_id = '96532f65-3a5c-4218-85d9-e1e5603e9530';

            if($user_inst){
                $query = DB::select("
                    SELECT
                                mark_.name as lecture_name,
                                mark_.cpl_name,
                                mark_.avg_marks,
                                mark_.stddev_marks,
                                mark_.rate_marks,
                                CASE						
                                        WHEN mark_.avg_marks >= 80 THEN
                                        'A' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 74 THEN
                                        'B+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 68 THEN
                                        'B' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 62 THEN
                                        'C+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 56 THEN
                                        'C' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 45 THEN
                                        'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                END AS grade_ 
                    FROM (
                            SELECT
                                cml.name, -- MK NAME
                                mc.name AS cpl_name,
                                ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                            FROM
                                c11_c_lecture_marks_collegers AS clmc
                                INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                            AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                            WHERE
                                cclc.m_department_id::VARCHAR = '$user_inst->department_id'
                                AND cml.id::VARCHAR = '$lecture_id'
                            GROUP BY
                                cml.name,
                                mc.name
                            ORDER BY
                                cml.name,
                                mc.name
                            ASC
                    ) AS mark_;
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function recap_assesment_competencies_lecturer(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();
            $m_lecture_id = '96532f65-3a5c-4218-85d9-e1e5603e9530'; 
            $m_lecturer_id = '96532f30-7ab0-4635-840d-aa20d4a67989';

            if($user_inst){
                $query = DB::select("
                    SELECT
                                mark_.name as lecture_name,
                                mark_.lecturer_name,
                                mark_.nidn,
                                mark_.competency,
                                mark_.avg_marks,
                                mark_.stddev_marks,
                                mark_.rate_marks,
                                CASE						
                                        WHEN mark_.avg_marks >= 80 THEN
                                        'A' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 74 THEN
                                        'B+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 68 THEN
                                        'B' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 62 THEN
                                        'C+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 56 THEN
                                        'C' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 45 THEN
                                        'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                END AS grade_ 
                    FROM (
                            SELECT
                                cml.name, -- MK NAME
                                cmlr.name as lecturer_name,
                                cmlr.nidn,
                                ccc.competency,
                                ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                            FROM
                                c11_c_lecture_marks_collegers AS clmc
                                INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                            AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                INNER JOIN c11_m_lecturers AS cmlr ON cmlr.id = cclc.m_lecturer_id
                                INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                            WHERE
                                cml.id::VARCHAR = '$m_lecture_id'
                                AND cmlr.id::VARCHAR = '$m_lecturer_id'
                                AND cclc.m_department_id::VARCHAR = '$user_inst->department_id'
                            GROUP BY
                                cml.name,
                                cmlr.name,
                                cmlr.nidn,
                                ccc.competency
                            ORDER BY
                                cml.name,
                                cmlr.name,
                                cmlr.nidn,
                                ccc.competency
                            ASC
                    ) AS mark_;
                ");

                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public function recap_assesment_cpl_lecturer(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();
            $m_lecture_id = '96532f65-3a5c-4218-85d9-e1e5603e9530'; 
            $m_lecturer_id = '96532f30-7ab0-4635-840d-aa20d4a67989';

            if($user_inst){
                $query = DB::select("
                    SELECT
                                mark_.name as lecture_name,
                                mark_.lecturer_name,
                                mark_.nidn,
                                mark_.cpl_name,
                                mark_.avg_marks,
                                mark_.stddev_marks,
                                mark_.rate_marks,
                                CASE						
                                        WHEN mark_.avg_marks >= 80 THEN
                                        'A' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 74 THEN
                                        'B+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 68 THEN
                                        'B' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 62 THEN
                                        'C+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 56 THEN
                                        'C' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 45 THEN
                                        'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                END AS grade_ 
                    FROM (
                            SELECT
                                cml.name, -- MK NAME
                                cmlr.name as lecturer_name,
                                cmlr.nidn,
                                mc.name AS cpl_name,
                                ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                            FROM
                                c11_c_lecture_marks_collegers AS clmc
                                INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                            AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                INNER JOIN c11_m_lecturers AS cmlr ON cmlr.id = cclc.m_lecturer_id
                                INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                            WHERE
                                cml.id::VARCHAR = '$m_lecture_id'
                                AND cmlr.id::VARCHAR = '$m_lecturer_id'
                                AND cclc.m_department_id::VARCHAR = '$user_inst->department_id'
                            GROUP BY
                                cml.name,
                                cmlr.name,
                                cmlr.nidn,
                                mc.name
                            ORDER BY
                                cml.name,
                                cmlr.name,
                                cmlr.nidn,
                                mc.name
                            ASC
                    ) AS mark_;
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function recap_assesment_competencies_colleger(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();

            $lecture_class_id = '96532f65-5d76-4ab4-90b2-581c663159c2';
            $colleger_id = '96532f30-8a07-4896-91b8-8a458a2dc642';

            if($user_inst){
                $query = DB::select("                    
                    SELECT
                                mark_.name as lecture_name,
                                mark_.colleger_name,
                                mark_.nim,
                                mark_.competency,
                                mark_.avg_marks,
                                mark_.stddev_marks,
                                mark_.rate_marks,
                                CASE						
                                        WHEN mark_.avg_marks >= 80 THEN
                                        'A' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 74 THEN
                                        'B+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 68 THEN
                                        'B' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 62 THEN
                                        'C+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 56 THEN
                                        'C' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 45 THEN
                                        'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                END AS grade_ 
                    FROM (
                            SELECT
                                cml.name,
                                mclg.name as colleger_name,
                                mclg.nim,
                                ccc.competency,
                                ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                            FROM
                                c11_c_lecture_marks_collegers AS clmc
                                INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                            AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id 
                                INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                            WHERE
                                clmc.c_lecture_class_id::VARCHAR = '$lecture_class_id'
                                AND clmc.m_colleger_id::VARCHAR = '$colleger_id'
                                AND cclc.m_department_id::varchar = '$user_inst->department_id'
                            GROUP BY
                                cml.name,
                                mclg.name,
                                mclg.nim,
                                ccc.competency
                            ORDER BY
                                cml.name,
                                mclg.name,
                                mclg.nim,
                                ccc.competency
                            ASC
                    ) AS mark_;	
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public function recap_assesment_cpl_colleger(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();

            $lecture_class_id = '96532f65-5d76-4ab4-90b2-581c663159c2';
            $colleger_id = '96532f30-8a07-4896-91b8-8a458a2dc642';

            if($user_inst){
                $query = DB::select("
                    SELECT
                                mark_.name as lecture_name,
                                mark_.colleger_name,
                                mark_.nim,
                                mark_.cpl_name,
                                mark_.avg_marks,
                                mark_.stddev_marks,
                                mark_.rate_marks,
                                CASE						
                                        WHEN mark_.avg_marks >= 80 THEN
                                        'A' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 74 THEN
                                        'B+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 68 THEN
                                        'B' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 62 THEN
                                        'C+' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 56 THEN
                                        'C' :: VARCHAR 
                                        WHEN mark_.avg_marks >= 45 THEN
                                        'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                END AS grade_ 
                    FROM (
                            SELECT
                            mc.name AS cpl_name,
                            cml.name,
                            mclg.name as colleger_name,
                            mclg.nim,
                            ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                            ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                            ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                        FROM
                            c11_c_lecture_marks_collegers AS clmc
                            INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                            INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                            INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                            INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                        AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                            INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                            INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id 
                            INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                        WHERE
                            clmc.c_lecture_class_id::VARCHAR = '$lecture_class_id'
                            AND clmc.m_colleger_id::VARCHAR = '$colleger_id'
                            AND cclc.m_department_id::varchar = '$user_inst->department_id'
                        GROUP BY
                            cml.name,
                            mclg.name,
                            mclg.nim,
                            mc.name
                        ORDER BY
                            cml.name,
                            mc.name,
                            mclg.name,
                            mclg.nim
                        ASC
                    ) AS mark_;
                ");

                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function lecturer_by_department(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();

            if($user_inst){
                $query = DB::select("
                    SELECT
                        cmd.name AS dept_name,
                        cmlr.id AS m_lecturer_id,
                        cmlr.name AS lecturer_name,
                        cmlr.nidn
                    FROM c11_c_lecture_classes AS cclc
                                        
                            INNER JOIN c11_m_departments AS cmd
                                        ON cclc.m_department_id = cmd.id
                                        
                            INNER JOIN c11_m_lecturers AS cmlr
                                        ON cclc.m_lecturer_id = cmlr.id
                                        
                    WHERE cclc.m_department_id::varchar = '$user_inst->department_id'
                    
                    GROUP BY 
                            cmd.name,
                            cmlr.id,
                            cmlr.nidn,
                            cmlr.name
                    ORDER BY 
                            cmlr.nidn, 
                            cmlr.name;
                    
                ");

                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
                
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public function lecture_by_department(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();

            if($user_inst){
                $query = DB::select("
                    SELECT
                        cclc.id AS lecture_id,
                        cmd.name AS dept_name,
                        cml.code,
                        cml.name AS lecture_name,
                        cml.level_marks,
                        cml.semester_mk,
                        cml.tahun_ajaran
                    FROM c11_c_lecture_classes AS cclc
                    
                            INNER JOIN c11_m_lectures AS cml
                                    ON cml.id = cclc.m_lecture_id
                                                            
                            INNER JOIN c11_m_departments AS cmd
                                        ON cclc.m_department_id = cmd.id
                                        
                    WHERE cclc.m_department_id::varchar = '$user_inst->department_id'
                    
                    GROUP BY 
                            cclc.id,
                            cmd.name,
                            cml.code,
                            cml.name,
                            cml.level_marks,
                            cml.semester_mk,
                            cml.tahun_ajaran
                    ORDER BY 
                            cml.code,
                            cml.name;
                ");

                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
                
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function colleger_by_department(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();

            if($user_inst){
                $query = DB::select("
                    SELECT
                        cmd.name AS dept_name,
                        cmc.id as m_colleger_id,
                        cmc.nim,
                        cmc.name as colleger_name
                    FROM c11_c_lecture_classes AS cclc
                                    
                            INNER JOIN c11_c_lecture_collegers AS cclcg
                                        ON cclcg.c_lecture_class_id = cclc.id
                            INNER JOIN c11_m_collegers AS cmc
                                        ON cclcg.m_colleger_id = cmc.id
                                        
                            INNER JOIN c11_m_departments AS cmd
                                        ON cclc.m_department_id = cmd.id
                        
                    WHERE cclc.m_department_id::varchar = '$user_inst->department_id'
                    
                    GROUP BY 
                            cmc.id,
                            cmd.name,
                            cmc.nim,
                            cmc.name
                    ORDER BY 
                            cmc.nim, 
                            cmc.name;
                ");

                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
                
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    // recap_assesment_cpls_all_collegers_lists
    public function recap_assesment_assesed_all_collegers_lists(Request $request){
        try {
            // $user_inst_id = session()->get('user_data')['user_inst_id'];
            // $user_inst = CUserInstitution::where('id', $user_inst_id)->first();

            $user_dept_id = session()->get('user_data')['user_department_id'];
            $qlimit = Helper::general_query_limit();

            if($user_dept_id){
                $query = DB::select("
                    SELECT
                            dt.dept_name,
                            dt.m_colleger_id,
                            dt.colleger_name,
                            dt.nim,
                            dt.is_assesed
                    FROM (
                            SELECT
                                cmd.name AS dept_name,
                                cmc.id as m_colleger_id,
                                cmc.nim,
                                cmc.name as colleger_name,
                                CASE WHEN cclcg.c_lecture_class_id IS NOT NULL
                                    THEN 'TRUE'
                                ELSE 'FALSE'
                                END AS is_assesed
                            FROM c11_c_department_collegers AS ccdc
                                            
                                    INNER JOIN c11_m_collegers AS cmc
                                                ON ccdc.m_colleger_id = cmc.id
                                                
                                    INNER JOIN c11_m_departments AS cmd
                                                ON ccdc.m_department_id = cmd.id
                                                
                                    LEFT JOIN c11_c_lecture_collegers as cclcg
                                                ON cclcg.m_colleger_id = cmc.id
                            WHERE ccdc.m_department_id::varchar = '$user_dept_id' 
                            GROUP BY 
                                    cmc.id,
                                    cmd.name,
                                    cmc.nim,
                                    cmc.name,
                                    cclcg.c_lecture_class_id
                            ORDER BY 
                                    cmc.nim, 
                                    cmc.name
                    ) AS dt
                    GROUP BY dt.dept_name,
                            dt.m_colleger_id,
                            dt.colleger_name,
                            dt.nim,
                            dt.is_assesed
                    LIMIT '$qlimit';
                ");

                if($query){
                    // return response()->json([
                    //     'status'=> 200,
                    //     'statusText'=> "OK",
                    //     'data'=> $query
                    // ]);

                    $query_paginate = new Paginator($query, 10);

                    return view(
                        'university::recap_assesment_assesed_all_collegers_lists', 
                        compact(
                            'query_paginate'
                        )
                    );
                }
            }

        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    // recap_assesment_cpls_all_collegers
    public function recap_assesment_cpls_all_collegers_per_department(){
        try {
            $user_dept_id = session()->get('user_data')['user_department_id'];

            if($user_dept_id){
                $query = DB::select("
                    SELECT 
                        dt.dept_name,
                        dt.cpl_name,
                        ROUND(AVG(dt.avg_marks)::numeric, 2) AS avg_marks_,
                        ROUND(AVG(dt.stddev_marks)::numeric, 2) AS stddev_marks_,
                        ROUND(AVG(dt.rate_marks)::numeric, 2) AS rate_marks_,
                        CASE						
                            WHEN AVG(dt.avg_marks) >= 80 THEN
                            'A' :: VARCHAR 
                            WHEN AVG(dt.avg_marks) >= 74 THEN
                            'B+' :: VARCHAR 
                            WHEN AVG(dt.avg_marks) >= 68 THEN
                            'B' :: VARCHAR 
                            WHEN AVG(dt.avg_marks) >= 62 THEN
                            'C+' :: VARCHAR 
                            WHEN AVG(dt.avg_marks)>= 56 THEN
                            'C' :: VARCHAR 
                            WHEN AVG(dt.avg_marks) >= 45 THEN
                            'D' :: VARCHAR ELSE'E' :: VARCHAR 
                        END AS grade_ 
                    FROM(
                            SELECT
                                    mark_.dept_name,
                                    mark_.cpl_name,
                                    mark_.avg_marks,
                                    mark_.stddev_marks,
                                    mark_.rate_marks,
                                    CASE						
                                            WHEN mark_.avg_marks >= 80 THEN
                                            'A' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 74 THEN
                                            'B+' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 68 THEN
                                            'B' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 62 THEN
                                            'C+' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 56 THEN
                                            'C' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 45 THEN
                                            'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                    END AS grade_ 
                                FROM (
                                    SELECT
                                        cmd.name AS dept_name,
                                        mc.name AS cpl_name,
                                        ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                        ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                        ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                                    FROM
                                        c11_c_lecture_marks_collegers AS clmc
                                        INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                        INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                        INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                        INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                                    AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                        INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                        INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id
                                        INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                                        INNER JOIN c11_m_departments AS cmd ON cclc.m_department_id  = cmd.id
                                    WHERE
                                            cclc.m_department_id = '$user_dept_id'
                                    GROUP BY
                                        cmd.name,
                                        mc.name
                                    ORDER BY
                                    cmd.name,
                                        mc.name
                                    ASC
                            ) AS mark_
                    ) AS dt
                    GROUP BY 
                        dt.dept_name,
                        dt.cpl_name;
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }

        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    // recap_assesment_competencies_all_collegers
    public function recap_assesment_competencies_all_collegers_per_department(){
        try {
            $user_dept_id = session()->get('user_data')['user_department_id'];

            if($user_dept_id){
                $query = DB::select("
                    SELECT 
                        dt.dept_name,
                        dt.competency,
                        ROUND(AVG(dt.avg_marks)::numeric, 2) AS avg_marks_,
                        ROUND(AVG(dt.stddev_marks)::numeric, 2) AS stddev_marks_,
                        ROUND(AVG(dt.rate_marks)::numeric, 2) AS rate_marks_,
                        CASE						
                                            WHEN AVG(dt.avg_marks) >= 80 THEN
                                            'A' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 74 THEN
                                            'B+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 68 THEN
                                            'B' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 62 THEN
                                            'C+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks)>= 56 THEN
                                            'C' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 45 THEN
                                            'D' :: VARCHAR ELSE'E' :: VARCHAR 
                        END AS grade_ 
                    FROM(

                        SELECT
                                    mark_.dept_name,
                                    mark_.competency,
                                    mark_.avg_marks,
                                    mark_.stddev_marks,
                                    mark_.rate_marks,
                                    CASE						
                                            WHEN mark_.avg_marks >= 80 THEN
                                            'A' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 74 THEN
                                            'B+' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 68 THEN
                                            'B' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 62 THEN
                                            'C+' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 56 THEN
                                            'C' :: VARCHAR 
                                            WHEN mark_.avg_marks >= 45 THEN
                                            'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                    END AS grade_ 
                        FROM (
                                SELECT
                                    cmd.name AS dept_name,
                                    ccc.competency,
                                    ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                    ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                    ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                                FROM
                                    c11_c_lecture_marks_collegers AS clmc
                                    INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                    INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                    INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                    INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                                AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                    INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                    INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id
                                    INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                                    INNER JOIN c11_m_departments AS cmd ON cclc.m_department_id  = cmd.id
                                WHERE
                                        cclc.m_department_id = '$user_dept_id'
                                        AND mclg.batch::int > (SELECT date_part('year', (SELECT current_timestamp))-4)
                                GROUP BY
                                    cmd.name,
                                    ccc.competency
                                ORDER BY
                                    cmd.name,
                                    ccc.competency
                                ASC
                        ) AS mark_
                    ) as dt
                    GROUP BY 
                    dt.dept_name,
                    dt.competency;    
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function recap_assesment_competencies_collegers_by_colleger_id(Request $request){
        try {
            $colleger_id = $request->colleger_id;

            if($colleger_id){
                $query = DB::select("
                    SELECT 
                        dt.colleger_name,
                        dt.nim, 
                        dt.competency,
                        ROUND(AVG(dt.avg_marks)::numeric, 2) AS avg_marks_,
                        ROUND(AVG(dt.stddev_marks)::numeric, 2) AS stddev_marks_,
                        ROUND(AVG(dt.rate_marks)::numeric, 2) AS rate_marks_,
                        CASE						
                                            WHEN AVG(dt.avg_marks) >= 80 THEN
                                            'A' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 74 THEN
                                            'B+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 68 THEN
                                            'B' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 62 THEN
                                            'C+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks)>= 56 THEN
                                            'C' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 45 THEN
                                            'D' :: VARCHAR ELSE'E' :: VARCHAR 
                        END AS grade_ 
                    FROM(
                    
                            SELECT
                                        mark_.name as lecture_name,
                                        mark_.colleger_name,
                                        mark_.nim,
                                        mark_.competency,
                                        mark_.avg_marks,
                                        mark_.stddev_marks,
                                        mark_.rate_marks,
                                        CASE						
                                                WHEN mark_.avg_marks >= 80 THEN
                                                'A' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 74 THEN
                                                'B+' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 68 THEN
                                                'B' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 62 THEN
                                                'C+' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 56 THEN
                                                'C' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 45 THEN
                                                'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                        END AS grade_ 
                            FROM (
                                    SELECT
                                        cml.name,
                                        mclg.name as colleger_name,
                                        mclg.nim,
                                        ccc.competency,
                                        ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                        ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                        ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                                    FROM
                                        c11_c_lecture_marks_collegers AS clmc
                                        INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                        INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                        INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                        INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                                    AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                        INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                        INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id 
                                        INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                                    WHERE
                                        clmc.m_colleger_id::VARCHAR = '$colleger_id'
                                    GROUP BY
                                        cml.name,
                                        mclg.name,
                                        mclg.nim,
                                        ccc.competency
                                    ORDER BY
                                        cml.name,
                                        mclg.name,
                                        mclg.nim,
                                        ccc.competency
                                    ASC
                            ) AS mark_
                    ) as dt
                    GROUP BY 
                        dt.colleger_name,
                        dt.nim, 
                        dt.competency;
            
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    public function recap_assesment_cpls_collegers_by_colleger_id(Request $request){
        try {
            $colleger_id = $request->colleger_id;

            if($colleger_id){
                $query = DB::select("
                    
                    SELECT 
                        dt.colleger_name,
                        dt.nim, 
                        dt.cpl_name,
                        ROUND(AVG(dt.avg_marks)::numeric, 2) AS avg_marks_,
                        ROUND(AVG(dt.stddev_marks)::numeric, 2) AS stddev_marks_,
                        ROUND(AVG(dt.rate_marks)::numeric, 2) AS rate_marks_,
                        CASE						
                                            WHEN AVG(dt.avg_marks) >= 80 THEN
                                            'A' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 74 THEN
                                            'B+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 68 THEN
                                            'B' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 62 THEN
                                            'C+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks)>= 56 THEN
                                            'C' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 45 THEN
                                            'D' :: VARCHAR ELSE'E' :: VARCHAR 
                        END AS grade_ 
                    FROM(
                        SELECT
                                        mark_.name as lecture_name,
                                        mark_.colleger_name,
                                        mark_.nim,
                                        mark_.cpl_name,
                                        mark_.avg_marks,
                                        mark_.stddev_marks,
                                        mark_.rate_marks,
                                        CASE						
                                                WHEN mark_.avg_marks >= 80 THEN
                                                'A' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 74 THEN
                                                'B+' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 68 THEN
                                                'B' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 62 THEN
                                                'C+' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 56 THEN
                                                'C' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 45 THEN
                                                'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                        END AS grade_ 
                            FROM (
                                    SELECT
                                    mc.name AS cpl_name,
                                    cml.name,
                                    mclg.name as colleger_name,
                                    mclg.nim,
                                    ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                    ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                    ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                                FROM
                                    c11_c_lecture_marks_collegers AS clmc
                                    INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                    INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                    INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                    INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                                AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                    INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                    INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id
                                    INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                                WHERE
                                    clmc.m_colleger_id::VARCHAR = '$colleger_id'
                                GROUP BY
                                    cml.name,
                                    mclg.name,
                                    mclg.nim,
                                    mc.name
                                ORDER BY
                                    cml.name,
                                    mc.name,
                                    mclg.name,
                                    mclg.nim
                                ASC
                        ) AS mark_
                    ) AS dt
                    GROUP BY 
                    dt.colleger_name,
                    dt.nim, 
                    dt.cpl_name;
            
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }



    public function cpls_collegers_by_year(Request $request){
        try {
            $user_dept_id = session()->get('user_data')['user_department_id'];
            $batch = $request->batch;

            if($user_dept_id){
                $query = DB::select("
                    SELECT 
                        dt.dept_name,
                        dt.cpl_name,
                        ROUND(AVG(dt.avg_marks)::numeric, 2) AS avg_marks_,
                        ROUND(AVG(dt.stddev_marks)::numeric, 2) AS stddev_marks_,
                        ROUND(AVG(dt.rate_marks)::numeric, 2) AS rate_marks_,
                        CASE						
                                            WHEN AVG(dt.avg_marks) >= 80 THEN
                                            'A' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 74 THEN
                                            'B+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 68 THEN
                                            'B' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 62 THEN
                                            'C+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks)>= 56 THEN
                                            'C' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 45 THEN
                                            'D' :: VARCHAR ELSE'E' :: VARCHAR 
                        END AS grade_ 
                    FROM(
                            SELECT
                                            mark_.dept_name,
                                            mark_.cpl_name,
                                            mark_.avg_marks,
                                            mark_.stddev_marks,
                                            mark_.rate_marks,
                                            CASE						
                                                    WHEN mark_.avg_marks >= 80 THEN
                                                    'A' :: VARCHAR 
                                                    WHEN mark_.avg_marks >= 74 THEN
                                                    'B+' :: VARCHAR 
                                                    WHEN mark_.avg_marks >= 68 THEN
                                                    'B' :: VARCHAR 
                                                    WHEN mark_.avg_marks >= 62 THEN
                                                    'C+' :: VARCHAR 
                                                    WHEN mark_.avg_marks >= 56 THEN
                                                    'C' :: VARCHAR 
                                                    WHEN mark_.avg_marks >= 45 THEN
                                                    'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                            END AS grade_ 
                                FROM (
                                    SELECT
                                        cmd.name AS dept_name,
                                        mc.name AS cpl_name,
                                        ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                        ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                        ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                                    FROM
                                        c11_c_lecture_marks_collegers AS clmc
                                        INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                        INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                        INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                        INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                                    AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                        INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                        INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id 
                                        INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                                        INNER JOIN c11_m_departments AS cmd ON cclc.m_department_id  = cmd.id
                                    WHERE
                                            cclc.m_department_id = '$user_dept_id'
                                            AND mclg.batch::VARCHAR = '$batch' AND mclg.status::VARCHAR = 'A'
                                    GROUP BY
                                        cmd.name,
                                        mc.name
                                    ORDER BY
                                        cmd.name,
                                        mc.name
                                    ASC
                            ) AS mark_
                    ) AS dt
                    GROUP BY 
                        dt.dept_name,
                        dt.cpl_name;
                    
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    } 
    
    
    public function competencies_collegers_by_year(Request $request){ 
        try {
            $user_dept_id = session()->get('user_data')['user_department_id'];
            $batch = $request->batch;

            if($user_dept_id){
                $query = DB::select("
                    SELECT 
                        dt.dept_name,
                        dt.competency,
                        ROUND(AVG(dt.avg_marks)::numeric, 2) AS avg_marks_,
                        ROUND(AVG(dt.stddev_marks)::numeric, 2) AS stddev_marks_,
                        ROUND(AVG(dt.rate_marks)::numeric, 2) AS rate_marks_,
                        CASE						
                                            WHEN AVG(dt.avg_marks) >= 80 THEN
                                            'A' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 74 THEN
                                            'B+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 68 THEN
                                            'B' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 62 THEN
                                            'C+' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks)>= 56 THEN
                                            'C' :: VARCHAR 
                                            WHEN AVG(dt.avg_marks) >= 45 THEN
                                            'D' :: VARCHAR ELSE'E' :: VARCHAR 
                        END AS grade_ 
                        FROM(

                            SELECT
                                        mark_.dept_name,
                                        mark_.competency,
                                        mark_.avg_marks,
                                        mark_.stddev_marks,
                                        mark_.rate_marks,
                                        CASE						
                                                WHEN mark_.avg_marks >= 80 THEN
                                                'A' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 74 THEN
                                                'B+' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 68 THEN
                                                'B' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 62 THEN
                                                'C+' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 56 THEN
                                                'C' :: VARCHAR 
                                                WHEN mark_.avg_marks >= 45 THEN
                                                'D' :: VARCHAR ELSE'E' :: VARCHAR 
                                        END AS grade_ 
                            FROM (
                                    SELECT
                                        cmd.name AS dept_name,
                                        ccc.competency,
                                        ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                                        ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                                        ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                                    FROM
                                        c11_c_lecture_marks_collegers AS clmc
                                        INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                        INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                        INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                        INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                                    AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                        INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                        INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id 
                                        INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                                        INNER JOIN c11_m_departments AS cmd ON cclc.m_department_id  = cmd.id
                                    WHERE
                                            cclc.m_department_id::VARCHAR = '$user_dept_id'
                                            AND mclg.batch::VARCHAR = '$batch' AND mclg.status::VARCHAR = 'A'
                                    GROUP BY
                                        cmd.name,
                                        ccc.competency
                                    ORDER BY
                                        cmd.name,
                                        ccc.competency
                                    ASC
                            ) AS mark_
                        ) as dt
                        GROUP BY 
                        dt.dept_name,
                        dt.competency;
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }


    public function cpls_collegers_by_lecture_semester(Request $request){
        try {
            $m_lecture_id = $request->m_lecture_id;
            $m_colleger_id = $request->m_colleger_id;

            if($m_colleger_id){
                $query = DB::select("
                    SELECT
                        mark_.name as lecture_name,
                        mark_.colleger_name,
                        mark_.nim,
                        mark_.cpl_name,
                        mark_.avg_marks as avg_marks_,
                        mark_.stddev_marks as stddev_marks_,
                        mark_.rate_marks as rate_marks_,
                        CASE						
                                WHEN mark_.avg_marks >= 80 THEN
                                'A' :: VARCHAR 
                                WHEN mark_.avg_marks >= 74 THEN
                                'B+' :: VARCHAR 
                                WHEN mark_.avg_marks >= 68 THEN
                                'B' :: VARCHAR 
                                WHEN mark_.avg_marks >= 62 THEN
                                'C+' :: VARCHAR 
                                WHEN mark_.avg_marks >= 56 THEN
                                'C' :: VARCHAR 
                                WHEN mark_.avg_marks >= 45 THEN
                                'D' :: VARCHAR ELSE'E' :: VARCHAR 
                        END AS grade_ 
                    FROM (
                        SELECT
                            mc.name AS cpl_name,
                            cml.name,
                            mclg.name as colleger_name,
                            mclg.nim,
                            ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                            ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                            ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                        FROM
                            c11_c_lecture_marks_collegers AS clmc
                                INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                                INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                                INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                                INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                        AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                                INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                                INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id
                                INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                            WHERE
                                clmc.m_colleger_id::VARCHAR = '$m_colleger_id'
                                AND cml.id::VARCHAR = '$m_lecture_id'
                        GROUP BY
                            cml.name,
                            mclg.name,
                            mclg.nim,
                            mc.name
                        ORDER BY
                            cml.name,
                            mc.name,
                            mclg.name,
                            mclg.nim
                        ASC
                    ) AS mark_;                   
                ");

                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    } 
    
    
    public function competencies_collegers_by_lecture_semester(Request $request){ 
        try {
            $m_lecture_id = $request->m_lecture_id;
            $m_colleger_id = $request->m_colleger_id;

            if($m_lecture_id){
                $query = DB::select("
                    SELECT
                        mark_.name as lecture_name,
                        mark_.colleger_name,
                        mark_.nim,
                        mark_.competency,
                        mark_.avg_marks as avg_marks_,
                        mark_.stddev_marks as stddev_marks_,
                        mark_.rate_marks rate_marks_,
                        CASE						
                                WHEN mark_.avg_marks >= 80 THEN
                                'A' :: VARCHAR 
                                WHEN mark_.avg_marks >= 74 THEN
                                'B+' :: VARCHAR 
                                WHEN mark_.avg_marks >= 68 THEN
                                'B' :: VARCHAR 
                                WHEN mark_.avg_marks >= 62 THEN
                                'C+' :: VARCHAR 
                                WHEN mark_.avg_marks >= 56 THEN
                                'C' :: VARCHAR 
                                WHEN mark_.avg_marks >= 45 THEN
                                'D' :: VARCHAR ELSE'E' :: VARCHAR 
                        END AS grade_ 
                    FROM (
                        SELECT
                            cml.name,
                            mclg.name as colleger_name,
                            mclg.nim,
                            ccc.competency,
                            ROUND(AVG(clmc.cw_detail_marks)::numeric, 2) AS avg_marks,
                            ROUND(STDDEV(clmc.cw_detail_marks)::numeric, 2) AS stddev_marks,
                            ROUND((4*AVG(clmc.cw_detail_marks)/100)::numeric, 2) AS rate_marks 
                        FROM
                        c11_c_lecture_marks_collegers AS clmc
                            INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw.id
                            INNER JOIN c11_c_lecture_classes AS cclc ON clmc.c_lecture_class_id = cclc.id
                            INNER JOIN c11_m_lectures AS cml ON cclc.m_lecture_id = cml.id
                            INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
                                        AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
                            INNER JOIN c11_m_cpls AS mc ON mc.id = clcwp.m_cpl_id
                            INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg.id
                            INNER JOIN c11_c_competencies AS ccc ON ccc.m_cpl_id = mc.id
                        WHERE
                            clmc.m_colleger_id::VARCHAR = '$m_colleger_id'
                            AND cml.id::VARCHAR = '$m_lecture_id'  
                        GROUP BY
                            cml.name,
                            mclg.name,
                            mclg.nim,
                            ccc.competency
                        ORDER BY
                            cml.name,
                            mclg.name,
                            mclg.nim,
                            ccc.competency
                        ASC
                        ) AS mark_;
                ");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }




    public function base_funct(){
        try {
            $user_inst_id = session()->get('user_data')['user_inst_id'];
            $user_inst = CUserInstitution::where('id', $user_inst_id)->first();

            if($user_inst){
                $query = DB::select("");
                if($query){
                    return response()->json([
                        'status'=> 200,
                        'statusText'=> "OK",
                        'data'=> $query
                    ]);
                }
            }
        } catch (Throwable $e) {
            report($e);
            return false;
        }
    }

    
}
