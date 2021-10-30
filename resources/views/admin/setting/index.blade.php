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
		            <div class="dropdown">
					  <button class="btn btn-secondary dropdown-toggle add-config" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    THÊM CONFIG
					  </button>
					  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					    <a href="{{ route('admin.setting.create').'?type=text' }}" class="dropdown-item" href="#">TEXT</a>
					    <a href="{{ route('admin.setting.create').'?type=textarea' }}" class="dropdown-item" href="#">TEXT AREAREA</a>
					    
					  </div>
					</div>
		        </div>
			<div class="x_panel">

	 
				<div class="col-sm-6">
					<div class="x_title">
						<h2>DANH SÁCH</h2>		
					</div>			
				</div>
				@include('admin.element.urlmenu', ['url'=>'admin.setting','name'=>'home'])

			  <div class="x_content">

			    
			  	<!-- //error -->

				<!-- success -->
			    <div class="table-responsive">
			      <table class="table table-striped jambo_table bulk_action">
			        <thead>
			          <tr class="headings">
			            <th>id</th>
			            <th class="column-title">Tên Config</th>
			            <th class="column-title">Value</th>
			            <th class="column-title">Thao tác</th>
			           
			          </tr>
			        </thead>

			        <tbody>
			        	@if($setting)
			        		@foreach($setting as $items)
				        		<tr class="even pointer">
						            <td class="a-center ">{{ $items->id}}</td>
						            <td class="a-center ">{{ $items->config_key}}</td>
						            <td class="a-center ">{{ $items->config_value}}</td>
						      
						            <td class="last">
				                                <div class="zvn-box-btn-filter"><a href="{{ route('admin.setting.edit', ['id'=>$items->id]).'?type='.$items->type }}" type="button" class="btn btn-icon btn-success" data-toggle="tooltip" data-placement="top" data-original-title="Edit">
				                                    <i class="fa fa-pencil"></i>
				                                </a>
				                                <a onclick="javascript:return false" href="{{ route('admin.setting.delete', ['id'=>$items->id]) }}" type="button" class="btn btn-icon btn-danger btn-delete delete-action" data-toggle="tooltip" data-placement="top" data-original-title="Delete">
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