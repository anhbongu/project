<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;


class ProductController extends MainController
{
    private $product;
    public function __construct(Product $product){
        $this->product = $product;
        parent::__construct();
    }
    public function details(Request $request, $id){
        $url    = $request->segment(2);
        $arrUrl = explode('-', $url);
        $id     = array_pop($arrUrl); 

        //tăng view
        $product = $this->product->find($id);
        $product->view += 1;
        $product->save();

        $productDetails = $this->product->find($id);
        return view('user.product.details', [
            'productDetails'=>$productDetails
        ]);
    }




}
