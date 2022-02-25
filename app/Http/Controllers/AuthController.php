<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Hash;

use Session;
use Auth;

class AuthController extends Controller
{
    public function __construct()
    {
        
    }

    public function register_page(){
        $institution_level = Helper::GetInstitutionLevel();
        $institution_category = Helper::GetInstitutionCategory();
        $province_city = Helper::GetProvinceCity();
        return view(
                'auth.register', 
                compact(
                    'institution_category', 
                    'institution_level', 
                    'province_city'
                )
        );
    }

    
    public function get_token(){
        try {
            return response()->json([
                '_token' => session()->token()
            ]);
        } catch (Throwable $e) {
            report($e);
    
            return false;
        }
    }
    


    public function login(Request $request){

        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);        
   
        $credentials = $request->only('email', 'password');
        // $credentials["password"] = Hash::make($credentials["password"]);

        $auth_attempt = Auth::attempt($credentials);

        // dd($request->input(), $credentials, $auth_attempt); //password

        if ($auth_attempt) {
            return redirect()->intended('auth_check');
        }
  
        return redirect("login")->withSuccess('Sorry! You have entered invalid credentials');
    }

    public function logout(Request $request) {
        Auth::guard()->logout();
        Session::flush();
        Session::regenerate();
        return redirect('login');
    }
}
