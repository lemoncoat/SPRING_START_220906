<%@ page contentType="text/html;charset=UTF-8"%>

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="/static/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/static/admin/dist/img/user2-160x160.jpg" class="/static/shop/img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

		  <!-- 상품관리 모드 -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                상품관리
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/category/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>카테고리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/product/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>상품목록</p>
                </a>
              </li>
            </ul>
          </li>


  		  <!-- 회원관리 모드 -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                회원관리
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/static/shop/index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>회원정보</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/static/shop/index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>메일발송</p>
                </a>
              </li>
            </ul>
          </li>
          
          
          <!-- 주문관리 모드 -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                주문관리
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/order/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>주문현황</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/static/shop/index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>취소/환불</p>
                </a>
              </li>
            </ul>
          </li>
          
          
          
     
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

