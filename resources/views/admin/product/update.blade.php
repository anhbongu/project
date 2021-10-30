@extends('admin.layout.main')
@section('css')	
	<link href="{{ asset('public/admin/build/css/select2.css') }}" rel="stylesheet" />
	<link rel="stylesheet" href="{{ asset('public/admin/css/custom.css') }}">
@endsection

@section('content')

<div class="row">

	<div class="col-md-12 col-sm-12 ">

		<div class="x_panel">
			<div class="col-sm-6">
				<div class="x_title">
					<h2>EDIT</h2>

					
				</div>			
			</div>
			@include('admin.element.urlmenu', ['url'=>'admin.product','name'=>'product', 'key'=>'edit'])


			<div class="x_content">

				<br>
				<form id="demo-form2" action="{{ route('admin.product.update', ['id'=>$item->id]) }}" method="post" novalidate="" class="form-horizontal form-label-left"  enctype='multipart/form-data'>
					<!-- //error -->

					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên sản phẩm<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="name" type="text" id="first-name" required="required" class="form-control " value="{{ $item->name }}">
						</div>
						@if($errors->has('name'))
							<span style="color:red">{{ $errors->first('name') }}</span>
							
						@endif						
					</div>
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Gía sản phẩm<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="price" type="text" id="first-name" required="required" class="form-control " value="{{ $item->price }}">
						</div>
						@if($errors->has('price'))
							<span style="color:red">{{ $errors->first('price') }}</span>
							
						@endif						
					</div>

					<div class="form-group row">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Danh mục cha</label>
						<div class="col-md-6 col-sm-6 ">
							<select class="form-control js-example-tags" name="category_id">
								<option value="0">Thuộc danh mục</option>
								{!! App\helpers\Helper::selecboxMenu($category, null, null, $item->category_id) !!}
							</select>
						</div>
											
					</div>

					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Ảnh đại diện</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="picture" type="file" class="form-control-file" id="exampleFormControlFile1">
						</div>

					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"></label>
						<div class="col-md-6 col-sm-6 ">
							<img class="image_path_edit" src="{{ asset('public/'.$item->image_path) }}" alt="">
						</div>

					</div>

					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Ảnh chi tiết</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="picture_details[]" type="file" class="form-control-file" id="exampleFormControlFile1" multiple="multiple">
						</div>

					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">image</label>
						<div class="col-md-6 col-sm-6 ">
							<div class="row">
								@foreach($item->images as $imageDetails)
									<div class="col-md-3">
										<img class="image_path_edit" src="{{ asset('public/'.$imageDetails->image_path) }}" alt="">
									</div>									
									
									
								@endforeach

							</div>

						</div>

					</div>
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tag<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<select name="tags[]" class="form-control js-example-tokenizer" multiple="multiple">
								@foreach($item->tags as $tag)
							  		<option value="{{ $tag->name }}" selected>{{ $tag->name }}</option>
							  	@endforeach
							</select>
						</div>
									
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Nội dung<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<textarea name="content" class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $item->content }}</textarea>
						</div>
					</div>


						
					<div class="item form-group">
						<div class="col-md-6 col-sm-6 offset-md-3">
							<button class="btn btn-primary" type="button">Cancel</button>
							<button class="btn btn-primary" type="reset">Reset</button>
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</div>	
					@csrf
				</form>
			</div>
		</div>
	</div>
					
</div>


        <!-- page content -->




@endsection

@section('script')
	<script src="{{ asset('public/admin/build/js/select2.js') }}"></script>
	<script>
		$(".js-example-tokenizer").select2({
		    tags: true,
		    tokenSeparators: [',', ' ']
		})
		$(".js-example-tags").select2({
		  tags: true
		});
	</script>
@endsection