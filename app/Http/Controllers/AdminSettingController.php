<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use App\Http\Requests\RequestSetting;

class AdminSettingController extends Controller
{
    protected   $viewName      = 'admin.setting.';
    private     $setting;



    public function __construct(Setting $setting){ //đối tượng tương ứng
        $this->setting = $setting;
    }


    public function index(){
        $setting = $this->setting::get();

        return view($this->viewName.'index', [
            'setting'=>$setting
        ]);
    }

    public function create(){  
        return view($this->viewName.'create');
    }

    public function store(RequestSetting $request){

      
        $this->setting->config_key = $request->config_key;
        $this->setting->config_value = $request->config_value;
        $this->setting->type = $request->type;
        $this->setting->save();

        return redirect()->route('admin.setting')->with('success', 'Dữ liệu được tạo thành công');
    }

    public function edit($id){
 
        $item = $this->setting->find($id);


        return view($this->viewName.'update', [
            'item'=>$item
        ]);
    }

    public function update(RequestSetting $request, $id){
        $this->setting = $this->setting->find($id);


        $this->setting->config_key = $request->config_key;
        $this->setting->config_value = $request->config_value;
        $this->setting->type = $request->type;
        $this->setting->save();       
 
        return redirect()->route('admin.setting')->with('success', 'Cập nhật thành công');     
    }

    public function insertOrUpdate($request, $id = ""){
        if(!empty($id)){
            $this->setting = setting::find($id);
        }
        $this->setting->name         = $request->name;
        $this->setting->slug         = Str::slug($request->name, '-');
        $this->setting->parent_id    = $request->parent_id;
        $this->setting->save(); 

    }

    public function delete($id){
        $this->setting->find($id)->delete();
        return response()->json([
            'code'=>200,
            'message'=>'success'
        ]);

       
    }
}
