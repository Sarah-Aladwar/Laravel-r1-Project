<?php
//This code is for Task 3 where we wanted to display the data entered in the form into another web page

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CarformController extends Controller
{
    public function showForm(){
        return view('Addcarform');
    }
    
    //method 1:
    public function displayCar(Request $request){

        if(isset($request->remember)){
            $published = "published";
        }else{
            $published = "not published";
        }
        $msg = "The title is " . $request->cartitle . " and the price is " . $request->price . "<br>" . "The description is " . $request->description . "<br>" . "The car is " . $published;
        return $msg;
    }                   //until this line, this would have been sufficient to display the data entered in the form

    //method 2:
  /*  public function storeCar(Request $request){
   
        //Get the data entered in the form
        $cartitle = $request->input('cartitle');
        $price = $request->input('price');
        $description = $request->input('description');
        $published = $request->has('remember');

        //Flash the data to the session
        return redirect()->route('receivedcar')->with(['cartitle'=>$cartitle, 'price'=>$price, 'description'=>$description, 'published'=>$published]);
     }

   public function showReceivedCar(){

        //Retrieve the flashed data from the session
        $cartitle = session('cartitle');
        $price = session('price');
        $description = session('description');
        $published = session('published');

        //Display the data
        return view('receivedcar', compact('cartitle', 'price', 'description', 'published'));
    } */
}
