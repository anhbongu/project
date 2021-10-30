@extends('admin.layout.main')

@section('title')
	<title>Trang chủ</title>
@endsection
@section('content')

<div class="row">
	@include('admin.element.alert')
	<div class="col-md-12 col-sm-12  ">

			<div class="x_panel">

	 
				<div class="col-sm-6">
					<div class="x_title">
						<h2>DANH SÁCH ĐƠN HÀNG</h2>		
					</div>			
				</div>
				@include('admin.element.urlMenu', ['url'=>'admin.cart','name'=>'home'])

			  <div class="x_content">

			    
			  	<!-- //error -->

				<!-- success -->
			    <div class="table-responsive">
			      <table class="table table-striped jambo_table bulk_action">
			        <thead>
			          <tr class="headings">
			            <th>Mã đơn</th>
			            <th class="column-title">Tên khách hàng</th>
			            <th class="column-title">Tên sản phẩm</th>
			            <th class="column-title">Trạng thái</th>
			            <th class="column-title">Tổng tiền</th>
			            <th class="column-title">thao tác</th>
			           
			          </tr>
			        </thead>

			        <tbody>
			        	@if($cart)
			        		@foreach($cart as $items) 		<!-- danh sách từng đơn hàng -->
				        		<tr class="even pointer">
						            <td class="a-center ">{{ $items->code}}</td> 
						            <td class=" ">{{ $items->user->name }}</td>
						            <td class=" ">
						            	<ul>
							            	@foreach($items->products as $value) 	<!-- lấy ra tên sản phẩm -->
							            		<li>{{ $value->name }}
							            			<ul style="color: red;">
							            				@foreach($value->orderProduct as $infor)
							            					@if($infor->order_id == $items->id)
								            					<li>Số lượng: {{ $infor->quantity }}</li>
								            					<li>Gía: {{ number_format($infor->price) }} vnđ</li>
							            					@endif
							            				@endforeach							            				
							            			</ul>

							            				
							            		</li>
							            		
							            		
							            	@endforeach						            		
						            	</ul>

						            </td>
						            <td class=" ">
						            	<a onclick="javascript:return false" href="{{ route('admin.changstatus', ['id'=>$items->id, 'status'=>$items->status]) }}" type="button" class="btn btn-round btn-success changstatus">
						            		{{ $items->status==1 ? 'Chưa xử lý' : 'Đang vận chuyển' }}
						            	</a>
						            </td>
						            <td class=" ">{{ number_format($items->total_price) }} vnđ</td>
						            <td class="last">
				                                <div class="zvn-box-btn-filter"><a onclick="javascript:return false" href="{{ route('admin.cart.delete', ['id'=>$items->id]) }}" type="button" class="btn btn-icon btn-danger btn-delete delete-action" data-toggle="tooltip" data-placement="top" data-original-title="Delete">
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