<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\UserController;
use App\Models\User;
use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',function (){
    return redirect()->route('login');
 });

Route::get('login', [AuthController::class,'index'])->name('login');
Route::get('register', [AuthController::class,'register'])->name('register');
Route::post('proses_login', [AuthController::class,'proses_login'])->name('proses_login');
Route::post('logout', [AuthController::class,'logout'])->name('logout');

Route::post('proses_register',[AuthController::class,'proses_register'])->name('proses_register');

// Route::group(['middleware' => ['auth']], function () {
//     Route::group(['prefix'=>'admin','middleware' => ['cek_login:admin']], function () {
//          Route::get('/', [AdminController::class,'index']);
//       // customer
//       Route::resource('customer',CustomerController::class); 
//       Route::get('/customer/getCustomerById',[CustomerController::class,'getCustomerById'])->name('customer.getCustomerById');
     
//         // book
//         Route::resource('book',BookController::class);
//         Route::get('book/getPriceById', [BookController::class,'getPriceById'])->name('book.getPriceById');
        
        
//         // order
//       Route::resource('order',OrderController::class);
//         Route::get('/order/getOrderId',[OrderController::class,'getOrderId'])->name('order.getOrderId');
       

//     });
//     Route::group(['middleware' => ['cek_login:user']], function () {
//         Route::resource('user', UserController::class);
//     });
// });

Route::group(['prefix'=>'admin','middleware' => ['auth']], function () {
    Route::get('/', [AdminController::class,'index']);
 // customer
 Route::resource('customer',CustomerController::class); 
 
   // book
   Route::resource('book',BookController::class);
   
   
   // order
 Route::resource('order',OrderController::class);
   

});

// Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

