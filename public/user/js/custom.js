//load product


jQuery(document).ready(function($) {
	$('.delete-action').click(function(){

		Swal.fire({
		  title: 'Are you sure?',
		  text: "You won't be able to revert this!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, delete it!'
		}).then((result) => {
		  if (result.isConfirmed) {
		  	let url = $(this).attr('href');
		  	let that = $(this);

		  	$.ajax({
		  		type : 'GET',
		  		url : url,
		  		success: function(data){
		  			if(data.code == 200){
		  				$('.totalCart').html(data.totalQuantity);
		  				that.parent().parent().remove();
					    Swal.fire(
					      'Deleted!',
					      'Your file has been deleted.',
					      'success'
					    )				  				
		  			}
		  		}
		  	});

		  }
		})

	});
});	

jQuery(document).ready(function($) {
	$('.add-to-cart').click(function(event){
		event.preventDefault()
		Swal.fire({
		  title: 'Xác nhận?',
		  text: "Bạn chắc chắn mua hàng!",
		  icon: 'success',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Đồng ý!'
		}).then((result) => {
		  if (result.isConfirmed) {
		  	let url = $(this).attr('href');
		  	console.log(url);
		  	let that = $(this);

		  	$.ajax({
		  		type : 'GET',
		  		url : url,
		  		success: function(data){
		  			if(data.code == 200){
		  				$('.totalCart').html(data.total);
					    Swal.fire(
					      'Thành công!',
					      'Your file has been deleted.',
					      'success'
					    )				  				
		  			}
		  		}
		  	});

		  }
		})

	});
});

	