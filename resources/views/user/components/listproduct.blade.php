@if($listProduct)
	@foreach($listProduct as $items)

		<div class="col-sm-4">
			<div class="product-image-wrapper">
				<div class="single-products">
					<div class="productinfo text-center">
						<a class="data" href="{{ route('product-details', [$cateName->name, $items->slug, $items->id]) }}"><img src="{{ asset('public/'.$items->image_path) }}" alt=""></a>
						<h2>{{ number_format($items->price )}} vnđ</h2>
						<p>{{ $items->name }}</p>
						<a href="" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
					</div>

				</div>

			</div>
		</div>
	@endforeach

@endif