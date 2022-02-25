CREATE OR REPLACE FUNCTION "public"."assesment_by_file_id"("created_by" varchar, "file_id" varchar)
  RETURNS TABLE("assement_file_id" varchar, "file_name" varchar, "is_rendered" int2, "faculty_name" varchar, "department_name" varchar, "lecture_id" varchar, "lecture_code" varchar, "lecture_name" varchar, "level_marks" varchar, "semester" varchar, "lecturer_name" varchar, "lecturer_nidn" varchar, "created_at" timestamp) AS $BODY$
	
BEGIN
	RETURN QUERY
			select 
				clc.assement_file_id::varchar,
				fu.file_name,
				af.is_rendered::int2,
				mfc."name" as "faculty_name",
				mdp."name" as "department_name",
				mlc."id"::varchar as "lecture_id",
				mlc.code as "lecture_code",
				mlc."name" as "lecture_name",
				mlc.level_marks,
				mlc.semester,
				mlcr."name" as "lecturer_name",
				mlcr.nidn	 as "lecturer_nidn",
				af.created_at
			from c11_c_lecture_classes as clc
			
			inner join c11_m_lectures as mlc
						on clc.m_lecture_id = mlc."id"
						
			inner join c11_m_lecturers as mlcr
						on clc.m_lecturer_id = mlcr."id"
						
			inner join c11_m_departments as mdp
						on clc.m_department_id = mdp."id"
						
			inner join c11_m_faculties as mfc
						on clc.m_faculty_id = mfc."id"
						
			inner join c11_assesment_files as af
						on af.file_id = clc.assement_file_id
						
			inner join file_uploads as fu
			
						on fu."id" = af.file_id
			where af.is_rendered = 1
						and af.created_by::varchar = $1
						and clc.assement_file_id::varchar = $2
						
			group by af.created_at, clc.assement_file_id, mlc."id",
							 fu.file_name, af.is_rendered, mfc."name", 
							 mdp."name", mlc.code, mlc."name",
							 mlc.level_marks, mlc.semester, 
							 mlcr."name", mlcr.nidn	
			order by af.created_at, fu.file_name, mfc."name", 
							 af.is_rendered, mdp."name", mlc.code, mlc."name",
							 mlc.level_marks, mlc.semester, 
							 mlcr."name", mlcr.nidn	asc;
				 
END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."assesment_by_file_id"("created_by" varchar, "file_id" varchar) OWNER TO "postgres";
















CREATE OR REPLACE FUNCTION "public"."course_work_marks"("c_lecture_class_id" varchar)
  RETURNS TABLE("cw_id" varchar, "cw_name" varchar, "cw_description" text, "marks" int4) AS $BODY$
	
	
	BEGIN
		RETURN QUERY
				select
					mcw."id"::varchar as cw_id,
					mcw."name" as cw_name,
					mcw.description as cw_description,
					mcm.marks
				from c11_c_lecture_course_works as clcw
						 inner join c11_m_course_works as mcw 
									 on clcw.m_course_works_id = mcw."id"
									 
						 inner join c11_m_course_work_marks as mcm
									 on clcw.m_course_work_marks_id = mcm."id"
									 
						 inner join c11_c_lecture_classes as clc
									 on clc."id" = clcw.c_lecture_class_id
				where clcw.c_lecture_class_id::varchar = $1
				group by 	mcw."id", mcw."name", mcw.description, mcm.marks
				order by mcw."name", mcw.description;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."course_work_marks"("c_lecture_class_id" varchar) OWNER TO "postgres";



















CREATE OR REPLACE FUNCTION "public"."cpl_list_by_course_work_id"("clec_id" varchar, "cw_id" varchar)
  RETURNS TABLE("cpl_id" varchar, "cpl_name" varchar, "cpl_description" text) AS $BODY$
	
	BEGIN
		RETURN QUERY
			SELECT
			  mc."id"::varchar as cpl_id,
				mc."name" as cpl_name,
				mc.description as cpl_description
			FROM c11_c_lecture_course_work_cpls as clcwc
					INNER JOIN c11_m_course_work_details as mcwd
							ON clcwc.m_cw_detail_id = mcwd."id"
					INNER JOIN c11_m_cpls as mc
							ON mc."id" = clcwc.m_cpl_id
			WHERE mcwd.m_course_works_id::varchar = $2
			      AND clcwc.c_lecture_class_id::varchar = $1
			GROUP BY mc."name", mc.description, mc."id";
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."cpl_list_by_course_work_id"("clec_id" varchar, "cw_id" varchar) OWNER TO "postgres";















