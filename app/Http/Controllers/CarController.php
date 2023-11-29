<?php
//This code is to save the data entered in the form into the data base
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car;

class CarController extends Controller
{
    private $columns = ['cartitle', 'price', 'description', 'published'];

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cars = Car::get();
        return view('cars', compact('cars'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('Addcarform');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //static entry of data into data base
   /*   $cars = new Car;
        $cars->cartitle = "BMW";
        $cars->description = "My description is here";
        $cars->published = true;
        $cars->save(); //saves the data into the data base
        return "Car data added sucessfully"; */

        //dynamic entry of data from form into data base
        //insertion into data base method 1:
       /* $cars = new Car;
        $cars->cartitle = $request->title;
        $cars->description = $request->description;
        $cars->price = $request->price;
        if(isset($request->published)){
            $cars->published = true;
        }else{
            $cars->published = false;
        }
        $cars->save();
        return "Car data added sucessfully";  */


        //insertion into data base method 2:
        $data = $request->only($this->columns);

        $data['published'] = isset($data['published']) ? true : false;
        //$data['published'] = $request->has('published') ? true : false;
        //$data['published'] = $request->filled('published');
       
        Car::create($data);
        return redirect('cars');

    }         

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $car = Car::findOrFail($id);
        return view('cardetail', compact('car'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //return 'The car id is ' . $id;
        //return view('editcar', compact('id'));
        $car = Car::findOrFail($id);
        return view('updatecar', compact('car'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
       //Car::where('id', $id)->update($request->only($this->columns));

       $data = $request->only($this->columns);
       $data['published'] = isset($data['published']) ? true : false;
       Car::where('id', $id)->update($data);

       //return "updated successfully";
       return redirect('cars');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Car::where('id', $id)->delete();
        return "Deleted sucessfully";
    }
}
 