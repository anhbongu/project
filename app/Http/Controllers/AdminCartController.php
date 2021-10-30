<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
class AdminCartController extends Controller
{
 
    private   $viewName      = 'admin.cart.';
    private     $cart;



    public function __construct(Order $cart){ //đối tượng tương ứng
        $this->cart = $cart;
    }


    public function index(){
        $cart = $this->cart::get();

        return view($this->viewName.'index', [
            'cart'=>$cart
        ]);
    }




    public function changstatus(Request $request, $id, $status){
        if($request->ajax()){
            $status = $status==1 ? 2 : 1;
            $this->cart->find($id)->update([
                'status'=> $status
            ]);
            return response()->json([
                'status'=>$status,
                'id'=>$id
            ]);            
        }

          
    }

    public function delete(Request $request, $id){
        if($request->ajax()){
            $this->cart->find($id)->delete();
            return response()->json([
                'code'=>200
            ]);
        }
    }
    
}
