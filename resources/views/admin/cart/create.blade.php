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
					<h2>THÊM DANH MỤC</h2>

					
				</div>			
			</div>
			@include('admin.element.urlmenu', ['url'=>'admin.menu','name'=>'menu', 'key'=>'add'])


			<div class="x_content">

				<br>
				<form id="demo-form2" action="store" method="post" class="form-horizontal form-label-left" novalidate="">
					<!-- //error -->

					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên Menu<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="name" type="text" id="first-name" required="required" class="form-control " value="">
						</div>
						@if($errors->has('name'))
							<span style="color:red">{{ $errors->first('name') }}</span>
							
						@endif						
					</div>

					<div class="form-group row">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Danh mục cha</label>
						<div class="col-md-6 col-sm-6 ">
							<select class="form-control" name="parent_id">
								<option value="0">Choose option</option>
								{!! App\helpers\Helper::selecboxMenu($menu) !!}
							</select>
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