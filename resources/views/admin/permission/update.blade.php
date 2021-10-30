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
					<h2>THÊM ROLE</h2>

					
				</div>			
			</div>
			@include('admin.element.urlmenu', ['url'=>'admin.role','name'=>'role', 'key'=>'update'])


			<div class="x_content">

				<br>
				<form id="demo-form2" action="{{ route('admin.role.update', ['id'=>$item->id]) }}" method="post" class="form-horizontal form-label-left" novalidate="">
					<!-- //error -->

					<!-- success -->
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên role<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="name" type="text" id="first-name" required="required" class="form-control " value="{{ $item->name }}">
						</div>
						@if($errors->has('name'))
							<span style="color:red">{{ $errors->first('name') }}</span>
							
						@endif						
					</div>
					<div class="item form-group">

						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Display name<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 ">
							<input name="display_name" type="text" id="first-name" required="required" class="form-control " value="{{ $item->display_name }}">
						</div>
						@if($errors->has('display_name'))
							<span style="color:red">{{ $errors->first('display_name') }}</span>
							
						@endif						
					</div>
					<div class="">

						@foreach($permission as $items)
							@if($items->parent_id == 0)
								<div class="row items">

									<div class="col-md-12">
										<div class="card">
											<div class="card-header">
											  	<label for="">
											  		<input class="checkbox_wrapper" type="checkbox">
											  	</label>
											   	{{ $items->name }}

											 </div>
										</div>
									</div>
						

									@foreach($permission as $value)
										@if($value->parent_id == $items->id)
											<div class="col-md-3">
												

												  <div class="card-body">
												    <blockquote class="blockquote mb-0">
												    	<label for="">
												  		<input
												  		{{ $permissionChecked->contains('id', $value->id) ? 'checked' : '' }}
												  		  class="checkbox_child" name="permission_id[]" value="{{ $value->id }}" type="checkbox">
												  	</label>
												      <p>{{ $value->name }}</p>
												      
												    </blockquote>
												  </div>
																			
											</div>
										@endif
									@endforeach
			

								</div>	
							@endif
						@endforeach					
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
	<script>
		jQuery(document).ready(function($) {
			$('.checkbox_wrapper').click(function(){
				$(this).parents('.items').find('.checkbox_child').prop('checked', $(this).prop('checked'));
			});	
		});
	</script>
@endsection