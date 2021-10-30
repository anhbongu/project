
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							@if($slider)
								@foreach($slider as $key => $items)
									<div class="item {{ $key==0 ? 'active' : '' }}">
										<div class="col-sm-6">
											
											<h2>{{ $items->name }}</h2>
											<p>{{ $items->description }}</p>
											
										</div>
										<div class="col-sm-6">
											<img src="{{ asset('public/'.$items->image_path) }}" class="girl img-responsive" alt="" />
											
										</div>
									</div>
								@endforeach
							@endif


							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->