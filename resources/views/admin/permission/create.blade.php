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
					<h2>THÊM permission</h2>

					
				</div>			
			</div>
			


			<div class="x_content">

				<br>
				<form id="demo-form2" action="store" method="post" class="form-horizontal form-label-left" novalidate="">
					<!-- //error -->

					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên permission<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<select class="form-control" name="name">
								<option value="0">Chọn</option>
								@foreach(config('permissions.table') as $value)
									<option value="{{ $value }}">{{ $value }}</option>
								@endforeach
							</select>
						</div>
						@if($errors->has('name'))
							<span style="color:red">{{ $errors->first('name') }}</span>
							
						@endif						
					</div>

					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Thao tác<span class="required">*</span>
						</label>

						<div class="col-md-6 col-sm-6">
							<input onClick="toggle(this)" type="checkbox" style="position: absolute;top: 9px;left: 10px"><span style="position: absolute;top: 7px;left: 26px;">Chọn tất cả</span>
						</div>
						

					</div> 				
					<div class="item form-group ">
						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name"></label>
						
						<div class="col-md-6 col-sm-6 items">
							
							<div class="col-md-3" style="padding: 0px;">
								<input name="permission[list]" class="checkbox_child" type="checkbox">Danh sách
							</div>
							<div class="col-md-3">
								<input name="permission[add]" class="checkbox_child" type="checkbox">Thêm
							</div>
							<div class="col-md-3">
								<input name="permission[edit]" class="checkbox_child" type="checkbox">Sửa
							</div>
							<div class="col-md-3">
								<input name="permission[delete]" class="checkbox_child" type="checkbox">Xóa
							</div>							
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
<script language="JavaScript">
	function toggle(source) {
	    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
	    for (var i = 0; i < checkboxes.length; i++) {
	        if (checkboxes[i] != source)
	            checkboxes[i].checked = source.checked;
	    }
	}
</script>
@endsection