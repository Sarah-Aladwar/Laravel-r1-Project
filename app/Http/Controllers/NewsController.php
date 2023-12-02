<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\News;

class NewsController extends Controller
{
    private $columns = ['title', 'author', 'content', 'published'];


    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $news = News::get();
        return view('news', compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('newsform');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        $request->validate(['title' => 'required|string', 'author' => 'required|string', 'content' => 'required|string|max:100']);

        $data = $request->only($this->columns);
        $data['published'] = isset($data['published']) ? true : false;
        News::create($data);

        return redirect('news');

       /* $news = new News;
        $news->title = $request->title;
        $news->author = $request->author;
        $news->content = $request->content;
        if(isset($request->published)){
            $news->published = true;
        }else{
            $news->published = false;
        }
        $news->save();
        return "News data added sucessfully"; */
        
    } 

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $news = News::findOrFail($id);
        return view('newsdetail', compact('news'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $news = News::findOrFail($id);
        return view('updatenews', compact('news'));
        
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id): RedirectResponse
    {
        $data = $request->only($this->columns);
        $data['published'] = isset($data['published']) ? true : false;
        News::where('id', $id)->update($data);
        return redirect('news');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id): RedirectResponse
    {
        News::where('id', $id)->delete();
        //return "Deleted sucessfully";
        return redirect('news');
    }

    public function trashed(){
        $news = News::onlyTrashed()->get();
        return view('trashednews', compact('news'));
    }

    public function restore(string $id): RedirectResponse
    {
        News::where('id', $id)->restore();
        return redirect('news');
    }

    public function fdnews(string $id): RedirectResponse
    {
        News::where('id', $id)->forceDelete();
        return redirect('trashednews');
    }




} 
 