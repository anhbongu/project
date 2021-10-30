<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menu;
use App\Http\Requests\RequestCategory;
use Illuminate\Support\Str;
use DB;
class AdminMenuController extends Controller
{

    protected   $viewName      = 'admin.menu.';
    private     $menu;



    public function __construct(Menu $menu){ //đối tượng tương ứng
        $this->menu = $menu;
    }


    public function index(){
        $menu = $this->menu::get();

        return view($this->viewName.'index', [
            'menu'=>$menu
        ]);
    }

    public function create(){
        $menu = Menu::get();
        
        return view($this->viewName.'create', [
            'menu'=>$menu
        ]);
    }
    public function store(RequestCategory $request){
        $this->insertOrUpdate($request);
        return redirect()->route('admin.menu')->with('success', 'Dữ liệu được tạo thành công');
    }

    public function edit($id){
        $menu = Menu::get();
        $item = $this->menu->find($id);


        return view($this->viewName.'update', [
            'menu'=>$menu,
            'item'=>$item
        ]);
    }

    public function update(RequestCategory $request, $id){
        $this->insertOrUpdate($request, $id);
        return redirect()->route('admin.menu')->with('success', 'Cập nhật thành công');     
    }

    public function insertOrUpdate($request, $id = ""){
        if(!empty($id)){
            $this->menu = Category::find($id);
        }
        $this->menu->name         = $request->name;
        $this->menu->slug         = Str::slug($request->name, '-');
        $this->menu->parent_id    = $request->parent_id;
        $this->menu->save(); 

    }

    public function delete($id){
        $this->menu->find($id)->delete();
        $this->menu->where('parent_id', $id)->delete();//xoas luon con
        return redirect()->route('admin.menu')->with('success', 'Xóa thành công');     
    }
    
}
