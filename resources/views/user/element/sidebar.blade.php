<div class="col-sm-3">
	<div class="left-sidebar">
		<h2>Danh mục</h2>
		<div class="panel-group category-products" id="accordian"><!--category-productsr-->
			@if($category)
				@foreach($category as $items)
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordian" href="#sportswear-{{ $items->id }}">
									<span class="badge pull-right"><i class="{{ $items->categoryChild->count() > 0 ? 'fa fa-plus' : '' }}"></i></span>
									{{ $items->name }}
								</a>
							</h4>
						</div>
						<div id="sportswear-{{ $items->id }}" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									@if($items->categoryChild)
										@foreach($items->categoryChild as $value)
											<li><a href="{{ route('get-list-product', [$value->slug, $value->id]) }}">{{ $value->name }}</a></li>
										@endforeach
									@endif
								</ul>
							</div>
						</div>
					</div>
				@endforeach
			@endif
			
		</div><!--/category-products-->
	
		<div class="brands_products"><!--brands_products-->
			<h2>THƯƠNG HIỆU</h2>
			<div class="brands-name">
				<ul class="nav nav-pills nav-stacked">
					@if($phone)
						@foreach($phone as $items)
							<li><a href="{{ route('get-list-product', [$items->slug, $items->id]) }}"> <span class="pull-right">({{ $items->products->count()>0 ? $items->products->count() : 0 }})</span>{{ $items->name }}</a></li>
						@endforeach
					@endif
				</ul>
			</div>
		</div><!--/brands_products-->
		

		
		<div class="shipping text-center"><!--shipping-->
			<img src="public/user/images/home/shipping.jpg" alt="" />
		</div><!--/shipping-->
	
	</div>
</div>