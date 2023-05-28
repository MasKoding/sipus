<?php

use App\Http\Controllers\BookController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\OrderController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('order/getOrderId',[OrderController::class,'getOrderId'])->name('order.getOrderId');
Route::get('customer/getCustomerById',[CustomerController::class,'getCustomerById'])->name('customer.getCustomerById');
Route::get('book/getPriceById', [BookController::class,'getPriceById'])->name('book.getPriceById');
     
