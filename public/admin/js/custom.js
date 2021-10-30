jQuery(document).ready(function($) {
	$('.delete-action').click(function(){
		var url = $(this).attr('href');
		var that = $(this);
		console.log(url);
		Swal.fire({
		  title: 'Bạn có chắc chắn muốn xóa không?',
		  text: "Dữ liệu sẽ mất hết!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, delete it!'
		}).then((result) => {
		  if (result.isConfirmed) {
		  	$.ajax({
		  		type: 'GET',
			  	url: url,
			  	success: function(data){
			  		if(data.code==200){
			  			that.parent().parent().parent().remove();
					    Swal.fire(
					      'Deleted!',
					      'Xóa thành công.',
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
	$('.changstatus').click(function(event) {
		let url = $(this).attr('href');
		let that =  $(this);
		event.preventDefault();
		Swal.fire({
		  title: 'Thay đổi hành động?',
		 
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Đồng ý!'
		}).then((result) => {
		  if (result.isConfirmed) {
		  	$.ajax({
		  		type:'GET',
		  		url : url,
		  		success: function(data){
		  			let url = 'http://localhost/shopcart/admin/cart/changstatus/' + data.id + '/' + data.status;
		  			if(data.status==1){
		  				that.html('Chưa xử lý');
		  				that.attr('href',url);
		  			}
		  			if(data.status==2){
		  				that.html('Đang vận chuyển');
		  				that.attr('href',url);
		  			}


		  		}
		  	});

		    Swal.fire(
		      'Thành công!',
		     
		      'success'
		    )
		  }
		})				
	});

});