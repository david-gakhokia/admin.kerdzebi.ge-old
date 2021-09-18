<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
// use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\AProductController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\SearchController;
// use App\Http\Controllers\PostGuzzleController;


// Frontend Routes
Route::get('/', [HomeController::class, 'home']);
Route::get('/search', [SearchController::class, 'search'])->name('search');
Route::get('/home', [HomeController::class, 'index']);
Route::get('/table_id/{id}', [HomeController::class, 'QrId']);
Route::get('/language/{lan}', [HomeController::class, 'language']);
Route::get('/products/{id}', [ProductController::class, 'index']);
Route::post('/order', [OrderController::class, 'create']);
Route::get('/orders', [OrderController::class, 'FrontOrder']);
Route::get('/order/destroy/{id}', [OrderController::class, 'destroy']);
Route::get('/order/clearCart', [OrderController::class, 'clearCart']);


// Route::get('/admin/dashboard', [HomeController::class, 'index'])->name('dashboard');


// Admin Routes
Auth::routes();

Route::group(['prefix' => 'admin','middleware' => ['auth']], function() {

    Route::resource('dashboard', DashboardController::class);


    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);

    Route::get('setting',[SettingController::class,'index']);
    Route::post('setting',[SettingController::class,'save_settings']);


//კატეგორიები
    Route::get('categories', [CategoryController::class, 'index'])->name('categories');
    Route::post('category/create', [CategoryController::class, 'store'])->name('store.category');
    Route::get('category/{id}', [CategoryController::class, 'show']);
    Route::get('category/edit/{id}', [CategoryController::class, 'edit']);
    Route::post('category/update/{id}', [CategoryController::class, 'update']);
    Route::get('category/destroy/{id}', [CategoryController::class, 'destroy']);

//პროდუქტი
    Route::get('products', [AProductController::class, 'index'])->name('products');
    Route::get('product/create', [AProductController::class, 'create'])->name('product.create');
    Route::post('product/create', [AProductController::class, 'store'])->name('store.product');
    Route::get('product/{id}', [AProductController::class, 'show']);
    Route::get('product/edit/{id}', [AProductController::class, 'edit']);
    Route::post('product/update/{id}', [AProductController::class, 'update']);
    Route::get('product/destroy/{id}', [AProductController::class, 'destroy']);

});

