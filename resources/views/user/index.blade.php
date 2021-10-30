@extends('user.layout.main')

@section('content')
	@include('user.element.slider')

	<section>
		
		<div class="container">
			<div class="row">
				@include('user.element.sidebar')
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Sản phẩm mới</h2>
						@if($product)
							@foreach($product as $items)
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
												<div class="productinfo text-center">
													<a href="{{ route('product-details', [strtolower($items->category->name), $items->slug, $items->id]) }}"><img src="{{ asset('public'.$items->image_path) }}" alt="" /></a>
													<h2>{{ number_format($items->price) }}</h2>
													<p>{{ $items->name }}</p>
													<a href="{{ route('order', ['id'=>$items->id, 'price'=>$items->price]) }}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
		
										</div>

									</div>
								</div>
							@endforeach
						@endif
						
					</div><!--features_items-->
					
				</div>
			</div>
			<div class="row">
					<div class="category-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">

								@if($phone)
										@foreach($phone as $key => $items)
											<li class="{{ $key==0 ? 'active' : '' }}"><a href="#item-{{ $items->id }}" data-toggle="tab">{{ $items->name }}</a></li>
										@endforeach
									
								@endif
								

							</ul>
						</div>
						<div class="tab-content">
							
								@foreach($phone as $key => $categoryItems)
									
									<div class="tab-pane fade {{ $key==0 ? 'active in' : '' }}" id="item-{{ $categoryItems->id }}" >
											@foreach($categoryItems->products as $value)
												<div class="col-sm-3">
													<div class="product-image-wrapper">
														<div class="single-products">
															<div class="productinfo text-center">
																<a href="{{ route('product-details', [strtolower($value->category->name), $value->slug, $value->id]) }}"><img src="{{ asset('public/'.$value->image_path) }}" alt="" /></a>
																<h2>{{ number_format($value->price) }}</h2>
																<p>{{ $value->name }}</p>
																<a href="{{ route('order', ['id'=>$value->id, 'price'=>$value->price]) }}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
															</div>
															
														</div>
													</div>
												</div>
											@endforeach
									</div>
								@endforeach
							

						</div>
					</div><!--/category-tab-->
					
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">Được xem nhiều nhất</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								@if($productView)
									@foreach($productView as $key => $value)
										@if($key % 3 == 0)
											<div class="item {{ $key==0 ? 'active' : '' }}">	
										@endif
												<div class="col-sm-4">
													<div class="product-image-wrapper">
														<div class="single-products">
															<div class="productinfo text-center">
																<a href="{{ route('product-details', [strtolower($value->category->name), $value->slug, $value->id]) }}"><img src="{{ asset('public/'.$value->image_path) }}" alt="" /></a>
																<h2>{{ number_format($value->price) }}</h2>
																<p>{{ $value->name }}</p>
																<a href="{{ route('order', ['id'=>$value->id, 'price'=>$value->price]) }}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
															</div>
															
														</div>
													</div>
												</div>
											
										@if($key % 3 == 2)
											</div>	
										@endif
									@endforeach
								@endif

		
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->				
			</div>
		</div>
	</section>
@endsection

@section('script')
	<script src="{{ asset('public/user/js/sweetaler.js') }}"></script>
	<script src="{{ asset('public/user/js/custom.js') }}"></script>
@endsection