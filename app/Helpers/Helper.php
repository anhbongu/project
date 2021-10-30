<?php 

	namespace App\Helpers;
	use Illuminate\Support\Str;
	use Auth;
	use Storage;
	use App\Models\Setting;

	class Helper{
		public static function selecboxMenu($menus, $parent_id = 0, $char = " ", $selected=0){
			$xhtml = "";

			if($menus){
				foreach($menus as $key => $value){
					if($value->parent_id == $parent_id){

						if($value->id == $selected){
							$xhtml .= '<option selected  value="'.$value->id.'">'.$char.$value->name.'</option>';	
						}else{
							$xhtml .= '<option value="'.$value->id.'">'.$char.$value->name.'</option>';		
						}
						unset($menus['key']);
						$xhtml .= self::selecboxMenu($menus, $value->id, "--", $selected);					

					}

				}
			}

			return $xhtml;
		}

		//upload file
		public static function upload($request, $name, $pathUpload){
			if($request->hasFile($name)){
		        //upload file
		        $file           = $request->$name;
		        $fileNameOrigin = $file->getClientOriginalName();//lấy tên hiện tại
		        $fileNameNew    = Str::random(20).'.'.$file->getClientOriginalExtension();// tạo tên file mới
		        $filePath       = $request->file($name)->storeAs('public/'.$pathUpload.'/'.Auth::id(), $fileNameNew);//Luu anh

		        return $data = [
		            'file_name'=>$fileNameOrigin,
		            'file_path'=>Storage::url($filePath),
		        ];					
			}
			return null;
		
		}

		public static function multiFile($file, $pathUpload){
	        //upload file
	        
	        $fileNameOrigin = $file->getClientOriginalName();//lấy tên hiện tại
	        $fileNameNew    = Str::random(20).'.'.$file->getClientOriginalExtension();// tạo tên file mới
	        $filePath       = $file->storeAs('public/'.$pathUpload.'/'.Auth::id(), $fileNameNew);//Luu anh

	        return $data = [
	            'file_name'=>$fileNameOrigin,
	            'file_path'=>Storage::url($filePath),
	        ];				
		}

		public static function getNameSetting($key){
			$setting = Setting::where('config_key', $key)->first();

			if($setting){
				return $setting->config_value;
			}
			return null;
		}
	}

 ?>