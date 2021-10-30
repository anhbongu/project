        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="{{ route('admin.home') }}"><i class="fa fa-home"></i> Home </a>
                   
                  </li>
                  <li><a href="{{ route('admin.category') }}"><i class="fa fa-edit"></i> Category</a></li>
                  <li><a href="{{ route('admin.product') }}"><i class="fa fa-edit"></i> Product</a></li>
                  <li><a href="{{ route('admin.slider') }}"><i class="fa fa-edit"></i> Slider</a></li>
                  <li><a href="{{ route('admin.setting') }}"><i class="fa fa-edit"></i> Setting</a></li>
                  <li><a href="{{ route('admin.user') }}"><i class="fa fa-edit"></i> User</a></li>
                  <li><a href="{{ route('admin.cart') }}"><i class="fa fa-edit"></i> Đơn hàng</a></li>
                  <li><a href="{{ route('admin.role') }}"><i class="fa fa-edit"></i> Vai trò</a></li>
                  <li><a href="{{ route('admin.permission.create') }}"><i class="fa fa-edit"></i> Thêm Quyền</a></li>

                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->


            <!-- /menu footer buttons -->
          </div>
        </div>