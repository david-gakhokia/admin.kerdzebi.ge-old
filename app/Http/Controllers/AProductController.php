<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\Exports\ProductsExport;
use App\Imports\ProductsImport;


// use App\Exports\ProductsExport;


use Image;
use Auth;

class AProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
        $products = Product::all();

        return view('backend.products.index', compact('products'));
    }

    public function import()
    {
        $products = Product::all();
        return view('backend.products.import',compact('products'));
    }
    public function export()
    {
        $products = Product::all();
        return view('backend.products.export',compact('products'));
    }


    public function create()
    {
        $categories = Category::get()->all();

        return view('backend.products.create', compact('categories'));
    }


    public function store(Request $request)
    {
        $validateData = $request->validate(
            [
                'status' => 'required',
                'name' => 'required|unique:products|min:2',
                // 'image' => 'mimes:jpg,jpeg,png',
                'category_id' => '',
                'price' => 'required',
            ],
            [
                'status.required' => 'Please Input Status',
                'title.required' => 'Please Input title',
                'image' => '',
            ]
        );

        $image = $request->file('image');

        if ($image) {
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)->save('backend/images/products/' . $name_gen);
            $last_img = 'backend/images/products/' . $name_gen;

            Product::insert([
                'status' => $request->status,
                'name' => $request->name,
                'image' => $last_img,
                'category_id' => $request->category_id,
                'price' => $request->price,
                'description' => $request->description,
                'created_at' => Carbon::now()
            ]);
        } else {


            Product::insert([
                'status' => $request->status,
                'name' => $request->name,
                'image' => '',
                'category_id' => $request->category_id,
                'price' => $request->price,
                'description' => $request->description,
                'created_at' => Carbon::now()
            ]);
        }

        return Redirect()->route('products')->with('success', 'პროდუქტი დაემატა');
    }

    public function show($id)
    {
        return view('backend.items.show', ['item' => Item::findOrFail($id)]);
    }


    public function edit($id)
    {
        $products = Product::find($id);
        $categories = Category::get()->all();

        return view('backend.products.edit', compact('products', 'categories'));
    }


    public function update(Request $request, $id)
    {
        $validateData = $request->validate(
            [
                'status' => 'required',
                'name' => 'required|min:2',
                'category_id' => 'required',
                'price' => 'required',
            ],
            [
                'name.required' => 'Name',
                'image' => 'image',
                'price' => 'price ',

            ]
        );

        $old_image = $request->old_image;

        $image = $request->file('image');

        if ($image) {

            $name_gen = hexdec(uniqid());
            $img_ext = strtolower($image->getClientOriginalExtension());
            $img_name = $name_gen . '.' . $img_ext;
            $up_location = 'backend/images/products/';
            $last_img = $up_location . $img_name;
            $image->move($up_location, $img_name);
            if (file_exists($old_image)) unlink($old_image);

            Product::find($id)->update([
                'status' => $request->status,
                'name' => $request->name,
                'image' => $last_img,
                'category_id' => $request->category_id,
                'price' => $request->price,
                'description' => $request->description ? $request->description : "",
                'created_at' => Carbon::now()
            ]);

            return Redirect()->route('products')->with('success', 'პროდუქტი განახლდა');
        } else {
            Product::find($id)->update([
                'status' => $request->status,
                'name' => $request->name,
                'category_id' => $request->category_id,
                'price' => $request->price,
                'description' => $request->description ? $request->description : "",
                'created_at' => Carbon::now()
            ]);

            return Redirect()->route('products')->with('success', 'პროდუქტი განახლდა');
        }
    }

    public function destroy($id)
    {

        Product::find($id)->delete();

        return redirect()->back()->with('success', 'პროდუქტი წაიშალა !');
    }

    public function exportExcel($type)
    {
        return Excel::download(new ProductsExport, 'products.'.$type);
    }

    public function importExcel(Request $request)
    {
        \Excel::import(new ProductsImport,$request->import_file);

        Session::put('success', 'პროდუქცია წარმატებით აიტვირთა.');

        return back();
    }

}
