
<!DOCTYPE html>
<html lang="en">
<head>
	@include('user.element.head')
       

</head><!--/head-->

<body>
	@include('user.element.header')
	
	

	
	@yield('content')
	
	@include('user.element.footer')
	@include('user.element.script')
	

  

</body>
</html>