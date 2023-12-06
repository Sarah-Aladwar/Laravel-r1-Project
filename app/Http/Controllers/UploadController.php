<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Traits\Common;

class UploadController extends Controller
{
    use Common;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function showupload()
    {
        return view('upload');
    }

    public function upload(Request $request)
    {
        $filename = $this->uploadfile($request->image, 'assets/images');
        return $filename;
     /*   $file_extension = $request->image->getClientOriginalExtension(); //gets the file extension
        $file_name = time() . '.' . $file_extension; //names the image file
        $path = 'assets/images'; //gives the path of the image
        $request->image->move($path, $file_name);//saves the image in the path
        return 'Uploaded';

        //return dd($request->image); */
    } 

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
