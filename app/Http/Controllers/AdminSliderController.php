<?php

namespace App\Http\Controllers;
use App\Models\Slider;
use Illuminate\Http\Request;
use App\Helpers\Helper;
use App\Http\Requests\RequestMenu;
class AdminSliderController extends Controller
{

    protected   $viewName      = 'admin.slider.';
    private     $slider;



    public function __construct(Slider $slider){ //đối tượng tương ứng
        $this->slider = $slider;
    }


    public function index(){
        $slider = $this->slider::get();

        return view($this->viewName.'index', [
            'slider'=>$slider
        ]);
    }

    public function create(){  
        return view($this->viewName.'create');
    }

    public function store(RequestMenu $request){
        $data = Helper::upload($request, 'picture', 'slider'); //upload anh
      
        $this->slider->name = $request->name;
        $this->slider->description = $request->description;
        $this->slider->image_path = $data['file_path'];
        $this->slider->image_name = $data['file_name'];
        $this->slider->save();

        return redirect()->route('admin.slider')->with('success', 'Dữ liệu được tạo thành công');
    }

    public function edit($id){
 
        $item = $this->slider->find($id);


        return view($this->viewName.'update', [
            'item'=>$item
        ]);
    }

    public function update(RequestMenu $request, $id){
        $this->slider = $this->slider->find($id);

        if($request->hasFile('picture')){
            //delete ảnh cũ
            $image_remove = 'public/'.$request->image_hidden;
            if(file_exists($image_remove)){
                unlink($image_remove);
            }

            $data = Helper::upload($request, 'picture', 'slider'); //upload anh
            $this->slider->image_path = $data['file_path'];
            $this->slider->image_name = $data['file_name'];
            
        }
        $this->slider->name = $request->name;
        $this->slider->description = $request->description;

        $this->slider->save();       
 
        return redirect()->route('admin.slider')->with('success', 'Cập nhật thành công');     
    }

    public function insertOrUpdate($request, $id = ""){
        if(!empty($id)){
            $this->slider = slider::find($id);
        }
        $this->slider->name         = $request->name;
        $this->slider->slug         = Str::slug($request->name, '-');
        $this->slider->parent_id    = $request->parent_id;
        $this->slider->save(); 

    }

    public function delete($id){
        $this->slider->find($id)->delete();
        return response()->json([
            'code'=>200,
            'message'=>'success'
        ]);

       
    }
}
