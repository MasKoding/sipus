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

Route::group(['middleware' => ['auth']], function () {
    Route::group(['prefix'=>'admin','middleware' => ['cek_login:admin']], function () {
         Route::get('/', [AdminController::class,'index']);
      // customer
        Route::get('/customer', [CustomerController::class,'index'])->name('customer.index');
        Route::get('/customer/add', [CustomerController::class,'create'])->name('customer.create');
        Route::post('/customer/store', [CustomerController::class,'store'])->name('customer.store');
        Route::get('/customer/edit/{id}', [CustomerController::class,'edit'])->name('customer.edit');
        Route::put('/customer/update/{id}', [CustomerController::class,'update'])->name('customer.update');
        Route::delete('/customer/delete/{id}',[CustomerController::class,'delete'])->name('customer.delete');
        Route::get('/customer/getCustomerById',[CustomerController::class,'getCustomerById'])->name('customer.getCustomerById');
     
        // book
        Route::get('/book', [BookController::class,'index'])->name('book.index');
        Route::get('/book/add', [BookController::class,'create'])->name('book.create');
        Route::post('/book/store', [BookController::class,'store'])->name('book.store');
        Route::get('/book/edit/{id}', [BookController::class,'edit'])->name('book.edit');
        Route::put('/book/update/{id}', [BookController::class,'update'])->name('book.update');
        Route::delete('/book/delete/{id}',[BookController::class,'delete'])->name('book.delete');
        Route::get('/book/getPriceById', [BookController::class,'getPriceById'])->name('book.getPriceById');
        
        
        // order
        Route::get('/order', [OrderController::class,'index'])->name('order.index');
        Route::get('/order/add', [OrderController::class,'create'])->name('order.create');
        Route::post('/order/store', [OrderController::class,'store'])->name('order.store');
        Route::get('/order/edit/{id}', [OrderController::class,'edit'])->name('order.edit');
        Route::put('/order/update/{id}', [OrderController::class,'update'])->name('order.update');
        Route::delete('/order/delete/{id}',[OrderController::class,'delete'])->name('order.delete');
        Route::get('/order/getOrderId',[OrderController::class,'getOrderId'])->name('order.getOrderId');
       

    });
    Route::group(['middleware' => ['cek_login:user']], function () {
        Route::resource('user', UserController::class);
    });
});

// Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

