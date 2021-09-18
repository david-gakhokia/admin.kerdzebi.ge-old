<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\Models\Category;
use App\Models\Product;
use App\Models\Setting;



class HomeController extends Controller
{

    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index2()
    {
        $posts = Post::withTranslation()
            ->translatedIn(app()->getLocale())
            ->latest()
            ->whereNotNull('title_' . $locale)
            ->where('title_' . $locale, '!=', '')
            ->take(10)
            ->get();
    }



    public function home()
    {
        $setting=Setting::first();
        return view('frontend.pages.index',['setting'=>$setting]);
    }



    public function QrId($id, Request $request)
    {
        $request->session()->put('tableId', $id);
        return redirect('/home');
    }

    public function index()
    {
        $products = Product::get();
        $categories = Category::with('children')->whereNull('parent_id')->orderBy('orderNum')->get();

        return view('frontend.pages.home', compact('products'))->with(['categories'  => $categories]);
    }
    public function language($lan)
    {
        Session::put('whlanguage', $lan);
        return redirect('/home');
    }




    // public function index()
    // {
    //     return view('backend.home');
    // }
}
