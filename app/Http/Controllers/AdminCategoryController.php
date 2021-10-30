<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\RequestCategory;
use App\Models\Category;
use Illuminate\Support\Str;
use DB;
class AdminCategoryController extends Controller
{

    protected   $viewName      = 'admin.category.';
    private     $category;



    public function __construct(Category $category){ //đối tượng tương ứng
        $this->category = $category;
    }


    public function index(){
        $category = $this->category::get();

        return view($this->viewName.'index', [
            'category'=>$category
        ]);
    }

    public function create(){
        $category = Category::get();
        
        return view($this->viewName.'create', [
            'category'=>$category
        ]);
    }
    public function store(RequestCategory $request){
        $this->insertOrUpdate($request);
        return redirect()->route('admin.category')->with('success', 'Dữ liệu được tạo thành công');
    }

    public function edit($id){
        $category = Category::get();
        $item = $this->category->find($id);


        return view($this->viewName.'update', [
            'category'=>$category,
            'item'=>$item
        ]);
    }

    public function update(RequestCategory $request, $id){
        $this->insertOrUpdate($request, $id);
        return redirect()->route('admin.category')->with('success', 'Cập nhật thành công');     
    }

    public function insertOrUpdate($request, $id = ""){
        if(!empty($id)){
            $this->category = Category::find($id);
        }
        $this->category->name         = $request->name;
        $this->category->slug         = Str::slug($request->name, '-');
        $this->category->parent_id    = $request->parent_id;
        $this->category->save(); 

    }

    public function delete($id){
        $this->category->find($id)->delete();
        return response()->json([
            'code'=>200,
            'message'=>'success'
        ]);     
    }
    
}
