@extends('user.layout.main')
@section('content')
<section id="cart_items">
	<div class="container">
		<div class="breadcrumbs">
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li class="active">Shopping Cart</li>
			</ol>
		</div>
		<div class="table-responsive cart_info">
			<table class="table table-condensed">
				<thead>
					<tr class="cart_menu">
						<td class="image" style="width: 10%;">Ảnh</td>
						<td class="description">Tên sản phẩm</td>
						<td class="price">Gía</td>
						<td class="quantity">Số lượng</td>
						<td class="total">Tổng tiền</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					@if($listCart)
						@foreach($listCart as $items)
							<tr>
								<td class="cart_product" style="width: 100%;">
									<a href="{{ route('product-details', [strtolower($items->cateName->name), $items->slug, $items->id]) }}"><img class="order-image" src="{{ asset('public/'.$items->image_path) }}" alt="" style="width: 100%;"></a>
								</td>
								<td class="cart_description">
									<h4><a href="{{ route('product-details', [strtolower($items->cateName->name), $items->slug, $items->id]) }}">{{ $items->name }}</a></h4>
									<!-- <p>Web ID: 1089772</p> -->
								</td>
								<td class="cart_price">
									<p>{{ number_format($items->price) }}</p>
								</td>
								<td class="cart_quantity">
									<div class="cart_quantity_button">
										<a class="cart_quantity_up" href=""> + </a>
										<input class="cart_quantity_input" type="text" name="quantity" value="{{ $items->quantity }}" autocomplete="off" size="2">
										<a class="cart_quantity_down" href=""> - </a>
									</div>
								</td>
								<td class="cart_total">
									<p class="cart_total_price">{{ number_format($items->total_price) }}</p>
								</td>
								<td class="cart_delete">
									<a  onclick="javascript:return false" class="cart_quantity_delete delete-action" href="{{ route('delete-cart', ['id'=>$items->id]) }}"><i class="fa fa-times"></i></a>
								</td>
							</tr>
						@endforeach
					@endif
					<tr>
						<td colspan="6">
							<a href="{{ route('buy') }}"  style="float: right;" type="submit" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Thanh toán
							</a>
						</td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>
</section>
@endsection

@section('script')
 	<script src="{{ asset('public/user/js/sweetaler.js') }}"></script>
	<script src="{{ asset('public/user/js/custom.js') }}"></script>
@endsection