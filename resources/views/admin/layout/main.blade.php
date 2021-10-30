
<!DOCTYPE html>
<html lang="en">
  <head>
      @yield('title')
      @include('admin.element.head')

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        @include('admin.element.sidebar')

        <!-- top navigation -->
        @include('admin.element.topnav')
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          @yield('content')
        </div>
          <!-- /top tiles -->






        </div>
        <!-- /page content -->

        <!-- footer content -->
        @include('admin.element.footer')
        <!-- /footer content -->
      </div>
    </div>


  @include('admin.element.script')
  </body>
</html>