CREATE OR REPLACE FUNCTION "public"."cpmk_list_by_course_work_id"("clec_id" varchar, "cw_id" varchar)
  RETURNS TABLE("cpmk_id" varchar, "cpmk_name" varchar, "description" text) AS $BODY$
	
	
	BEGIN
		RETURN QUERY
			SELECT
			  mc."id"::varchar as cpmk_id,
				mc."name" as cpmk_name,
				mc.description
			FROM c11_c_lecture_course_work_cpmks as clcwc
					INNER JOIN c11_m_course_work_details as mcwd
							ON clcwc.m_cw_detail_id = mcwd."id"
					INNER JOIN c11_m_cpmks as mc
							ON mc."id" = clcwc.m_cpmk_id
			WHERE mcwd.m_course_works_id::varchar = $2
			      AND clcwc.c_lecture_class_id::varchar = $1
			GROUP BY mc."name", mc.description, mc."id";
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."cpmk_list_by_course_work_id"("clec_id" varchar, "cw_id" varchar) OWNER TO "postgres";





















CREATE OR REPLACE FUNCTION "public"."cqi_stat_grades"("c_lecture_class_id" varchar)
  RETURNS TABLE("grade" varchar, "total_grade" int8) AS $BODY$
	
	BEGIN
		RETURN QUERY 
				select 
					grade_ as grade ,
					count(stat_grade.grade_) as grade_stat
				from (

					SELECT
					*,
					case 
						when marks.final_marks >= 80 then 'A'::varchar
						when marks.final_marks >= 74 then 'B+'::varchar
						when marks.final_marks >= 68 then 'B'::varchar
						when marks.final_marks >= 62 then 'C+'::varchar
						when marks.final_marks >= 56 then 'C'::varchar
						when marks.final_marks >= 45 then 'D'::varchar
						else 'E'::varchar
						end as grade_
					FROM (	
							SELECT 
									mclg.nim,
									mclg."name" as "student_name",
									SUM(mcm.marks*clmc.student_total_marks/100) as "final_marks"
									
							FROM c11_c_lecture_course_works as clcw
								
									INNER JOIN c11_m_course_works as mcw 
												ON clcw.m_course_works_id = mcw."id"
															
									INNER JOIN c11_m_course_work_marks as mcm 
												ON clcw.m_course_work_marks_id = mcm."id"
											
									INNER JOIN c11_c_lecture_total_marks_collegers as clmc
												ON clcw.m_course_works_id = clmc.m_course_works_id
													 AND clcw.c_lecture_class_id = clmc.c_lecture_class_id
												
									INNER JOIN c11_m_collegers as mclg
												ON clmc.m_colleger_id = mclg."id"
							WHERE clcw.c_lecture_class_id::varchar = $1
							GROUP BY mclg.nim, mclg."name"
							ORDER BY mclg.nim, mclg."name" ASC
					) as  marks
				) as stat_grade
				GROUP BY stat_grade.grade_;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."cqi_stat_grades"("c_lecture_class_id" varchar) OWNER TO "postgres";














CREATE OR REPLACE FUNCTION "public"."last_uploaded_assesment_file"("created_by" varchar, "file_id" varchar)
  RETURNS TABLE("assement_file_id" varchar, "file_name" varchar, "is_rendered" int2, "faculty_name" varchar, "department_name" varchar, "lecture_id" varchar, "lecture_code" varchar, "lecture_name" varchar, "level_marks" varchar, "semester" varchar, "lecturer_name" varchar, "lecturer_nidn" varchar, "created_at" timestamp) AS $BODY$
	
BEGIN
	RETURN QUERY
			select 
				clc.assement_file_id::varchar,
				fu.file_name,
				af.is_rendered::int2,
				mfc."name" as "faculty_name",
				mdp."name" as "department_name",
				mlc."id"::varchar as "lecture_id",
				mlc.code as "lecture_code",
				mlc."name" as "lecture_name",
				mlc.level_marks,
				mlc.semester,
				mlcr."name" as "lecturer_name",
				mlcr.nidn	 as "lecturer_nidn",
				af.created_at
			from c11_c_lecture_classes as clc
			inner join c11_m_lectures as mlc
						on clc.m_lecture_id = mlc."id"
			inner join c11_m_lecturers as mlcr
						on clc.m_lecturer_id = mlcr."id"
			inner join c11_m_departments as mdp
						on clc.m_department_id = mdp."id"
			inner join c11_m_faculties as mfc
						on clc.m_faculty_id = mfc."id"
			inner join c11_assesment_files as af
						on af.file_id = clc.assement_file_id
			inner join file_uploads as fu
						on fu."id" = af.file_id
			where af.is_rendered = 1
						and af.created_by::varchar = $1
						and clc.assement_file_id::varchar = $2
			group by af.created_at, clc.assement_file_id, mlc."id",
							 fu.file_name, af.is_rendered, mfc."name", 
							 mdp."name", mlc.code, mlc."name",
							 mlc.level_marks, mlc.semester, 
							 mlcr."name", mlcr.nidn	
			order by af.created_at, fu.file_name, mfc."name", 
							 af.is_rendered, mdp."name", mlc.code, mlc."name",
							 mlc.level_marks, mlc.semester, 
							 mlcr."name", mlcr.nidn	asc;
				 
END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."last_uploaded_assesment_file"("created_by" varchar, "file_id" varchar) OWNER TO "postgres";


















