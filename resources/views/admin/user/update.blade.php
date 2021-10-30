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
					<h2>CHỈNH SỮA</h2>

					
				</div>			
			</div>
			@include('admin.element.urlmenu', ['url'=>'admin.user','name'=>'user', 'key'=>'edit'])


			<div class="x_content">

				<br>
				<form id="demo-form2" action="{{ route('admin.user.update', ['id'=>$item->id]) }}" method="post" class="form-horizontal form-label-left" novalidate="">
					<!-- //error -->

					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên user<span class="required">*</span>
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

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Email<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="email" type="text" id="first-name" required="required" class="form-control " value="{{ $item->email }}">
						</div>
						@if($errors->has('email'))
							<span style="color:red">{{ $errors->first('email') }}</span>
							
						@endif						
					</div>


					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Password<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="password" type="text" id="first-name" required="required" class="form-control " value="">
						</div>
						@if($errors->has('password'))
							<span style="color:red">{{ $errors->first('password') }}</span>
							
						@endif						
					</div>

					<div class="form-group row">
						<label class="col-form-label col-md-3 col-sm-3 label-align">Chọn vai trò</label>
						<div class="col-md-6 col-sm-6 ">
							<select class="form-control js-example-tags" multiple name="role_id[]">
								<option value=""></option>
								@if($roles)
									@foreach($roles as $items)
										<option {{ $roleOfUser->contains('id', $items->id) ? 'selected' : "" }} value="{{ $items->id }}">{{ $items->name }}</option>
									@endforeach
								@endif
								
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

@section('script')
	<script src="{{ asset('public/admin/build/js/select2.js') }}"></script>
	<script src="{{ asset('public/ckeditor/ckeditor.js') }}"></script>
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