<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderProduct;
use DB;

class OrderControler extends Controller
{
    protected $order;

    public function __construct(Order $order){
        $this->order = $order;
    }


    public function order(Request $request, $id, $price){
        $cart = session()->get('cart');
        if(isset($request->_token)){
            $quantity = $request->quantity;
            if(empty($cart)){
                $cart['quantity'][$id]  = $quantity;
                $cart['price'][$id]     = $price;
            }else{
                if(key_exists($id, $cart['quantity'])){
                    $cart['quantity'][$id] += $quantity;
                    $cart['price'][$id]     = $cart['quantity'][$id]*$price;                 
                }else{
                    $cart['quantity'][$id]  = $quantity;
                    $cart['price'][$id]     = $price;                
                }
               
            }            
        }else{
            if(empty($cart)){
                $cart['quantity'][$id]  = 1;
                $cart['price'][$id]     = $price;
            }else{
                if(key_exists($id, $cart['quantity'])){
                    $cart['quantity'][$id] += 1;
                    $cart['price'][$id]     = $cart['quantity'][$id]*$price;                 
                }else{
                    $cart['quantity'][$id]  = 1;
                    $cart['price'][$id]     = $price;                
                }
               
            }            
        }



        session()->put('cart', $cart);
        $cart = session()->get('cart');

        //tổng sản phẩm
        $totalQuantity = array_sum($cart['quantity']);
        session()->put('totalQuantity', $totalQuantity);
        if(isset($request->_token)){
            return redirect()->route('cart');
        }
        return response()->json(['code'=>200, 'total'=>$totalQuantity]);            


    }

    //danh sach cart
    public function cart(){
        $cart = session('cart');
        if(!empty($cart['quantity'])){
            $ids = array();
            foreach($cart['quantity'] as $key => $value){
                $ids[] = $key;
            }


            $product = DB::table('Products')->whereIn('id', $ids)->select('id', 'name', 'price', 'image_path','category_id', 'slug')->get();
            foreach($product as $value){
                $value->quantity        = $cart['quantity'][$value->id];
                $value->total_price     = $cart['price'][$value->id];
                $value->cateName        = DB::table('categories')->where('id', $value->category_id)->first();
            }            
        }else{
            return redirect()->route('home')->with('error', 'giỏ hàng trống');
        }



        return view('user.order.index', [
            'listCart'=>$product
        ]);

    }
    //thanh toán
    public function buy(){
        $cart = session('cart');
        $totalPrice = array_sum($cart['price']);



        $ids = array();
        foreach($cart['quantity'] as $key => $value){
            $ids[] = $key;
        }


        $product = DB::table('Products')->whereIn('id', $ids)->select('id', 'name', 'price', 'image_path','category_id')->get();
        foreach($product as $value){
            $value->quantity        = $cart['quantity'][$value->id];
            $value->total_price     = $cart['price'][$value->id];
            $value->cateName        = DB::table('categories')->where('id', $value->category_id)->first();
        }  

        //insert bảng order
        $dataOrder = $this->order->create([
            'code'=> rand(),
            'user_id'=>1,
            'status'=>1,
            'total_price'=>$totalPrice
        ]);

        
        // insert bảng order-product
        foreach ($product as $value) {
            $order_product              = new OrderProduct();
            $order_product->order_id    = $dataOrder->id;
            $order_product->product_id  = $value->id;
            $order_product->quantity    = $value->quantity;
            $order_product->price       = $value->price;
            $order_product->save();

        }

        session()->forget('cart');
        session()->forget('totalQuantity');

        return redirect()->route('home');   
    }

    public function deleteCart(Request $request, $id){
        if($request->ajax()){
            $cart = session('cart');
            unset($cart['quantity'][$id]);
            unset($cart['price'][$id]);

            session()->put('cart', $cart);


            $totalQuantity = array_sum($cart['quantity']);
            session()->put('totalQuantity', $totalQuantity);
            return response()->json(['code'=>200, 'totalQuantity'=>$totalQuantity]);
        }

    }
}