CREATE OR REPLACE FUNCTION "public"."map_questions_cpl"("clec_id" varchar, "cw_id" varchar)
  RETURNS TABLE("cpl_name" varchar, "question_id" varchar, "question_name" text, "question_marks" int4) AS $BODY$
	
	
	BEGIN
	RETURN QUERY
	
			select
				mc."name" as cpl_name,
				mcwd."id"::varchar as question_id,
				mcwd.question_name,
				mcwd.marks as "question_marks"
			from c11_c_lecture_course_works as clcw
					 inner join c11_m_course_works as mcw 
								 on  mcw."id" = clcw.m_course_works_id
								 
					 inner join c11_m_course_work_marks as mcm
								 on mcm."id" = clcw.m_course_work_marks_id
					 
					 inner join c11_m_course_work_details as mcwd 
								 on mcwd.m_course_works_id = mcw."id"
								 
					 inner join c11_c_lecture_course_work_cpls as clcwp
								 on clcwp.m_cw_detail_id = mcwd."id"
								 
					 inner join c11_m_cpls as mc
								 on mc."id" = clcwp.m_cpl_id
								 
			where  mcwd.m_course_works_id::varchar = $2 AND clcwp.c_lecture_class_id::varchar = $1
			group by mcwd.question_name,  mc."name",  mcwd."id", mcwd.marks
			order by mc."name", mcwd.question_name ASC;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."map_questions_cpl"("clec_id" varchar, "cw_id" varchar) OWNER TO "postgres";








CREATE OR REPLACE FUNCTION "public"."map_questions_cpmk"("clec_id" varchar, "cw_id" varchar)
  RETURNS TABLE("cpmk_name" varchar, "question_id" varchar, "question_name" text, "question_marks" int4) AS $BODY$
	
	BEGIN
		RETURN QUERY		
			select
				mc."name" as cpmk_name,
				mcwd."id"::varchar as question_id,
				mcwd.question_name,
				mcwd.marks as "question_marks"
			from c11_c_lecture_course_works as clcw
					 inner join c11_m_course_works as mcw 
								 on  mcw."id" = clcw.m_course_works_id
								 
					 inner join c11_m_course_work_marks as mcm
								 on mcm."id" = clcw.m_course_work_marks_id
					 
					 inner join c11_m_course_work_details as mcwd 
								 on mcwd.m_course_works_id = mcw."id"
								 
					 inner join c11_c_lecture_course_work_cpmks as clcwp
								 on clcwp.m_cw_detail_id = mcwd."id"
								 
					 inner join c11_m_cpmks as mc
								 on mc."id" = clcwp.m_cpmk_id
								 
			where  mcwd.m_course_works_id::varchar = $2 AND clcwp.c_lecture_class_id::varchar = $1
			group by mcwd.question_name,  mc."name",  mcwd."id", mcwd.marks
			order by mc."name", mcwd.question_name ASC;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."map_questions_cpmk"("clec_id" varchar, "cw_id" varchar) OWNER TO "postgres";















