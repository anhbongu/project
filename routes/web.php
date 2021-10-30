<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\AdminMenuController;
use App\Http\Controllers\AdminSliderController;
use App\Http\Controllers\AdminProductController;
use App\Http\Controllers\AdminSettingController;
use App\Http\Controllers\AdminUserController;
use App\Http\Controllers\AdminRoleController;
use App\Http\Controllers\AdminPermissionController;
use App\Http\Controllers\AdminCartController;


use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderControler;


use App\Http\Controllers\Auth\LoginController;
use App\Models\Product;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function() {
    Route::get('/',                 [AdminController::class, 'index'])->name('admin.home');
    Route::get('/login',            [LoginController::class, 'getLogin'])->name('admin.login');
    Route::post('/login',           [LoginController::class, 'postLogin'])->name('admin.postlogin');


    //user
    Route::group(['prefix'=>'user'], function(){
        Route::get('',              [AdminUserController::class, 'index'])->name('admin.user')->middleware('can:list-user');
        Route::get('/create',       [AdminUserController::class, 'create'])->name('admin.user.create')->middleware('can:add-user');      
        Route::post('/store',       [AdminUserController::class, 'store']);    

        Route::get('/edit/{id}',    [AdminUserController::class, 'edit'])->name('admin.user.edit')->middleware('can:edit-user');    
        Route::post('/update/{id}', [AdminUserController::class, 'update'])->name('admin.user.update');  
        Route::get('/delete/{id}',  [AdminUserController::class, 'delete'])->name('admin.user.delete')->middleware('can:delete-user');
    });

    //category
    Route::group(['prefix' => 'category'], function() {
        Route::get('/',             [AdminCategoryController::class, 'index'])->name('admin.category')->middleware('can:list-category');
        Route::get('/create',       [AdminCategoryController::class, 'create'])->name('admin.category.create')->middleware('can:add-category');        
        Route::post('/store',       [AdminCategoryController::class, 'store']);    

        Route::get('/edit/{id}',    [AdminCategoryController::class, 'edit'])->name('admin.category.edit')->middleware('can:edit-category'); 
        Route::post('/update/{id}', [AdminCategoryController::class, 'update'])->name('admin.category.update');  
        Route::get('/delete/{id}',  [AdminCategoryController::class, 'delete'])->name('admin.category.delete')->middleware('can:delete-category'); 
    });

    //menu
    Route::group(['prefix' => 'menu'], function() {
        Route::get('/',             [AdminMenuController::class, 'index'])->name('admin.menu')->middleware('can:list-menu');
        Route::get('/create',       [AdminMenuController::class, 'create'])->name('admin.menu.create')->middleware('can:add-menu');     
        Route::post('/store',       [AdminMenuController::class, 'store']);    

        Route::get('/edit/{id}',    [AdminMenuController::class, 'edit'])->name('admin.menu.edit')->middleware('can:edit-menu');    
        Route::post('/update/{id}', [AdminMenuController::class, 'update'])->name('admin.menu.update');  
        Route::get('/delete/{id}',  [AdminMenuController::class, 'delete'])->name('admin.menu.delete')->middleware('can:delete-menu'); 
    });
    //product
    Route::group(['prefix' => 'product'], function() {
        Route::get('/',             [AdminProductController::class, 'index'])->name('admin.product')->middleware('can:list-product');
        Route::get('/create',       [AdminProductController::class, 'create'])->name('admin.product.create')->middleware('can:add-product');        
        Route::post('/store',       [AdminProductController::class, 'store']);    

        Route::get('/edit/{id}',    [AdminProductController::class, 'edit'])->name('admin.product.edit')->middleware('can:edit-product', 'can:check-edit, id');    
        Route::post('/update/{id}', [AdminProductController::class, 'update'])->name('admin.product.update');  
        Route::get('/delete/{id}',  [AdminProductController::class, 'delete'])->name('admin.product.delete')->middleware('can:delete-product');   
    });

    //slider
    Route::group(['prefix' => 'slider'], function() {
        Route::get('/',             [AdminSliderController::class, 'index'])->name('admin.slider')->middleware('can:list-slider');
        Route::get('/create',       [AdminSliderController::class, 'create'])->name('admin.slider.create')->middleware('can:add-slider');        
        Route::post('/store',       [AdminSliderController::class, 'store']);    

        Route::get('/edit/{id}',    [AdminSliderController::class, 'edit'])->name('admin.slider.edit')->middleware('can:edit-slider');    
        Route::post('/update/{id}', [AdminSliderController::class, 'update'])->name('admin.slider.update');  
        Route::get('/delete/{id}',  [AdminSliderController::class, 'delete'])->name('admin.slider.delete')->middleware('can:delete-slider');  
    });
    //setting
    Route::group(['prefix' => 'setting'], function() {
        Route::get('/',             [AdminSettingController::class, 'index'])->name('admin.setting')->middleware('can:list-setting');
        Route::get('/create',       [AdminSettingController::class, 'create'])->name('admin.setting.create')->middleware('can:add-setting');       
        Route::post('/store',       [AdminSettingController::class, 'store']);    

        Route::get('/edit/{id}',    [AdminSettingController::class, 'edit'])->name('admin.setting.edit')->middleware('can:edit-setting');    
        Route::post('/update/{id}', [AdminSettingController::class, 'update'])->name('admin.setting.update');  
        Route::get('/delete/{id}',  [AdminSettingController::class, 'delete'])->name('admin.setting.delete')->middleware('can:delete-setting');   
    });
    //role
    Route::group(['prefix' => 'role'], function() {
        Route::get('/',             [AdminRoleController::class, 'index'])->name('admin.role')->middleware('can:list-role');
        Route::get('/create',       [AdminRoleController::class, 'create'])->name('admin.role.create')->middleware('can:add-role');       
        Route::post('/store',       [AdminRoleController::class, 'store']);    

        Route::get('/edit/{id}',    [AdminRoleController::class, 'edit'])->name('admin.role.edit')->middleware('can:edit-role');    
        Route::post('/update/{id}', [AdminRoleController::class, 'update'])->name('admin.role.update');  
        Route::get('/delete/{id}',  [AdminRoleController::class, 'delete'])->name('admin.role.delete')->middleware('can:delete-role');   
    });
    //permission
    Route::group(['prefix' => 'permission'], function() {
        // Route::get('/',             [AdminPermissionController::class, 'index'])->name('admin.permission');
        Route::get('/create',       [AdminPermissionController::class, 'create'])->name('admin.permission.create')->middleware('can:add-permission');       
        Route::post('/store',       [AdminPermissionController::class, 'store']);    

        Route::get('/edit/{id}',    [AdminPermissionController::class, 'edit'])->name('admin.permission.edit');    
        Route::post('/update/{id}', [AdminPermissionController::class, 'update'])->name('admin.permission.update');  
        Route::get('/delete/{id}',  [AdminPermissionController::class, 'delete'])->name('admin.permission.delete');   
    });

    //cart
    Route::group(['prefix' => 'cart'], function() {
        Route::get('/',                             [AdminCartController::class, 'index'])->name('admin.cart');
        Route::get('/changstatus/{id}/{status}',    [AdminCartController::class, 'changstatus'])->name('admin.changstatus');
              
        Route::get('/delete/{id}',                  [AdminCartController::class, 'delete'])->name('admin.cart.delete');   
    });    



});

Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('{slug}-{id}',               [CategoryController::class, 'index'])->name('get-list-product');
Route::get('{cate_slug}/{slug}-{id}',   [ProductController::class, 'details'])->name('product-details');

Route::get('loadproduct/{id}',          [CategoryController::class, 'loadProduct'])->name('load.product');


//order
Route::get('order/{id}/{price}',        [OrderControler::class, 'order'])->name('order');
Route::get('cart',                      [OrderControler::class, 'cart'])->name('cart');
Route::get('buy',                       [OrderControler::class, 'buy'])->name('buy');
Route::get('delete-cart/{id}',          [OrderControler::class, 'deleteCart'])->name('delete-cart');