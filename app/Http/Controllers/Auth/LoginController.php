<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class LoginController extends Controller
{
    public function getLogin(){
        if(Auth::check()){

            return redirect()->route('admin.home');
        }

        return view('admin.auth.login');
    }
    public function postLogin(Request $request){
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
           
            return redirect()->route('admin.home');
        }else{
            return redirect()->back()->withErrors([
                'email' => 'Email hoặc mật khẩu không đúng',
            ]);
        }        
    }

}
