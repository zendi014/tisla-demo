<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::prefix('c11')->group(function() {
    // Route::get('/', 'UniversityController@index');

    Route::get('/assesment_file_index', 'C11AssesmentFileController@index');
    Route::get('/dashboard_statistics', 'C11AssesmentFileController@dashboard_statistics');
    Route::get('/assesment_file_uploader', 'C11AssesmentFileController@assesment_file_uploader');
    Route::get('/dashboard_last_cqi', 'C11AssesmentFileController@dashboard_last_cqi');
    Route::get('/dashboard_last_assesment', 'C11AssesmentFileController@dashboard_last_assesment');


    Route::get(
        '/detail_rendered_assesment_file/{file_id}', 
        'C11AssesmentFileController@detail_rendered_assesment_file'
    )->name('c11_detail_rendered_assesment_file');

    // Route::post('/get_stat_cqi_cmpk', 'C11AssesmentFileController@get_stat_cqi_cmpk');

    Route::get(
        '/lecture_info_content/{file_id}', 
        'C11AssesmentFileController@lecture_info_content'
    )->name('lecture_info_content');
    
    Route::get(
        '/assesment_map_content/{file_id}', 
        'C11AssesmentFileController@assesment_map_content'
    )->name('assesment_map_content');

    Route::get(
        '/student_marks_content/{file_id}', 
        'C11AssesmentFileController@student_marks_content'
    )->name('student_marks_content');

    Route::get(
        '/assesment_chart_content/{file_id}', 
        'C11AssesmentFileController@assesment_chart_content'
    )->name('assesment_chart_content');


    Route::get(
        '/stat_cqi_cpl_cw/{file_id}', 
        'C11AssesmentFileController@stat_cqi_cpl_cw'
    )->name('stat_cqi_cpl_cw');
    
    Route::get(
        '/cqi_cpls_stats/{file_id}', 
        'C11AssesmentFileController@cqi_cpls_stats'
    )->name('cqi_cpls_stats');

    Route::get(
        '/cqi_cpmks_stats/{file_id}', 
        'C11AssesmentFileController@cqi_cpmks_stats'
    )->name('cqi_cpmks_stats');


    Route::get(
        '/stat_cqi_cpl_by_course_work/{file_id}', 
        'C11AssesmentFileController@stat_cqi_cpl_by_course_work'
    )->name('stat_cqi_cpl_by_course_work');
    
    Route::get(
        '/stat_cqi_competency_by_course_work/{file_id}', 
        'C11AssesmentFileController@stat_cqi_competency_by_course_work'
    )->name('stat_cqi_competency_by_course_work');
    


    Route::get(
        '/stat_cqi_cpmk_by_course_work/{file_id}', 
        'C11AssesmentFileController@stat_cqi_cpmk_by_course_work'
    )->name('stat_cqi_cpmk_by_course_work');
    
    Route::get(
        '/get_cqi_stat_grades/{file_id}', 
        'C11AssesmentFileController@get_cqi_stat_grades'
    )->name('get_cqi_stat_grades');
    

    Route::get(
        '/student_grades_by_cpl/{file_id}', 
        'C11AssesmentFileController@student_grades_by_cpl'
    )->name('student_grades_by_cpl');


    Route::get(
        '/student_grades_by_cpmk/{file_id}', 
        'C11AssesmentFileController@student_grades_by_cpmk'
    )->name('student_grades_by_cpmk');


    Route::get(
        '/pivot_student_mark_by_cpmk/{file_id}', 
        'C11AssesmentFileController@pivot_student_mark_by_cpmk'
    )->name('pivot_student_mark_by_cpmk');


    Route::get(
        '/pivot_student_mark_by_cpl/{file_id}', 
        'C11AssesmentFileController@pivot_student_mark_by_cpl'
    )->name('pivot_student_mark_by_cpl');

   




    
    


    Route::post('/render_assesment_file', 'RenderAssesmentController@render_assesment_file');





    Route::get('/get_faculty_institution', 'C11FacultyContnroller@get_faculty_institution');
    Route::get('/get_department_faculty', 'C11FacultyContnroller@get_department_faculty');







    


    Route::get(
        '/sync_colleger', 
        'C11SyncDataController@sync_colleger'
    )->name('sync_colleger');
    Route::get(
        '/sync_lecturer', 
        'C11SyncDataController@sync_lecturer'
    )->name('sync_lecturer');

    Route::post(
        '/sync_api_data_colleger', 
        'C11SyncDataController@sync_api_data_colleger'
    )->name('sync_api_data_colleger');


    Route::get(
        '/sync_curriculum', 
        'C11SyncDataController@sync_curriculum'
    )->name('sync_curriculum');
    Route::get(
        '/sync_faculty', 
        'C11SyncDataController@sync_faculty'
    )->name('sync_faculty');
    Route::get(
        '/sync_department', 
        'C11SyncDataController@sync_department'
    )->name('sync_department');



    

    Route::group([
        'prefix' => 'collegers',
    ], function() {

        Route::any(
            '/', 
            'C11CollegerController@collegers'
        )->name('collegers');
        
        Route::post(
            '/edit', 
            'C11CollegerController@edit'
        )->name('edit_collegers');

        Route::post(
            '/update', 
            'C11CollegerController@update'
        )->name('update_collegers');

        Route::post(
            '/delete', 
            'C11CollegerController@delete'
        )->name('delete_collegers');

    });


    

    // C11CurriculumController =========================================
    Route::group([
        'prefix' => 'curricullum',
    ], function() {
        Route::get(
            '/', 
            'C11CurriculumController@index'
        )->name('index_curricullum');

        Route::get(
            '/form', 
            'C11CurriculumController@form_curricullum'
        )->name('form_curricullum');

        Route::post(
            '/store', 
            'C11CurriculumController@store'
        )->name('store_curricullum');

    });
    
    Route::get('/curricullum/create', 'C11CurriculumController@create');
    Route::get('/curricullum/latest', 'C11CurriculumController@latest');
    
    Route::get('/curricullum/show/{id}', 'C11CurriculumController@show');
    Route::put('/curricullum/update/{id}', 'C11CurriculumController@update');
    Route::delete('/curricullum/destroy/{id}', 'C11CurriculumController@destroy');




    
    // RECAP ASSESMENT  =========================================
    Route::group([
        'prefix' => 'recap_assesment',
    ], function() {

        Route::get(
            '/assesed_all_collegers_lists', 
            'C11RecapAssesmentController@recap_assesment_assesed_all_collegers_lists'
        )->name('recap_assesment_assesed_all_collegers_lists');


        Route::get(
            '/competencies_all_collegers_per_department', 
            'C11RecapAssesmentController@recap_assesment_competencies_all_collegers_per_department'
        )->name('recap_assesment_competencies_all_collegers_per_department');


        Route::get(
            '/cpls_all_collegers_per_department', 
            'C11RecapAssesmentController@recap_assesment_cpls_all_collegers_per_department'
        )->name('recap_assesment_cpls_all_collegers_per_department');


        Route::post(
            '/competencies_collegers_by_colleger_id', 
            'C11RecapAssesmentController@recap_assesment_competencies_collegers_by_colleger_id'
        )->name('recap_assesment_competencies_collegers_by_colleger_id');

        Route::post(
            '/cpls_collegers_by_colleger_id', 
            'C11RecapAssesmentController@recap_assesment_cpls_collegers_by_colleger_id'
        )->name('recap_assesment_cpls_collegers_by_colleger_id');

        Route::get(
            '/detail_by_colleger/{colleger_id}', 
            'C11RecapAssesmentController@recap_assesment_detail_by_colleger'
        )->name('recap_assesment_detail_by_colleger');
        

        Route::post(
            '/competencies_collegers_by_year', 
            'C11RecapAssesmentController@competencies_collegers_by_year'
        )->name('recap_assesment_competencies_collegers_by_year');

        Route::post(
            '/cpls_collegers_by_year', 
            'C11RecapAssesmentController@cpls_collegers_by_year' 
        )->name('recap_assesment_cpls_collegers_by_year');
            

        Route::post(
            '/cpls_collegers_by_lecture_semester', 
            'C11RecapAssesmentController@cpls_collegers_by_lecture_semester' 
        )->name('cpls_collegers_by_lecture_semester');

        Route::post(
            '/competencies_collegers_by_lecture_semester', 
            'C11RecapAssesmentController@competencies_collegers_by_lecture_semester' 
        )->name('competencies_collegers_by_lecture_semester');


    });


    Route::get(
        '/colleger_by_department', 
        'C11RecapAssesmentController@colleger_by_department'
    )->name('colleger_by_department');
    Route::get(
        '/lecture_by_department', 
        'C11RecapAssesmentController@lecture_by_department'
    )->name('lecture_by_department');
    Route::get(
        '/lecturer_by_department', 
        'C11RecapAssesmentController@lecturer_by_department'
    )->name('lecturer_by_department');

    Route::get(
        '/recap_assesment_cpl_colleger', 
        'C11RecapAssesmentController@recap_assesment_cpl_colleger'
    )->name('recap_assesment_cpl_colleger');
    Route::get(
        '/recap_assesment_competencies_colleger', 
        'C11RecapAssesmentController@recap_assesment_competencies_colleger'
    )->name('recap_assesment_competencies_colleger');

    Route::get(
        '/recap_assesment_cpl_lecturer', 
        'C11RecapAssesmentController@recap_assesment_cpl_lecturer'
    )->name('recap_assesment_cpl_lecturer');
    Route::get(
        '/recap_assesment_competencies_lecturer', 
        'C11RecapAssesmentController@recap_assesment_competencies_lecturer'
    )->name('recap_assesment_competencies_lecturer');

    Route::get(
        '/recap_assesment_cpl_lecture', 
        'C11RecapAssesmentController@recap_assesment_cpl_lecture'
    )->name('recap_assesment_cpl_lecture');
    Route::get(
        '/recap_assesment_competencies_lecture', 
        'C11RecapAssesmentController@recap_assesment_competencies_lecture'
    )->name('recap_assesment_competencies_lecture');

    
    Route::get(
        '/recap_assesment_lectures', 
        'C11RecapAssesmentController@recap_assesment_lectures'
    )->name('recap_assesment_lectures');
    Route::get(
        '/recap_assesment_lecturers', 
        'C11RecapAssesmentController@recap_assesment_lecturers'
    )->name('recap_assesment_lecturers');
    Route::get(
        '/recap_assesment_collegers', 
        'C11RecapAssesmentController@recap_assesment_collegers'
    )->name('recap_assesment_collegers');





    Route::group([
        'prefix' => 'ajax',
    ], function() {

        Route::any(
            '/sync_colleger_ajax', 
            'C11SyncDataController@sync_colleger_ajax'
        )->name('sync_colleger_ajax');

        Route::any(
            '/sync_curriculum_ajax', 
            'C11CurriculumController@sync_curriculum_ajax'
        )->name('sync_curriculum_ajax');

    });

});
