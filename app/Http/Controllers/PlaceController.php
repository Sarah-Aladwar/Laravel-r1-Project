<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Place;
use App\Traits\Common;



class PlaceController extends Controller
{
    use Common;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $places = Place::get();
        return view('placelist', compact('places'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('addplaceform');
    }

    //custom error messages
    public function messages(){
        return ['title.required' => 'Title is required',
        'description.required' => 'Description is required'
      ];
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $messages = $this->messages();

        //form data validation
        $data = $request->validate([
            'title' => 'required|string',
            'price_from' => 'required|decimal:0,2',
            'price_to' => 'required|decimal:0,2',
            'description' => 'required|string|max:100',
            'image' => 'required|mimes:png,jpg,jpeg|max:2048'
        ], $messages);

        $filename = $this->uploadfile($request->image, 'assets/images');

        $data['image'] = $filename;

        $data['published'] = isset($request['published']);
        
        Place::create($data);
        return redirect('placelist');
        
    }

    //display places from data base into explore places section in listrace web page
    public function exploreplaces()
    {
        $places = Place::latest()->take(6)->get(); //fetch places from the database, only the latest 6
        return view('listrace', compact('places'));
    }  

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $place = Place::findOrFail($id);
        return view('updateplaces', compact('place'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //custom error messages
       $messages = $this->messages();

       //form data validation
       $data = $request->validate([
       'title' => 'required|string',
       'price_from' => 'required|decimal:0,2',
       'price_to' => 'required|decimal:0,2',
       'description' => 'required|string',
       'image' => 'sometimes|required|mimes:png,jpg,jpeg|max:2048'
       ], $messages); 

       //update image if new file is selected
       if($request->hasFile('image')){
        $filename = $this->uploadfile($request->image, 'assets/images');
        $data['image'] = $filename;
       }

       $data['published'] = isset($request['published']);

       Place::where('id', $id)->update($data);
       return redirect('placelist');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
