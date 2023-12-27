<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Examplec;
use App\Http\Controllers\CarformController;
use App\Http\Controllers\CarController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\PlaceController;
use App\Http\Controllers\ContactController;




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

//Examplec

Route::get('testpage',[Examplec::class, 'test1']);

//Route::get('showplace',[Examplec::class, 'showplace']);

Route::get('blog',[Examplec::class, 'showblog']);

//session
Route::get('session',[Examplec::class, 'mysession']);



//Carformcontroller: displaying car data entered in a form into another page, method 1:
/*Route::controller(CarformController::class)->group(function(){
    Route::get('addcarform', 'showForm');
    Route::post('car', 'displaycar')->name('display');
}); */

//Carformcontroller: displaying car data entered in a form into another page, method 2:
/*Route::controller(CarformController::class)->group(function(){
    Route::get('addcarform', 'showForm');
    Route::post('car', 'storeCar')->name('display');
    Route::get('receivedcar', 'showReceivedCar')->name('receivedcar');
});  */


//CarController:

//static entry of car data into data base
//Route::get('addcar',[CarController::class, 'store']);

//dynamic entry of car data from form into data base, method 1,2:
Route::controller(CarController::class)->group(function(){
    Route::get('addcarform', 'create');
    Route::post('addcar', 'store')->name('displaycar');
});    

//displaying car data from data base into a table on a web page  
Route::get('cars', [CarController::class, 'index'])->middleware('verified');

//edit car data
Route::get('editcar/{id}', [CarController::class, 'edit']);

//update car data into data base
Route::put('updatecar/{id}', [CarController::class, 'update'])->name('update');

//Show car details
Route::get('cardetail/{id}', [CarController::class, 'show']);

//(soft) Delete car data 
Route::get('deletecar/{id}', [CarController::class, 'destroy']);

//Trashed car data
Route::get('trashed', [CarController::class, 'trashed']);

//Restore trashed car data
Route::get('restorecar/{id}', [CarController::class, 'restore']);

//Completely Delete car data
Route::get('forcedelete/{id}', [CarController::class, 'finaldelete']);




//UploadController:

//Show upload image form
Route::get('showupload',[UploadController::class, 'showupload']);

//Upload image
Route::post('upload',[UploadController::class, 'upload'])->name('upload');



//NewsController:

//dynamic entry of news data from form into data base
Route::controller(NewsController::class)->group(function(){
    Route::get('newsform', 'create');
    Route::post('addnews', 'store')->name('displaynews');
});

//displaying news data from data base into a table on a web page 
Route::get('news', [NewsController::class, 'index']);

//edit news data form
Route::get('editnews/{id}', [NewsController::class, 'edit']);

//update news data into data base
Route::put('updatenews/{id}', [NewsController::class, 'update'])->name('updatenews');

//Show news details
Route::get('newsdetail/{id}', [NewsController::class, 'show']);

//(soft) Delete news data
Route::get('deletenews/{id}', [NewsController::class, 'destroy']);

//Trashed news data
Route::get('trashednews', [NewsController::class, 'trashed']);

//Restore trashed news data
Route::get('restorenews/{id}', [NewsController::class, 'restore']);

//Completely Delete news data
Route::get('forcedeletenews/{id}', [NewsController::class, 'fdnews']);



//PlaceController:
Route::controller(PlaceController::class)->group(function(){
    Route::get('addplaceform', 'create');
    Route::post('addplace', 'store')->name('displayplace');
    Route::get('placelist', 'index');
    Route::get('listrace', 'exploreplaces');

    Route::get('deleteplace/{id}','destroy');
    Route::get('trashedplaces','trashed');
    Route::get('restoreplace/{id}','restore');
    Route::get('forcedeleteplace/{id}','fd');

    Route::get('editplace/{id}', 'edit');
    Route::put('updateplaces/{id}', 'update')->name('updateplaces');


}); 


//Authentication
Auth::routes(['verify'=>true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');



//ContactController:
//Route::get('contact', [ContactController::class, 'index']);

//Route::post('submit', [ContactController::class, 'submitForm'])->name('submit');

//Multilanguage routing for contact
Route::group([
      'prefix' => LaravelLocalization::setLocale(),
      'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
    ], function(){ //routes
      Route::get('contact', [ContactController::class, 'index']);
      Route::post('submit', [ContactController::class, 'submitForm'])->name('submit');
});
