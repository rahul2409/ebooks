<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class RegisterController extends Controller
{
    public function create(){
        return view('registration.create');
    }

    public function store(){
        //form validation

        $this->validate(request(),[
            'name' => 'required',
            'email' => 'required',
            'password' => 'required'
        ]);

        //create and sev the user
        $user=User::create(request(['name','email','password']));

        //sign in the user
        auth()->login($user);


        //redirect
        return redirect()->route('welcome');



    }
}
