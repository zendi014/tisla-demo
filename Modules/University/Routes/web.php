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





    // C11CurriculumController =========================================
    Route::get('/curricullum', 'C11CurriculumController@index');
    Route::get('/curricullum/create', 'C11CurriculumController@create');
    Route::get('/curricullum/latest', 'C11CurriculumController@latest');
    Route::post('/curricullum/store', 'C11CurriculumController@store');
    Route::get('/curricullum/show/{id}', 'C11CurriculumController@show');
    Route::put('/curricullum/update/{id}', 'C11CurriculumController@update');
    Route::delete('/curricullum/destroy/{id}', 'C11CurriculumController@destroy');





    Route::get('/collegers', 'C11CollegerController@collegers');





    Route::group([
        'prefix'     => 'api',
    ], function() {
        
    });

});
