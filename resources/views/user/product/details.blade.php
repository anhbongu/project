@extends('user.layout.main')

@section('content')
<section>
	<div class="container">
		<div class="row">
			@include('user.element.sidebar')
			
			<div class="col-sm-9 padding-right">
				<div class="product-details"><!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							
							<img src="{{ asset('public/'.$productDetails->image_path) }}" alt="">
							<h3>ZOOM</h3>
						</div>
						<div id="similar-product" class="carousel slide" data-ride="carousel">
							
							  <!-- Wrapper for slides -->
							    <div class="carousel-inner">
									<div class="item active" style="display: flex;">
										@foreach($productDetails->images as $key => $image)
											<a href=""><img src="{{ asset('public/'.$image->image_path) }}" alt=""></a>
										@endforeach
									  
									  
									</div>
	
									
								</div>

							  <!-- Controls -->
							  <a class="left item-control" href="#similar-product" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right item-control" href="#similar-product" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>
						</div>

					</div>
					<div class="col-sm-7">
						<div class="product-information"><!--/product-information-->
							<img src="images/product-details/new.jpg" class="newarrival" alt="">
							<p><b>Thương hiệu: </b>{{ $productDetails->category->name }}</p>
							<h2>{{ $productDetails->name }}</h2>
							
							<img src="{{ asset('public/user/images/product-details/rating.png') }}" alt="">
							<form action="{{ route('order', [$productDetails->id, $productDetails->price]) }}">
								<span>
									<span>{{ number_format($productDetails->price) }}</span>
									<label>Quantity:</label>
									<input type="text" value="1" name="quantity">
									<br>
									<button type="submit" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Mua ngay
									</button>
								</span>	
								@csrf							
							</form>

							
					
							
						</div><!--/product-information-->
					</div>
				</div><!--/product-details-->
				
				<div class="category-tab shop-details-tab"><!--category-tab-->
					<div class="col-sm-12">
						<ul class="nav nav-tabs">
							<li><a href="#details" data-toggle="tab">Chi tiết sản phẩm</a></li>
							
						</ul>
					</div>
					<div class="tab-content">
		
						
						<div class="tab-pane fade active in" id="reviews">
							<div class="col-sm-12">
								<ul>
									<li><a href=""><i class="fa fa-user"></i>{{ $productDetails->user->name }}</a></li>
									<li><a href=""><i class="fa fa-clock-o"></i>{{ $productDetails->created_at }}</a></li>
								</ul>
								{!! $productDetails->content !!}
								

							</div>
						</div>
						
					</div>
				</div><!--/category-tab-->
				

				
			</div>
		</div>
	</div>
</section>
@endsection

