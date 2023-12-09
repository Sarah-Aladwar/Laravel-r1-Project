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
        return view('blog');
    } 






}
