@extends('admin.layout.main')

@section('title')
	<title>Trang chủ</title>
@endsection
@section('css')
	<link rel="stylesheet" href="{{ asset('public/admin/css/custom.css') }}">
@endsection
@section('content')

<div class="row">
	@include('admin.element.alert')
	<div class="col-md-12 col-sm-12  ">
				<div class="zvn-add-new pull-right">
		            <a href="{{ route('admin.slider.create') }}" class="btn btn-success"><i class="fa fa-plus-circle"></i> Thêm mới</a>
		        </div>
			<div class="x_panel">

	 
				<div class="col-sm-6">
					<div class="x_title">
						<h2>DANH SÁCH SLIDER</h2>		
					</div>			
				</div>
				@include('admin.element.urlmenu', ['url'=>'admin.slider','name'=>'home'])

			  <div class="x_content">

			    
			  	<!-- //error -->

				<!-- success -->
			    <div class="table-responsive">
			      <table class="table table-striped jambo_table bulk_action">
			        <thead>
			          <tr class="headings">
			            <th>id</th>
			            <th class="column-title">Tên slider</th>
			            <th class="column-title">Ảnh</th>
			            <th class="column-title">thao tác</th>
			           
			          </tr>
			        </thead>

			        <tbody>
			        	@if($slider)
			        		@foreach($slider as $items)
				        		<tr class="even pointer">
						            <td class="a-center ">{{ $items->id}}</td>
						            <td class="a-center ">{{ $items->name}}</td>
						            <td class=" "><img class="image_path" src="{{ asset('public/'.$items->image_path) }}" alt=""></td>
						            <td class="last">
				                                <div class="zvn-box-btn-filter"><a href="{{ route('admin.slider.edit', ['id'=>$items->id]) }}" type="button" class="btn btn-icon btn-success" data-toggle="tooltip" data-placement="top" data-original-title="Edit">
				                                    <i class="fa fa-pencil"></i>
				                                </a>
				                                <a onclick="javascript:return false" href="{{ route('admin.slider.delete', ['id'=>$items->id]) }}" type="button" class="btn btn-icon btn-danger btn-delete delete-action" data-toggle="tooltip" data-placement="top" data-original-title="Delete">
				                                    <i class="fa fa-trash"></i>
				                                </a>
				                                </div>
						            </td>
						      
						        </tr>
					        @endforeach
				        @endif
			        			
			        	
			         
			        </tbody>
			      </table>
			     
			    </div>
						
					
			  </div>
			</div>
		</div>
						
	</div>


        <!-- page content -->




@endsection
@section('script')
 <script src="{{ asset('public/admin/js/sweetaler.js') }}"></script>
 <script src="{{ asset('public/admin/js/custom.js') }}"></script>

@endsection