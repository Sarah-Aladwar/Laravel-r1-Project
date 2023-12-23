<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Examplec extends Controller
{
    public function test1(){
        return view('login');
    }

    public function showplace(){
        return view('showplace');
    }

    public function showblog(){
        return view('blog1');
    } 

    public function mysession(){
        session()->put('test', 'First Laravel Session'); //creating a session
        //session()->flash('test', 'First Laravel Session'); //one instance session
        //session()->forget('test'); //deleting the session   //flush stops all sessions
        
        $data = session('test'); //value/data of session
        return view('session', compact('data'));//sending session data to session page
    }

}
