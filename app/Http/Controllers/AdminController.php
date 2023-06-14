<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Customer;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    //
    public function index(){
        $totalCustomer = Customer::all()->count();
        $totalBook = Book::all()->count();
        $totalOrder = Order::all()->count();


        // untuk ambil banyak data customer yang order
        $customerOrder =  DB::table('order')
        ->join('customer','order.customer_id','=','customer.customer_id')
        ->join('book','order.book_id','=','book.book_id')
        ->groupBy('order.customer_id')
        ->orderByRaw('count(*) asc')
        ->value('customer.fullname');

        //Untuk ambil judul buku yang di beli
        $bookOrder =  DB::table('order')
        ->join('customer','order.customer_id','=','customer.customer_id')
        ->join('book','order.book_id','=','book.book_id')
        ->groupBy('order.book_id')
        ->orderByRaw('count(*) asc')
        ->value('book.title');

       
        
        return view('dashboard',compact('totalCustomer','totalBook','totalOrder','customerOrder','bookOrder'));
     }
}
