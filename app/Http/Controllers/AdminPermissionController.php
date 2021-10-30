<?php

namespace App\Http\Controllers;
use App\Models\Permission;
use Illuminate\Http\Request;
use App\Http\Requests\PermissionRequest;

class AdminPermissionController extends Controller
{
    protected   $viewName      = 'admin.permission.';
    private     $permission;



    public function __construct(Permission $permission){ //đối tượng tương ứng
        $this->permission = $permission;
    }


    public function index(){
        $permission = $this->permission::get();

        return view($this->viewName.'index', [
            'permission'=>$permission
        ]);
    }

    public function create(){
        $permission = Permission::get();
        
        return view($this->viewName.'create', [
            'permission'=>$permission
        ]);
    }


    public function store(PermissionRequest $request){
        $parent = $this->permission->create([
            'name'=>$request->name
        ]);
        if($request->permission){
            foreach($request->permission as $key => $value){
                $this->permission = new Permission();
                $this->permission->name = $key.'-'.$request->name;
                $this->permission->parent_id = $parent->id;
                $this->permission->key_code = $key.'-'.$request->name;
                $this->permission->save();
            }
        }
        

        return redirect()->route('admin.permission')->with('success', 'Dữ liệu được tạo thành công');
    }

    public function edit($id){
        $permission = Permission::get();
        $item = $this->permission->find($id);


        return view($this->viewName.'update', [
            'permission'=>$permission,
            'item'=>$item
        ]);
    }

    public function update(Request $request, $id){
        $this->insertOrUpdate($request, $id);
        return redirect()->route('admin.permission')->with('success', 'Cập nhật thành công');     
    }

    public function insertOrUpdate($request, $id = ""){
        if(!empty($id)){
            $this->permission = Permission::find($id);
        }
        $this->permission->name         = $request->name;
        $this->permission->slug         = Str::slug($request->name, '-');
        $this->permission->parent_id    = $request->parent_id;
        $this->permission->save(); 

    }

    public function delete($id){
        $this->permission->find($id)->delete();
        $this->permission->where('parent_id', $id)->delete();//xoas luon con
        return redirect()->route('admin.permission')->with('success', 'Xóa thành công');     
    }    
}
