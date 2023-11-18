<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CarController extends Controller
{
    public function showForm(){
        return view('Addcar');
    }

    public function storeCar(Request $request){
   
        //Get the data entered in the form
        $title = $request->input('title');
        $price = $request->input('price');
        $description = $request->input('description');
        $published = $request->has('remember');

        //Flash the data to the session
        return redirect()->route('receivedcar')->with(['title'=>$title, 'price'=>$price, 'description'=>$description, 'published'=>$published]);
     }

   public function showReceivedCar(){

        //Retrieve the flashed data from the session
        $title = session('title');
        $price = session('price');
        $description = session('description');
        $published = session('published');

        //Display the data
        return view('receivedcar', compact('title', 'price', 'description', 'published'));
    } 
}
