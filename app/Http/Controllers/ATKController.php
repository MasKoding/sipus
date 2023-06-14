<?php

namespace App\Http\Controllers;

use App\Models\Atk;
use Illuminate\Http\Request;

class ATKController extends Controller
{
    public function index()
    {
        //
        $atk =  Atk::orderBy('product_stock','desc')
                ->paginate(5);

        return view('atk_list',compact('atk'))
        ->with('i',(request()->input('page',1)-1)*5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('atk_add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        try {
            $imageName =  $request->product_image->getClientOriginalName();
            $request->product_image->move(public_path('images'),$imageName);
            Atk::create([
                'product_name'=>$request->product_name,
                'product_price'=>$request->product_price,
                'product_image'=>$imageName,
                'product_stock'=>$request->product_stock
            ]);

            return redirect()->route('atk.index')->with('success','Successfully to create new atk');
        } catch (\Throwable $th) {
            //throw $th;
            return redirect()->route('atk.index')->with('error',$th->getMessage());
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
        $atk =  Atk::findOrFail($id);

        if($atk){

            return view('atk_edit',compact('atk'));
        }else{
            return redirect()->route('atk.index')->with('error','Atk not found');
        }

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        //
        $imageName =  $request->image->getClientOriginalName();
        $request->image->move(public_path('images'),$imageName);
        Atk::findOrFail($id)->update([
            'product_name'=> $request->product_name,
            'product_price'=> $request->product_price,
            'product_image'=> $request->product_image,
            'product_stock'=> $request->product_stock

        ]);
      


        return redirect()->route('atk.index')->with('success','Successfully update data');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //
        Atk::where('id',$id)->delete();

        return redirect()->route('atk.index')->with('success','Successfully delete data');
    }
}
