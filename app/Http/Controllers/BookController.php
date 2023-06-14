<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
  /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //

         $book= DB::table('book')
                    ->join('order','order.book_id','=','book.book_id')
                     ->selectRaw('book.*,sum(order.quantity) as jumlahorder')
                     ->groupBy('order.book_id')
                     ->paginate(5);

        return view('book_list',compact('book'))
        ->with('i',(request()->input('page',1)-1)*5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('book_add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        try {
            $imageName =  $request->image->getClientOriginalName();
            $request->image->move(public_path('images'),$imageName);

            Book::create([
                'title'=>$request->title,
                'isbn13'=>$request->isbn13,
                'num_pages'=>$request->num_pages,
                'image'=>$imageName,
                'author'=>$request->author,
                'stock'=>$request->stock,
                'price'=>$request->price,

            ]);

            return redirect()->route('book.index')->with('success','Successfully to create new book');
        } catch (\Throwable $th) {
            //throw $th;
            return redirect()->route('book.index')->with('error',$th->getMessage());
        }
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
    public function edit($id)
    {
        //
        $book =  Book::where('book_id',$id)->firstOrFail();

        if($book){

            return view('book_edit',compact('book'));
        }else{
            return redirect()->route('book.index')->with('error','book not found');
        }

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {

      
        if(!$request->image){
            Book::where('book_id',$id)->update([
                'title'=> $request->title,
                'isbn13'=> $request->isbn13,
                'num_pages'=> $request->num_pages,
                'author'=> $request->author,
                'stock'=> $request->stock,
                'price'=> $request->price,
    
            ]);
        }else{
            $imageName =  $request->image->getClientOriginalName();
            $request->image->move(public_path('images'),$imageName);
    
            Book::where('book_id',$id)->update([
                'title'=> $request->title,
                'isbn13'=> $request->isbn13,
                'image'=> $imageName,
                'num_pages'=> $request->num_pages,
                'author'=> $request->author,
                'stock'=> $request->stock,
                'price'=> $request->price
    
            ]);
        }
        //
       
      


        return redirect()->route('book.index')->with('success','Successfully update data');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //
        Book::where('book_id',$id)->delete();

        return redirect()->route('book.index')->with('success','Successfully delete data');
    }

    public function getPriceById(Request $request){
        $book =  Book::where('book_id',$request->id)->firstOrFail();

        return response()->json([
            'book'=>$book
        ]);
     }
}

