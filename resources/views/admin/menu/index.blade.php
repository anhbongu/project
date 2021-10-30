@extends('admin.layout.main')

@section('title')
	<title>Trang chủ</title>
@endsection
@section('content')

<div class="row">
	@include('admin.element.alert')
	<div class="col-md-12 col-sm-12  ">
				<div class="zvn-add-new pull-right">
		            <a href="{{ route('admin.menu.create') }}" class="btn btn-success"><i class="fa fa-plus-circle"></i> Thêm mới</a>
		        </div>
			<div class="x_panel">

	 
				<div class="col-sm-6">
					<div class="x_title">
						<h2>THÊM DANH MỤC</h2>		
					</div>			
				</div>
				@include('admin.element.urlmenu', ['url'=>'admin.menu','name'=>'home'])

			  <div class="x_content">

			    
			  	<!-- //error -->

				<!-- success -->
			    <div class="table-responsive">
			      <table class="table table-striped jambo_table bulk_action">
			        <thead>
			          <tr class="headings">
			            <th>id
			            </th>
			            <th class="column-title">Tên menu </th>
			            <th class="column-title">Slug</th>
			            <th class="column-title">Parent_id</th>
			            <th class="column-title">thao tác</th>
			           
			          </tr>
			        </thead>

			        <tbody>
			        	@if($menu)
			        		@foreach($menu as $items)
				        		<tr class="even pointer">
						            <td class="a-center ">{{ $items->id}}</td>
						            <td class=" ">{{ $items->name}}</td>
						            <td class=" ">{{ $items->slug}}</td>
						            <td class=" ">{{ $items->parent_id}}</td>
						            <td class="last">
				                                <div class="zvn-box-btn-filter"><a href="{{ route('admin.menu.edit', ['id'=>$items->id]) }}" type="button" class="btn btn-icon btn-success" data-toggle="tooltip" data-placement="top" data-original-title="Edit">
				                                    <i class="fa fa-pencil"></i>
				                                </a><a href="{{ route('admin.menu.delete', ['id'=>$items->id]) }}" type="button" class="btn btn-icon btn-danger btn-delete" data-toggle="tooltip" data-placement="top" data-original-title="Delete">
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