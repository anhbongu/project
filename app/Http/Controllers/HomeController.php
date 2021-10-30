<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Category;
use App\Models\Product;
class HomeController extends MainController
{
    public function __construct(){
        parent::__construct();
    }


    public function home(){
        $slider         = Slider::get();
        $product        = Product::limit(6)->orderby('id', 'desc')->get();
       
        $phone          = Category::where('parent_id', 31)->get();
        $productView    = Product::orderby('view', 'desc')->limit(9)->get();
        return view('user.index', [
            'slider'=>$slider,
            'product'=>$product,
            'phone'=>$phone,
            'productView'=>$productView,
            
        ]);
    }
}
