<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\Category;
class MainController extends Controller
{
    public function __construct(){
        $setting        = Setting::all();
        $category       = Category::where('parent_id', 0)->get();
        $phone          = Category::where('parent_id', 31)->get();
        View::share([
            'category'=>$category,
            'setting'=>$setting,
            'phone'=>$phone,
        ]);
    }
}
