<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use DB;


class CategoryController extends MainController
{
    private $product;

    
    public function __construct(Product $product){
        parent::__construct();
        $this->product = $product;
    }


    public function index(Request $request, $id){
        $url            = $request->segment(1);
        $arrUrl         = explode('-', $url);
        $id             = array_pop($arrUrl);
        $listProduct    = $this->product->where('category_id', $id)->limit(3)->get();
        $cateName       = DB::table('categories')->where('id', $id)->select('name')->first();
       
        return view('user.category.index', [
            'listProduct'   =>$listProduct, 
            'cateName'      =>$cateName
        ]);
    }

    public function loadProduct(Request $request){
        if($request->ajax()){
            $position = $request->position;
            $urlCurent = $request->urlCurent;

            $arrUrl         = explode('-', $urlCurent);
            $id             = array_pop($arrUrl);           

            $listProduct    = $this->product->where('category_id', $id)->skip($position)->take(3)->get();
            $cateName       = DB::table('categories')->where('id', $id)->select('name')->first();


            $html = view('user.components.listproduct', [
                'listProduct'   =>$listProduct,
                'cateName'      =>$cateName
            ])->render();

            return response()->json([
                'code'=>200,
                'html'=>$html
            ]);                



        }
    }

}