CREATE OR REPLACE FUNCTION "public"."pivot_student_mark_by_cpl"("c_lecture_class_id" varchar, "cw_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "CPL1" numeric, "CPL2" numeric, "CPL3" numeric, "CPL4" numeric, "CPL5" numeric, "CPL6" numeric, "CPL7" numeric, "CPL8" numeric, "CPL9" numeric, "CPL10" numeric, "CPL11" numeric, "CPL12" numeric, "CPL13" numeric, "CPL14" numeric, "CPL15" numeric, "CPL16" numeric, "CPL17" numeric, "CPL18" numeric, "CPL19" numeric, "CPL20" numeric, "CPL21" numeric, "CPL22" numeric, "CPL23" numeric, "CPL24" numeric, "CPL25" numeric, "CPL26" numeric, "CPL27" numeric, "CPL28" numeric, "CPL29" numeric, "CPL30" numeric, "CPL31" numeric, "CPL32" numeric, "CPL33" numeric, "CPL34" numeric, "CPL35" numeric, "CPL36" numeric, "CPL37" numeric, "CPL38" numeric, "CPL39" numeric) AS $BODY$
BEGIN
	RETURN QUERY
				SELECT
	dt.nim, dt.student_name,
	SUM(dt.CPL1) as CPL1,
	SUM(dt.CPL2) as CPL2,
	SUM(dt.CPL3) as CPL3,
	SUM(dt.CPL4) as CPL4,
	SUM(dt.CPL5) as CPL5,
	SUM(dt.CPL6) as CPL6,
	SUM(dt.CPL7) as CPL7,
	SUM(dt.CPL8) as CPL8,
	
	SUM(dt.CPL9) as CPL9,
	SUM(dt.CPL10) as CPL10,
	SUM(dt.CPL11) as CPL11,
	SUM(dt.CPL12) as CPL12,
	SUM(dt.CPL13) as CPL13,
	SUM(dt.CPL14) as CPL14,
	SUM(dt.CPL15) as CPL15,
	SUM(dt.CPL16) as CPL16,
	
	SUM(dt.CPL17) as CPL17,
	SUM(dt.CPL18) as CPL18,
	SUM(dt.CPL19) as CPL19,
	SUM(dt.CPL20) as CPL20,
	SUM(dt.CPL21) as CPL21,
	SUM(dt.CPL22) as CPL22,
	SUM(dt.CPL23) as CPL23,
	SUM(dt.CPL24) as CPL24,
	
	SUM(dt.CPL25) as CPL25,
	SUM(dt.CPL26) as CPL26,
	SUM(dt.CPL27) as CPL27,
	SUM(dt.CPL28) as CPL28,
	SUM(dt.CPL29) as CPL29,
	SUM(dt.CPL30) as CPL30,
	SUM(dt.CPL31) as CPL31,
	SUM(dt.CPL32) as CPL32,
	
	SUM(dt.CPL33) as CPL33,
	SUM(dt.CPL34) as CPL34,
	SUM(dt.CPL35) as CPL35,
	SUM(dt.CPL36) as CPL36,
	SUM(dt.CPL37) as CPL37,
	SUM(dt.CPL38) as CPL38,
	SUM(dt.CPL39) as CPL39
	
FROM
(
SELECT 
	smbc.nim,
	smbc.student_name,
	case 
		when CPL_name = 'CPL1' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL1,
	case 
		when CPL_name = 'CPL2' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL2,
	case 
		when CPL_name = 'CPL3' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL3,
	case 
		when CPL_name = 'CPL4' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL4,
	case 
		when CPL_name = 'CPL5' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL5,
	case 
		when CPL_name = 'CPL6' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL6,
	case 
		when CPL_name = 'CPL7' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL7,
	case 
		when CPL_name = 'CPL8' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL8,
	
	case 
		when CPL_name = 'CPL9' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL9,
	case 
		when CPL_name = 'CPL10' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL10,
	case 
		when CPL_name = 'CPL11' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL11,
	case 
		when CPL_name = 'CPL12' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL12,
	case 
		when CPL_name = 'CPL13' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL13,
	case 
		when CPL_name = 'CPL14' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL14,
	case 
		when CPL_name = 'CPL15' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL15,
	case 
		when CPL_name = 'CPL16' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL16,
	case 
		when CPL_name = 'CPL17' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL17,
	case 
		when CPL_name = 'CPL18' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL18,
	case 
		when CPL_name = 'CPL19' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL19,
	case 
		when CPL_name = 'CPL20' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL20,
	
	case 
		when CPL_name = 'CPL21' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL21,
	case 
		when CPL_name = 'CPL22' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL22,
	case 
		when CPL_name = 'CPL23' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL23,
	case 
		when CPL_name = 'CPL24' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL24,
	case 
		when CPL_name = 'CPL25' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL25,
	case 
		when CPL_name = 'CPL26' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL26,
	case 
		when CPL_name = 'CPL27' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL27,
	case 
		when CPL_name = 'CPL28' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL28,
	case 
		when CPL_name = 'CPL29' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL29,
	case 
		when CPL_name = 'CPL30' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL30,
	case 
		when CPL_name = 'CPL31' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL31,
	case 
		when CPL_name = 'CPL32' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL32,
	case 
		when CPL_name = 'CPL33' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL33,
	case 
		when CPL_name = 'CPL34' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL34,
	case 
		when CPL_name = 'CPL35' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL35,
	case 
		when CPL_name = 'CPL36' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL36,
	case 
		when CPL_name = 'CPL37' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL37,
	case 
		when CPL_name = 'CPL38' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL38,
	case 
		when CPL_name = 'CPL39' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL39
FROM student_mark_by_cpl ( $1, $2) as smbc
GROUP BY smbc.nim, smbc.student_name, smbc.avg_marks, smbc.cpl_name
ORDER BY smbc.nim, smbc.student_name ASC
) as dt
WHERE dt.CPL1 is not null
		  OR dt.CPL2 is not null
			OR dt.CPL3 is not null
			OR dt.CPL4 is not null
			OR dt.CPL5 is not null
			OR dt.CPL6 is not null
			OR dt.CPL7 is not null
			OR dt.CPL8 is not null
			
			OR dt.CPL9 is not null
			OR dt.CPL10 is not null
			OR dt.CPL11 is not null
			OR dt.CPL12 is not null
			OR dt.CPL13 is not null
			OR dt.CPL14 is not null
			OR dt.CPL15 is not null
			
			OR dt.CPL16 is not null
			OR dt.CPL17 is not null
			OR dt.CPL18 is not null
			OR dt.CPL19 is not null
			OR dt.CPL20 is not null
			OR dt.CPL21 is not null
			OR dt.CPL22 is not null
			
			OR dt.CPL23 is not null
			OR dt.CPL24 is not null
			OR dt.CPL25 is not null
			OR dt.CPL26 is not null
			OR dt.CPL27 is not null
			OR dt.CPL28 is not null
			
			OR dt.CPL29 is not null
			OR dt.CPL30 is not null
			OR dt.CPL31 is not null
			OR dt.CPL32 is not null
			
			OR dt.CPL33 is not null
			OR dt.CPL34 is not null
			OR dt.CPL35 is not null
			
			OR dt.CPL36 is not null
			OR dt.CPL37 is not null
			OR dt.CPL38 is not null
			OR dt.CPL39 is not null
		
GROUP BY dt.nim, dt.student_name;


END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."pivot_student_mark_by_cpl"("c_lecture_class_id" varchar, "cw_id" varchar) OWNER TO "postgres";
















CREATE OR REPLACE FUNCTION "public"."pivot_student_mark_by_cpmk"("c_lecture_class_id" varchar, "cw_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cpmk1" numeric, "cpmk2" numeric, "cpmk3" numeric, "cpmk4" numeric, "cpmk5" numeric, "cpmk6" numeric, "cpmk7" numeric, "cpmk8" numeric) AS $BODY$
	
BEGIN
	RETURN QUERY
				SELECT
					dt._nim::varchar as nim, 
					dt._student_name::varchar as student_name,
					SUM(dt.CPMK1) as cpmk1,
					SUM(dt.CPMK2) as cpmk2,
					SUM(dt.CPMK3) as cpmk3,
					SUM(dt.CPMK4) as cpmk4,
					SUM(dt.CPMK5) as cpmk5,
					SUM(dt.CPMK6) as cpmk6,
					SUM(dt.CPMK7) as cpmk7,
					SUM(dt.CPMK8) as cpmk8
				FROM
				(
				SELECT 
					smbc.nim as _nim,
					smbc.student_name as _student_name,
					case 
						when cpmk_name = 'CPMK1' then ROUND (avg_marks::numeric, 2)
					end as CPMK1,
					case 
						when cpmk_name = 'CPMK2' then ROUND (avg_marks::numeric, 2)
					end as CPMK2,
					case 
						when cpmk_name = 'CPMK3' then ROUND (avg_marks::numeric, 2)
					end as CPMK3,
					case 
						when cpmk_name = 'CPMK4' then ROUND (avg_marks::numeric, 2)
					end as CPMK4,
					case 
						when cpmk_name = 'CPMK5' then ROUND (avg_marks::numeric, 2)
					end as CPMK5,
					case 
						when cpmk_name = 'CPMK6' then ROUND (avg_marks::numeric, 2)
					end as CPMK6,
					case 
						when cpmk_name = 'CPMK7' then ROUND (avg_marks::numeric, 2)
					end as CPMK7,
					case 
						when cpmk_name = 'CPMK8' then ROUND (avg_marks::numeric, 2)
					end as CPMK8
				FROM student_mark_by_cpmk ( $1, $2) as smbc
				GROUP BY smbc.nim, smbc.student_name, smbc.avg_marks, smbc.cpmk_name
				ORDER BY smbc.nim, smbc.student_name ASC
				) as dt
				WHERE dt.CPMK1 is not null
							OR dt.CPMK2 is not null
							OR dt.CPMK3 is not null
							OR dt.CPMK4 is not null
							OR dt.CPMK5 is not null
							OR dt.CPMK6 is not null
							OR dt.CPMK7 is not null
							OR dt.CPMK8 is not null
				GROUP BY dt._nim, dt._student_name;	
	
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."pivot_student_mark_by_cpmk"("c_lecture_class_id" varchar, "cw_id" varchar) OWNER TO "postgres";
















CREATE OR REPLACE FUNCTION "public"."stat_cqi_cmpk"("c_lecture_class_id" varchar)
  RETURNS TABLE("cpmk_id" varchar, "cpmk_name" varchar, "description" text, "avg_marks" float8, "rate_marks" float8, "stddev_marks" float8) AS $BODY$
	
	BEGIN
		RETURN QUERY
		-- 	CPMK OK
				SELECT
						mc."id"::varchar as cpmk_id,
						mc."name" as "cpmk_name",
						mc.description,
						AVG(clmc.cw_detail_marks) as avg_marks,				
						4 * avg(clmc.cw_detail_marks) / 100  as rate_marks,
						stddev(clmc.cw_detail_marks) as stddev_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpmks as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpmks as mc
										ON mc."id" = clcwp.m_cpmk_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"
																																	 
				WHERE clmc.c_lecture_class_id::varchar = $1
		-- 					AND mc."name" like '%1%'
		-- 					AND mclg."name" = 'BAGAS PANGESTU'
				GROUP BY mc."id", mc."name", mc.description
				ORDER BY mc."name" ASC;
		
END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."stat_cqi_cmpk"("c_lecture_class_id" varchar) OWNER TO "postgres";


















CREATE OR REPLACE FUNCTION "public"."stat_cqi_cpl_by_course_work"("c_lecture_class_id" varchar)
  RETURNS TABLE("cw_name" varchar, "cpl_name" varchar, "avg_marks" float8, "rate_marks" float8) AS $BODY$

	BEGIN
		RETURN QUERY
		-- 	CPMK OK
				SELECT
				    mcw."name" as "cw_name",
						mc."name" as "cpl_name",
						AVG(clmc.cw_detail_marks) as avg_marks,
						4 * avg(clmc.cw_detail_marks) / 100  as rate_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpls as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpls as mc
										ON mc."id" = clcwp.m_cpl_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"								 
				WHERE clmc.c_lecture_class_id::varchar = $1
				GROUP BY mcw."name", mc."name"
				ORDER BY mcw."name", mc."name" ASC;

END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."stat_cqi_cpl_by_course_work"("c_lecture_class_id" varchar) OWNER TO "postgres";











CREATE OR REPLACE FUNCTION "public"."stat_cqi_cpls"("c_lecture_class_id" varchar)
  RETURNS TABLE("cpl_id" varchar, "cpl_name" varchar, "description" text, "avg_marks" float8, "rate_marks" float8, "stddev_marks" float8) AS $BODY$
	
	BEGIN 
			RETURN QUERY
				-- cqi cpl
				SELECT
						mc."id"::varchar as "cpl_id",
						mc."name" as "cpl_name",
						mc.description,
						AVG(clmc.cw_detail_marks) as avg_marks,
						4 * AVG(clmc.cw_detail_marks) / 100  as rate_marks,
						stddev(clmc.cw_detail_marks) as stddev_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpls as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpls as mc
										ON mc."id" = clcwp.m_cpl_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"								 
				WHERE clmc.c_lecture_class_id::varchar = $1
			-- 				AND mc."id" = '958ef37b-43d3-4925-abd8-e218aecf3e26'
			-- 				AND mclg."name" = 'BAGAS PANGESTU'
				GROUP BY mc."id", mc."name", mc.description
				ORDER BY mc."name" ASC;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."stat_cqi_cpls"("c_lecture_class_id" varchar) OWNER TO "postgres";











CREATE OR REPLACE FUNCTION "public"."stat_cqi_cpmk_by_course_work"("c_lecture_class_id" varchar)
  RETURNS TABLE("cw_name" varchar, "cpmk_name" varchar, "avg_marks" float8, "rate_marks" float8) AS $BODY$

	BEGIN
		RETURN QUERY
		-- 	CPMK OK
				SELECT
					mcw."name" AS "cw_name",
					mc."name" AS "cpmk_name",
					AVG ( clmc.cw_detail_marks ) AS avg_marks,
					4 * AVG ( clmc.cw_detail_marks ) / 100 AS rate_marks 
				FROM
					c11_c_lecture_marks_collegers AS clmc
					INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw."id"
					
					INNER JOIN c11_c_lecture_course_work_cpmks AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
								AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
					INNER JOIN c11_m_cpmks AS mc ON mc."id" = clcwp.m_cpmk_id
					
					INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg."id" 
				WHERE
					clmc.c_lecture_class_id :: VARCHAR = $1
				GROUP BY
					mcw."name",
					mc."name" 
				ORDER BY
					mcw."name",
					mc."name" ASC;

END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."stat_cqi_cpmk_by_course_work"("c_lecture_class_id" varchar) OWNER TO "postgres";















CREATE OR REPLACE FUNCTION "public"."stat_obe_assesment_file"("created_by" varchar)
  RETURNS TABLE("unrendered" int8, "rendered" int8, "errendered" int8) AS $BODY$ 
		
BEGIN
	RETURN QUERY
			SELECT
				count(CASE WHEN af.is_rendered = 0 THEN af.is_rendered END) AS "unrendered",
				count(CASE WHEN af.is_rendered = 1 THEN af.is_rendered END) AS "rendered",
				count(CASE WHEN af.is_rendered = 2 THEN af.is_rendered END) AS "errendered"
			FROM c11_assesment_files as af
			WHERE af.created_by::varchar = $1;	
END;
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."stat_obe_assesment_file"("created_by" varchar) OWNER TO "postgres";









CREATE OR REPLACE FUNCTION "public"."student_grades_by_cpl"("c_lecture_class_id" varchar)
  RETURNS TABLE("cpl_name" varchar, "grade" varchar, "total_grade" int8) AS $BODY$
		BEGIN
		RETURN QUERY 
			SELECT
				stat_grade.cpl_name,
				grade_ AS grade,
				COUNT ( stat_grade.grade_ ) AS total_grade 
			FROM
				(
				SELECT
					*,
				CASE						
						WHEN mark_.final_marks >= 80 THEN
						'A' :: VARCHAR 
						WHEN mark_.final_marks >= 74 THEN
						'B+' :: VARCHAR 
						WHEN mark_.final_marks >= 68 THEN
						'B' :: VARCHAR 
						WHEN mark_.final_marks >= 62 THEN
						'C+' :: VARCHAR 
						WHEN mark_.final_marks >= 56 THEN
						'C' :: VARCHAR 
						WHEN mark_.final_marks >= 45 THEN
						'D' :: VARCHAR ELSE'E' :: VARCHAR 
					END AS grade_ 
				FROM
					(
					SELECT
						mclg.nim,
						mclg."name" AS "student_name",
						mc."name" AS "cpl_name",
						AVG ( clmc.cw_detail_marks ) AS final_marks,
						4 * AVG ( clmc.cw_detail_marks ) / 100 AS rate_marks 
					FROM
						c11_c_lecture_marks_collegers AS clmc
						INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw."id"
						INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
						AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
						INNER JOIN c11_m_cpls AS mc ON mc."id" = clcwp.m_cpl_id
						INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg."id" 
					WHERE
						clmc.c_lecture_class_id :: VARCHAR = $1
					GROUP BY
						mclg.nim,
						mclg."name",
						mc."name" 
					ORDER BY
						mclg.nim,
						mclg."name",
						mc."name" ASC 
					) AS mark_ 
				) AS stat_grade 
			GROUP BY
				stat_grade.cpl_name,
				grade_;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."student_grades_by_cpl"("c_lecture_class_id" varchar) OWNER TO "postgres";










CREATE OR REPLACE FUNCTION "public"."student_grades_by_cpmk"("c_lecture_class_id" varchar)
  RETURNS TABLE("cpmk_name" varchar, "grade" varchar, "total_grade" int8) AS $BODY$
		BEGIN
		RETURN QUERY 
				SELECT
					stat_grade.cpmk_name,
					grade_ AS grade,
					COUNT ( stat_grade.grade_ ) AS total_grade 
				FROM
					(
					SELECT
						*,
					CASE
							
							WHEN mark_.final_marks >= 80 THEN
							'A' :: VARCHAR 
							WHEN mark_.final_marks >= 74 THEN
							'B+' :: VARCHAR 
							WHEN mark_.final_marks >= 68 THEN
							'B' :: VARCHAR 
							WHEN mark_.final_marks >= 62 THEN
							'C+' :: VARCHAR 
							WHEN mark_.final_marks >= 56 THEN
							'C' :: VARCHAR 
							WHEN mark_.final_marks >= 45 THEN
							'D' :: VARCHAR ELSE'E' :: VARCHAR 
						END AS grade_ 
					FROM
						(
						SELECT
							mclg.nim,
							mclg."name" AS "student_name",
							mc."name" AS "cpmk_name",
							AVG ( clmc.cw_detail_marks ) AS final_marks,
							4 * AVG ( clmc.cw_detail_marks ) / 100 AS rate_marks 
						FROM
							c11_c_lecture_marks_collegers AS clmc
							INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw."id"
							INNER JOIN c11_c_lecture_course_work_cpmks AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
							AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
							INNER JOIN c11_m_cpmks AS mc ON mc."id" = clcwp.m_cpmk_id
							INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg."id" 
						WHERE
							clmc.c_lecture_class_id :: VARCHAR = $1 
						GROUP BY
							mclg.nim,
							mclg."name",
							mc."name" 
						ORDER BY
							mclg.nim,
							mclg."name",
							mc."name" ASC 
						) AS mark_ 
						
					) AS stat_grade
					GROUP BY stat_grade.cpmk_name, grade_;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."student_grades_by_cpmk"("c_lecture_class_id" varchar) OWNER TO "postgres";











CREATE OR REPLACE FUNCTION "public"."student_mark_by_cpl"("c_lecture_class_id" varchar, "cw_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cpl_name" varchar, "avg_marks" float8, "rate_marks" float8) AS $BODY$
	
BEGIN
	RETURN QUERY
				SELECT
				    mclg.nim,
						mclg."name",
						mc."name" as "cpl_name",
						AVG(clmc.cw_detail_marks) as avg_marks,
						4 * avg(clmc.cw_detail_marks) / 100  as rate_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpls as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpls as mc
										ON mc."id" = clcwp.m_cpl_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"	
																 
				WHERE clmc.c_lecture_class_id::varchar = $1 
				      AND clmc.m_course_works_id::varchar =$2
				GROUP BY mclg.nim, mclg."name", mc."name"
				ORDER BY mclg.nim, mclg."name", mc."name" ASC;
	
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."student_mark_by_cpl"("c_lecture_class_id" varchar, "cw_id" varchar) OWNER TO "postgres";












CREATE OR REPLACE FUNCTION "public"."student_mark_by_cpmk"("c_lecture_class_id" varchar, "cw_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cpmk_name" varchar, "avg_marks" float8, "rate_marks" float8) AS $BODY$
	
BEGIN
	RETURN QUERY
				SELECT
				    mclg.nim,
						mclg."name" as "student_name",
						mc."name" as "cpmk_name",
						AVG(clmc.cw_detail_marks) as avg_marks,
						4 * avg(clmc.cw_detail_marks) / 100  as rate_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpmks as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpmks as mc
										ON mc."id" = clcwp.m_cpmk_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"
																	 
				WHERE clmc.c_lecture_class_id::varchar = $1 
				      AND clmc.m_course_works_id::varchar =$2
				GROUP BY mclg.nim, mclg."name", mc."name"
				ORDER BY mclg.nim, mclg."name", mc."name" ASC;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."student_mark_by_cpmk"("c_lecture_class_id" varchar, "cw_id" varchar) OWNER TO "postgres";











CREATE OR REPLACE FUNCTION "public"."student_mark_course_work"("c_lecture_class_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cw_name" varchar, "course_work_marks" int8, "avg_course_work_marks" float8, "final_course_work_marks" float8) AS $BODY$
	
	BEGIN
		RETURN QUERY 
			SELECT 
					mclg.nim,
					mclg."name" "student_name",
					'COURSE WORK'::varchar as "cw_name",
					SUM(mcm.marks) as course_work_marks,
					AVG(clmc.student_total_marks) as avg_course_work_marks,
					SUM(mcm.marks*clmc.student_total_marks/100) as "final_course_work_marks"
					
			FROM c11_c_lecture_course_works as clcw
				
					INNER JOIN c11_m_course_works as mcw 
								ON clcw.m_course_works_id = mcw."id"
											
					INNER JOIN c11_m_course_work_marks as mcm 
								ON clcw.m_course_work_marks_id = mcm."id"
							
					INNER JOIN c11_c_lecture_total_marks_collegers as clmc
								ON clcw.m_course_works_id = clmc.m_course_works_id
									 AND clcw.c_lecture_class_id = clmc.c_lecture_class_id
								
					INNER JOIN c11_m_collegers as mclg
								ON clmc.m_colleger_id = mclg."id"
			WHERE clcw.c_lecture_class_id::varchar = $1
						AND mcw."name" like '%COURSE WORK%'
			GROUP BY mclg.nim, mclg."name"
			ORDER BY mclg.nim, mclg."name" ASC;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."student_mark_course_work"("c_lecture_class_id" varchar) OWNER TO "postgres";











CREATE OR REPLACE FUNCTION "public"."student_mark_final_exam"("c_lecture_class_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cw_name" varchar, "exam_marks" int8, "avg_exam_marks" float8, "final_exam_marks" float8) AS $BODY$
	
	BEGIN
		RETURN QUERY 
				SELECT 
						mclg.nim,
						mclg."name" as "student_name",
						mcw."name" as "cw_name",
						SUM(mcm.marks) as exam_marks,
						AVG(clmc.student_total_marks) as avg_exam_marks,
						SUM(mcm.marks*clmc.student_total_marks/100) as "final_exam_marks"
						
				FROM c11_c_lecture_course_works as clcw
					
						INNER JOIN c11_m_course_works as mcw 
									ON clcw.m_course_works_id = mcw."id"
												
						INNER JOIN c11_m_course_work_marks as mcm 
									ON clcw.m_course_work_marks_id = mcm."id"
								
						INNER JOIN c11_c_lecture_total_marks_collegers as clmc
									ON clcw.m_course_works_id = clmc.m_course_works_id
										 AND clcw.c_lecture_class_id = clmc.c_lecture_class_id
									
						INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"
				WHERE clcw.c_lecture_class_id::varchar = $1
							AND mcw."name" like '%EXAM%'
				GROUP BY mclg.nim, mclg."name", mcw."name"
				ORDER BY mclg.nim, mclg."name" ASC;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."student_mark_final_exam"("c_lecture_class_id" varchar) OWNER TO "postgres";














CREATE OR REPLACE FUNCTION "public"."student_mark_grades"("c_lecture_class_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "final_marks" float8, "grade" varchar) AS $BODY$
	
	BEGIN
		RETURN QUERY 
				SELECT
				*,
				case 
					when marks.final_marks >= 80 then 'A'::varchar
					when marks.final_marks >= 74 then 'B+'::varchar
					when marks.final_marks >= 68 then 'B'::varchar
					when marks.final_marks >= 62 then 'C+'::varchar
					when marks.final_marks >= 56 then 'C'::varchar
					when marks.final_marks >= 45 then 'D'::varchar
					else 'E'::varchar
					end as grade
				FROM (	
						SELECT 
								mclg.nim,
								mclg."name" as "student_name",
								SUM(mcm.marks*clmc.student_total_marks/100) as "final_marks"
								
						FROM c11_c_lecture_course_works as clcw
							
								INNER JOIN c11_m_course_works as mcw 
											ON clcw.m_course_works_id = mcw."id"
														
								INNER JOIN c11_m_course_work_marks as mcm 
											ON clcw.m_course_work_marks_id = mcm."id"
										
								INNER JOIN c11_c_lecture_total_marks_collegers as clmc
											ON clcw.m_course_works_id = clmc.m_course_works_id
												 AND clcw.c_lecture_class_id = clmc.c_lecture_class_id
											
								INNER JOIN c11_m_collegers as mclg
											ON clmc.m_colleger_id = mclg."id"
						WHERE clcw.c_lecture_class_id::varchar = $1
						GROUP BY mclg.nim, mclg."name"
						ORDER BY mclg.nim, mclg."name" ASC
				) as  marks;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

ALTER FUNCTION "public"."student_mark_grades"("c_lecture_class_id" varchar) OWNER TO "postgres";