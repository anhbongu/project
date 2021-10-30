@extends('admin.layout.main')

@section('css')	
	<link href="{{ asset('public/admin/build/css/select2.css') }}" rel="stylesheet" />

@endsection

@section('content')

<div class="row">

	<div class="col-md-12 col-sm-12 ">

		<div class="x_panel">
			<div class="col-sm-6">
				<div class="x_title">
					<h2>THÊM SẢN PHẨM</h2>

					
				</div>			
			</div>
			@include('admin.element.urlmenu', ['url'=>'admin.product','name'=>'product', 'key'=>'add'])


			<div class="x_content">

				<br>
				<form id="demo-form2" action="store" method="post" novalidate="" class="form-horizontal form-label-left"  enctype='multipart/form-data'>
					<!-- //error -->

					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên sản phẩm<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="name" type="text" id="first-name" required="required" class="form-control " value="{{ old('name') }}">
						</div>
						@error('name')
							<span style="color:red">{{ $errors->first('name') }}</span>
							
						@enderror					
					</div>
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Gía sản phẩm<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="price" type="text" id="first-name" required="required" class="form-control " value="{{ old('price') }}">
						</div>
						@error('price')
							<span style="color:red">{{ $errors->first('price') }}</span>
							
						@enderror					
					</div>

					<div class="form-group row">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Danh mục cha</label>
						<div class="col-md-6 col-sm-6 ">
							<select class="form-control js-example-tags" name="category_id">
								<option value="0">Thuộc danh mục</option>
								{!! App\helpers\Helper::selecboxMenu($category) !!}
							</select>
						</div>
						@if($errors->has('category_id'))
							<span style="color:red">{{ $errors->first('category_id') }}</span>
						@endif
											
					</div>

					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Ảnh đại diện</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="picture" type="file" class="form-control-file" id="exampleFormControlFile1">
						</div>

					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Ảnh chi tiết</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="picture_details[]" type="file" class="form-control-file" id="exampleFormControlFile1" multiple="multiple">
						</div>

					</div>

					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tag<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<select name="tags[]" class="form-control js-example-tokenizer" multiple="multiple">
							  
							</select>
						</div>
									
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Nội dung<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<textarea name="content" class="form-control" id="editor1" rows="3">{{ old('content') }}</textarea>
						</div>
						@if($errors->has('content'))
							<span style="color:red">{{ $errors->first('content') }}</span>
							
						@endif	
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
	<script src="{{ asset('public/ckeditor/ckeditor.js') }}"></script>
	<script>
		CKEDITOR.replace( 'editor1' );
		$(".js-example-tokenizer").select2({
		    tags: true,
		    tokenSeparators: [',', ' ']
		})
		$(".js-example-tags").select2({
		  tags: true
		});
	</script>
@endsection