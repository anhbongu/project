<?php

namespace App\Http\Controllers;
use Illuminate\Support\Str;
use App\Models\Product;
use App\Models\Category;
use App\Models\ProductImage;
use App\Models\Tag;
use App\Models\ProductTag;
use Illuminate\Http\Request;
use Auth;
use App\Helpers\Helper;
use DB;
use App\Http\Requests\RequestProduct;


class AdminProductController extends Controller
{
    protected   $viewName = 'admin.product.';
    private     $product;
    private     $category;  



    public function __construct(Product $product,Category $category){ //đối tượng tương ứng
        $this->product  = $product;
        $this->category = $category;
    }


    public function index(){
        $product = $this->product::get();

        return view($this->viewName.'index', [
            'product'=>$product,

        ]);
    }

    public function create(){
        $product = Product::get();
        $category = $this->category->all();

        return view($this->viewName.'create', [
            'product'=>$product,
            'category'=>$category
        ]);
    }
    public function store(RequestProduct $request){
        
        // insert product
        $data = Helper::upload($request, 'picture', 'product'); //upload anh

        $this->product->name        = $request->name;
        $this->product->slug        = Str::slug($request->name, '-');
        $this->product->price       = $request->price;
        $this->product->content     = $request->content;
        $this->product->user_id     = Auth::id();
        $this->product->category_id = $request->category_id;

        if(!empty($data)){
            $this->product->image_path = $data['file_path'];
            $this->product->image_name = $data['file_name'];            
        }

        $dataUpload = $this->product->save();

        //insert product_image
        
        if($request->hasFile('picture_details')){
            foreach ($request->picture_details as $item) {
                $productImage = new ProductImage();
                $dataUploadDetails = Helper::multiFile($item, 'image_details'); 
                $productImage->image_path = $dataUploadDetails['file_path'];
                $this->product->images()->save($productImage); // gọi ở productModel tự động lấy khóa ngoại là id tham khảo: eloquent relesionship
            }
        }

        //insert tags

        if($request->tags){
            foreach ($request->tags as $value) {
                $data = Tag::firstOrCreate([ //nếu tag đã tồn tại thì ko thêm mới trả về id đã tồn tại
                    'name'=>$value
                ]);

                $this->product->productTags()->create([
                    'tag_id'=>$data->id
                ]);
            }
        }

       






        // $this->insertOrUpdate($request);
        return redirect()->route('admin.product')->with('success', 'Dữ liệu được tạo thành công');
    }

    public function edit($id){
        $category = $this->category->all();
        $item = $this->product->find($id);


        return view($this->viewName.'update', [
            'category'=>$category,
            'item'=>$item
        ]);
    }

    public function update(Request $request, $id){
        // dd($request->all());
        $this->product = Product::find($id);
        $data = Helper::upload($request, 'picture', 'product'); //upload anh

        $this->product->name        = $request->name;
        $this->product->slug        = Str::slug($request->name, '-');
        $this->product->price       = $request->price;
        $this->product->content     = $request->content;
        $this->product->user_id     = Auth::id();
        $this->product->category_id = $request->category_id;

        if(!empty($data)){
            $this->product->image_path = $data['file_path'];
            $this->product->image_name = $data['file_name'];            
        }

        $dataUpload = $this->product->save();

        //update product_image
        
        if($request->hasFile('picture_details')){
            productImage::where('product_id', $id)->delete(); //xóa data cũ trước khi update

            foreach ($request->picture_details as $item) {
                $productImage = new ProductImage();
                $dataUploadDetails = Helper::multiFile($item, 'image_details'); 
                $productImage->image_path = $dataUploadDetails['file_path'];
                $this->product->images()->save($productImage); // gọi ở productModel tự động lấy khóa ngoại là id tham khảo: eloquent relesionship
            }
        }

        //update tags

        if($request->tags){
            foreach ($request->tags as $value) {
                $data = Tag::firstOrCreate([ //nếu tag đã tồn tại thì ko thêm mới trả về id đã tồn tại
                    'name'=>$value
                ]);

                
                $tagId[] = $data->id;
            }
            $this->product->tags()->sync($tagId);
        }
        
        return redirect()->route('admin.product')->with('success', 'Cập nhật thành công');     
    }



    public function delete(Request $request, $id){
        $this->product->find($id)->delete();
        return response()->json([
            'code'=>200,
            'message'=>'success'
        ]);  
    }
    
}
