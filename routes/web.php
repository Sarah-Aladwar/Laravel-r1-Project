<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Examplec;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('test', function(){
    return 'Welcome to my first route';
});

Route::prefix('product')->group(function(){
    
    Route::get('/',function(){
        return 'Products home page';
    });

    Route::get('TV', function(){
        return 'TV home page';
    });
    Route::get('laptop', function(){
        return 'Laptop home page';
    });
});

Route::get('user/{name}/{age?}', function($name, $age = 0){
    $txt = 'The username is: ' . $name;
    if($age > 0)  $txt .=  '<br>' . 'The age is: ' . $age;
    return $txt;
})->whereIn('name',['Sara','Ahmed','Tony']); //case sensitive

//->where(['name'=>'[a-zA-Z0-9]+', 'age'=>'[0-9]+']);

//->whereNumber('age')->whereAlpha('name');

Route::get('about', function(){
    return 'About Home Page';
});

Route::get('contactus', function(){
    return 'Contact Us Home Page';
});

Route::prefix('support')->group(function(){

    Route::get('/', function(){
        return 'Support Main Page';
    });

    Route::get('chat', function(){
        return 'Chat Page';
    });

    Route::get('callchat', function(){
        return 'Call Chat Page';
    });

    Route::get('ticket', function(){
        return 'Ticket Page';
    });
});

Route::prefix('training')->group(function(){

    Route::get('/', function(){
        return 'Training Main Page';
    });

    Route::get('hr', function(){
        return 'HR Page';
    });

    Route::get('ict', function(){
        return 'ICT Page';
    });

    Route::get('marketing', function(){
        return 'Marketing Page';
    });

    Route::get('logistics', function(){
        return 'Logistics Page';
    });
});

/*Route::fallback(function(){
    return redirect('/');
});*/
  
Route::get('cv', function(){
    return view('cv');
});

Route::get('loginpage', function(){
    return view('login');
});

Route::post('receive', function(){
    return 'Data received';
})->name('received');

Route::get('testpage',[Examplec::class, 'test1']);