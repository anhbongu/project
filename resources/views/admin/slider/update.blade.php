@extends('admin.layout.main')
@section('css')	
	
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
			@include('admin.element.urlmenu', ['url'=>'admin.slider','name'=>'slider', 'key'=>'edit'])


			<div class="x_content">

				<br>
				<form id="demo-form2" action="{{ route('admin.slider.update', ['id'=>$item->id]) }}" method="post" class="form-horizontal form-label-left" novalidate="" enctype='multipart/form-data'>
					<!-- //error -->

					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên slider<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="name" type="text" id="first-name" required="required" class="form-control " value="{{ $item->name }}">
						</div>
						@if($errors->has('name'))
							<span style="color:red">{{ $errors->first('name') }}</span>
							
						@endif						
					</div>
					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Description<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="description" type="text" id="first-name" required="required" class="form-control " value="{{ $item->description }}">
						</div>
						@if($errors->has('description'))
							<span style="color:red">{{ $errors->first('description') }}</span>
							
						@endif						
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Image</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="picture" type="file" class="form-control-file" id="exampleFormControlFile1">
						</div>

					</div>
					@if($errors->has('picture'))
						<span style="color:red">{{ $errors->first('picture') }}</span>
						
					@endif
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"></label>
						<div class="col-md-6 col-sm-6 ">
							<input name="image_hidden" type="hidden" value="{{ $item->image_path }}">
							<img class="image_path_edit" src="{{ asset('public/'.$item->image_path) }}" alt="">
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