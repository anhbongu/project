@extends('admin.layout.main')

@section('title')
	<title>Trang chủ</title>
@endsection
@section('content')

<div class="row">

	<div class="col-md-12 col-sm-12 ">

		<div class="x_panel">
			<div class="col-sm-6">
				<div class="x_title">
					<h2>THÊM CONFIG</h2>

					
				</div>			
			</div>
			@include('admin.element.urlmenu', ['url'=>'admin.setting','name'=>'setting', 'key'=>'update'])


			<div class="x_content">

				<br>
				<form id="demo-form2" action="{{ route('admin.setting.update', ['id'=>$item->id]) }}" method="post" class="form-horizontal form-label-left" novalidate="" enctype='multipart/form-data'>
					<!-- //error -->

					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên config<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="config_key" type="text" id="first-name" required="required" class="form-control " value="{{ $item->config_key }}">
						</div>
						@if($errors->has('config_key'))
							<span style="color:red">{{ $errors->first('config_key') }}</span>
							
						@endif						
					</div>
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Gía trị<span class="required">*</span>
						</label>
						@if(Request()->type == 'text')
							<div class="col-md-6 col-sm-6 ">
								<input name="config_value" type="text" id="first-name" required="required" class="form-control " value="{{ $item->config_value }}">
							</div>
						@elseif(Request()->type == 'textarea')

						<div class="col-md-6 col-sm-6 ">
							<textarea name="config_value" class="form-control" id="editor1" rows="3">{{ $item->config_value }}</textarea>
						</div>
						@endif

						@if($errors->has('config_value'))
							<span style="color:red">{{ $errors->first('config_value') }}</span>
							
						@endif						
					</div>
	

					<input type="hidden" name="type" value="{{ Request()->type }}">	
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
	<script src="{{ asset('public/ckeditor/ckeditor.js') }}"></script>
	<script>
		CKEDITOR.replace( 'editor1' );
	</script>
@endsection