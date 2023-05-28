<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Customer;
use App\Models\Order;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    //
    public function dashboard(){
        $totalCustomer = Customer::all()->count();
        $totalBook = Book::all()->count();
        $totalOrder = Order::all()->count();

        return view('dashboard',compact('totalCustomer','totalBook','totalOrder'));
     }
}
