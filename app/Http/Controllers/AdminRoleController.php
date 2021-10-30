<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Role;
use App\Models\Permission;
use DB;

class AdminRoleController extends Controller
{
 
    protected   $viewName      = 'admin.role.';
    private     $role;
    private     $permission;



    public function __construct(Role $role,Permission $permission){ //đối tượng tương ứng
        $this->role         = $role;
        $this->permission   = $permission;
    }


    public function index(){
        $role = $this->role::get();
       
        return view($this->viewName.'index', [
            'role'=>$role,  
        ]);
    }

    public function create(){
        $permission   = $this->permission->all();
 
 
         
        return view($this->viewName.'create', [
            'permission'=>$permission   
        ]);
    }

    public function store(Request $request){
        $data = $this->role->create([
            'name'               => $request->name,
            'display_name'       => $request->display_name
        ]);

        $data->permissions()->attach($request->permission_id);

    
        return redirect()->route('admin.role')->with('success', 'Dữ liệu được tạo thành công');
    }

    public function edit($id){
        $permission   = $this->permission->all();
        $item = $this->role->find($id);
        $permissionChecked = $item->permissions;





        return view($this->viewName.'update', [
            'permission'=>$permission,
            'permissionChecked'=>$permissionChecked,
            'item'=>$item
        ]);
    }

    public function update(Request $request, $id){
        $this->role->find($id)->update([
            'name'               => $request->name,
            'display_name'       => $request->display_name
        ]);

        $data = $this->role->find($id);
        $data->permissions()->sync($request->permission_id);

    
        return redirect()->route('admin.role')->with('success', 'Cập nhật thành công');     
    }



    public function delete($id){
        $this->role->find($id)->delete();
        return response()->json([
            'code'=>200,
            'message'=>'success'
        ]);
       
    }
}
