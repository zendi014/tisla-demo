<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Admin\DashboardController as AdminDashboard;
use App\Http\Controllers\Admin\RoleController as AdminRole;
use App\Http\Controllers\Admin\UserController as AdminUser;
use App\Http\Controllers\Test\TestController as Test;
use App\Http\Controllers\Modules\FileUploader as FileUploader;

use App\Http\Controllers\HomeController as HomeController;
use App\Http\Controllers\AuthController as AuthController;

use Modules\University\Http\RenderAssesmentController;
use App\Http\Controllers\Assesment\AssesmentController as AssesmentController;

// use Illuminate\Support\Facades\Auth;
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
Route::get('/', function () {
    return redirect('login');
});

Route::get(
    'register', 
    [
        AuthController::class, 'register_page'
    ]
)->name('register');


Route::post(
    'login', 
    [
        AuthController::class, 'login'
    ]
)->name('login');


Route::get('/home', function () {
    return view('home');
});







Route::get(
    'render_excel/{file_name}', 
    [
        Test::class, 'render_excel'
    ]
)->name('test.render_excel');


Route::get(
    'assesment_page', 
    [
        Test::class, 'assesment_page'
    ]
)->name('test.assesment');

Route::get(
    'assesment_content_detail/{file_name}', 
    [
        Test::class, 'assesment_content_detail'
    ]
)->name('test.assesment_content_detail');


Route::get(
    'assesment_content_details/{file_name}', 
    [
        Test::class, 'assesment_content_details'
    ]
)->name('test.assesment_content_details');




Route::post(
    'upload_file', 
    [
        FileUploader::class, 'store_file'
    ]
)->name('upload_file');


Route::post(
    'remove_file', 
    [
        FileUploader::class, 'remove_file'
    ]
)->name('remove_file');






Route::get(
    'test_helper', 
    [
        Test::class, 'TestHelpers'
    ]
)->name('test.test_helper');

Route::get(
    'test_mail', 
    [
        Test::class, 'TestMail'
    ]
)->name('test.mail');

// Route::get(
//     'test_mail_page', 
//     [
//         Test::class, 'TestMail'
//     ]
// )->name('test.mail_page');

// Route::get(
//     'session_auth', 
//     [
//         Test::class, 'session_auth'
//     ]
// )->name('test.session_auth');





Route::group(['
    middleware' => ['auth']
], function() {

    Route::get('auth_check', [HomeController::class, 'root'])->name('root');
    Route::get('logout', [AuthController::class, 'logout'])->name('logout');
    Route::get('index/{locale}', [HomeController::class, 'lang']);
    // Route::get('{any}', [HomeController::class, 'index'])->name('index');


    // University Route
    Route::group([
        'prefix'     => 'c11',
    ], function() {


        // Direction to the dashboard

        Route::get(
            'admin', 
            [
                HomeController::class, 'c11_dashboard_admin'
            ]
        )->name('c11_dashboard_admin');


        Route::get(
            'client', 
            [
                HomeController::class, 'c11_dashboard_client'
            ]
        )->name('c11_dashboard_client');


        Route::get(
            'prodi', 
            [
                HomeController::class, 'c11_dashboard_prodi'
            ]
        )->name('c11_dashboard_prodi');




        
        /*
        Route::get(
            'detail_rendered_assesment_file/{file_id}', 
            [ HomeController::class, 'detail_rendered_assesment_file' ]
        )->name('c11_detail_rendered_assesment_file');
        */

        Route::group([
            'prefix'     => 'api',
        ], function() {

            Route::post(
                'remove_file_by_id', 
                [
                    FileUploader::class, 'remove_file_by_id'
                ]
            )->name('c11_dashboard_client_remove_file_by_id');
            
        });

    }); // end prefix c11






    Route::group([
        'prefix'     => 'admin',
    ], function() {
        Route::get('/dashboard', [AdminDashboard::class, 'index'])->name('dashboard.index');
        Route::get('roles/reload-permissions/{id}', [AdminRole::class, 'reloadPermissions'])->name('roles.update');
        Route::get('roles/reload-permissions', [AdminRole::class, 'reloadPermissions'])->name('roles.update');
        
        Route::resource('roles', AdminRole::class);
        Route::resource('users', AdminUser::class);
    });// end prefix admin



    Route::group([
        'prefix'     => 'api',
    ], function() {
        Route::get(
            'get_session', 
            [
                HomeController::class, 'get_session'
            ]
        )->name('get_session');

    }); // end prefix api


}); // end prefix auth


Route::get(
    'get_token', 
    [
        AuthController::class, 'get_token'
    ]
)->name('get_token');