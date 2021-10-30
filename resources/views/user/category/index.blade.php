@extends('user.layout.main')
@section('css')
	<link rel="stylesheet" href="{{ asset('public/user/css/custom.css') }}">
@endsection
@section('content')
	<section>
		<div class="container">
			<div class="row">
				@include('user.element.sidebar')
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">{{ $cateName->name }}</h2>
						<div class="view-data">
							@if($listProduct)
								@foreach($listProduct as $items)

									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<a class="data" href="{{ route('product-details',[$cateName->name,$items->slug, $items->id]) }}"><img src="{{ asset('public/'.$items->image_path) }}" alt=""></a>
													<h2>{{ number_format($items->price) }} vnđ</h2>
													<p>{{ $items->name }}</p>
													<a href="{{ route('product-details',[$cateName->name,$items->slug, $items->id]) }}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>

											</div>
		
										</div>
									</div>
								@endforeach
							@endif							
						</div>


						
						<br>

					</div><!--features_items-->
					<div class="load-data-product">
						<button id="load-data">Xem thêm</button>
					</div>
			</div>
		</div>
	</section>
@endsection









@section('script')
	<script src="{{ asset('public/user/js/custom.js') }}"></script>
	<script>
		jQuery(document).ready(function($) {
			

			var position = 0;
			$('#load-data').click(function(){
				
				$.ajax({
					type: 'get',
					url : 'loadproduct/' + position,
					data:{
						urlCurent :  window.location.href,
						position : position+3
					},
					success: function(data){
						if(data.html.length == 0){
							$('.load-data-product').hide();
						}

						if(data.code == 200){
							$('.view-data').append(data.html);
							position += 3;							
						}


					}

				});
			});
		});
	</script>	
@endsection