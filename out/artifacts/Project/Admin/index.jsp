<%@ page import="vn.com.User" %>
<%@ page import="vn.com.Util" %>
<!DOCTYPE html>
<html>
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTL</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/fontawesome-free/css/all.min.css")%>">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css")%>">
  <!-- iCheck -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css")%>">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/jqvmap/jqvmap.min.css")%>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/dist/css/adminlte.min.css")%>">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css")%>">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/daterangepicker/daterangepicker.css")%>">
  <!-- summernote -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/summernote/summernote-bs4.css")%>">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<%=Util.fullPath("Trangchu")%>" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge"></span>
        </a>

      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/Admin/index.jsp" class="brand-link">
      <img src="<%= Util.fullPath("eshopper/Img/logomain.png")%>"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: 0.8">
      <span class="brand-text font-weight-light">AdminLTL</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
<%--      <div class="user-panel mt-3 pb-3 mb-3 d-flex">--%>
<%--      <div class="image">--%>
<%--        <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">--%>
<%--      </div>--%>
<%--      <div class="info">--%>
<%--        <a href="#" class="d-block">LTL</a>--%>
<%--      </div>--%>
<%--    </div>--%>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
<%--          <li class="nav-item has-treeview menu-open">--%>
<%--            <a href="#" class="nav-link active">--%>
<%--              <i class="nav-icon fas fa-tachometer-alt"></i>--%>
<%--              <p>--%>
<%--                Dashboard--%>
<%--                <i class="right fas fa-angle-left"></i>--%>
<%--              </p>--%>
<%--            </a>--%>

<%--          </li>--%>
<%--          <li class="nav-item has-treeview">--%>
<%--            <a href="#" class="nav-link">--%>
<%--              <i class="nav-icon fas fa-tree"></i>--%>
<%--              <p>--%>
<%--                UI Elements--%>
<%--                <i class="fas fa-angle-left right"></i>--%>
<%--              </p>--%>
<%--            </a>--%>

<%--          </li>--%>
<%--          <li class="nav-item has-treeview">--%>
<%--            <a href="#" class="nav-link">--%>
<%--              <i class="nav-icon fas fa-edit"></i>--%>
<%--              <p>--%>
<%--                Forms--%>
<%--                <i class="fas fa-angle-left right"></i>--%>
<%--              </p>--%>
<%--            </a>--%>
<%--            <ul class="nav nav-treeview">--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/forms/general.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>General Elements</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/forms/editors.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Editors</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--            </ul>--%>
<%--          </li>--%>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Tables
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">

              <li class="nav-item">
                <a href="/Project/ProductType" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Quản lý khách hàng</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/Project/listReceipt" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Quản lý đơn hàng</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/Project/TypeSP" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Quản lý thể loại sách</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/Project/Author" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Quản lý tác giả</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/Project/PRODUCTT" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Quản lý sách</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/Project/contact" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Quản lý phản hồi KH</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/Project/Slidershow" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Quản lý slide</p>
                </a>
              </li>

            </ul>
          </li>
<%--          <li class="nav-header">EXAMPLES</li>--%>
<%--          <li class="nav-item">--%>
<%--            <a href="pages/calendar.html" class="nav-link">--%>
<%--              <i class="nav-icon far fa-calendar-alt"></i>--%>
<%--              <p>--%>
<%--                Calendar--%>
<%--                <span class="badge badge-info right">2</span>--%>
<%--              </p>--%>
<%--            </a>--%>
<%--          </li>--%>
<%--          <li class="nav-item has-treeview">--%>
<%--            <a href="#" class="nav-link">--%>
<%--              <i class="nav-icon far fa-envelope"></i>--%>
<%--              <p>--%>
<%--                Mailbox--%>
<%--                <i class="fas fa-angle-left right"></i>--%>
<%--              </p>--%>
<%--            </a>--%>
<%--            <ul class="nav nav-treeview">--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/mailbox/mailbox.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Mailbox</p>--%>
<%--                </a>--%>
<%--              </li>--%>

<%--              <li class="nav-item">--%>
<%--                <a href="pages/mailbox/read-mail.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Read</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--            </ul>--%>
<%--          </li>--%>
<%--          <li class="nav-item has-treeview">--%>
<%--            <a href="#" class="nav-link">--%>
<%--              <i class="nav-icon fas fa-book"></i>--%>
<%--              <p>--%>
<%--                Pages--%>
<%--                <i class="fas fa-angle-left right"></i>--%>
<%--              </p>--%>
<%--            </a>--%>
<%--            <ul class="nav nav-treeview">--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/invoice.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Invoice</p>--%>
<%--                </a>--%>
<%--              </li>--%>

<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/projects.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Projects</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/project_add.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Project Add</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/project_edit.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Project Edit</p>--%>
<%--                </a>--%>
<%--              </li>--%>

<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/contacts.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Contacts</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--            </ul>--%>
<%--          </li>--%>
<%--          <li class="nav-item has-treeview">--%>
<%--            <a href="#" class="nav-link">--%>
<%--              <i class="nav-icon far fa-plus-square"></i>--%>
<%--              <p>--%>
<%--                Extras--%>
<%--                <i class="fas fa-angle-left right"></i>--%>
<%--              </p>--%>
<%--            </a>--%>
<%--            <ul class="nav nav-treeview">--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/login.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Login</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/register.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Register</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/forgot-password.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Forgot Password</p>--%>
<%--                </a>--%>
<%--              </li>--%>
<%--              <li class="nav-item">--%>
<%--                <a href="pages/examples/recover-password.html" class="nav-link">--%>
<%--                  <i class="far fa-circle nav-icon"></i>--%>
<%--                  <p>Recover Password</p>--%>
<%--                </a>--%>
<%--              </li>--%>





<%--            </ul>--%>
<%--          </li>--%>


        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <%
                User u = (User) session.getAttribute("Auth");
                if (u != null) {
              %>
              <li class="breadcrumb-item"><a href="#"><%=u.getUname()%></a></li>
              <li class="breadcrumb-item" ><a href="/Project/doLogout">Logout</a></li>
              <%
                } else{
              %>
              <li class="breadcrumb-item active" href="<%=Util.fullPath("eshopper/login.jsp")%>">Login</li>
              <%
                }
              %>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>150</h3>

                <p>New Orders</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>53<sup style="font-size: 20px">%</sup></h3>

                <p>Bounce Rate</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>44</h3>

                <p>User Registrations</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>65</h3>

                <p>Unique Visitors</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-7 connectedSortable">

            <!-- /.card -->



            <!-- TO DO List -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="ion ion-clipboard mr-1"></i>
                  To Do List
                </h3>

                <div class="card-tools">
                  <ul class="pagination pagination-sm">
                    <li class="page-item"><a href="#" class="page-link">&laquo;</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">&raquo;</a></li>
                  </ul>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <ul class="todo-list" data-widget="todo-list">
                  <li>
                    <!-- drag handle -->
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <!-- checkbox -->
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo1" id="todoCheck1">
                      <label for="todoCheck1"></label>
                    </div>
                    <!-- todo text -->
                    <span class="text">Design a nice theme</span>
                    <!-- Emphasis label -->
                    <small class="badge badge-danger"><i class="far fa-clock"></i> 2 mins</small>
                    <!-- General tools such as edit or delete-->
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo2" id="todoCheck2" checked>
                      <label for="todoCheck2"></label>
                    </div>
                    <span class="text">Make the theme responsive</span>
                    <small class="badge badge-info"><i class="far fa-clock"></i> 4 hours</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo3" id="todoCheck3">
                      <label for="todoCheck3"></label>
                    </div>
                    <span class="text">Let theme shine like a star</span>
                    <small class="badge badge-warning"><i class="far fa-clock"></i> 1 day</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo4" id="todoCheck4">
                      <label for="todoCheck4"></label>
                    </div>
                    <span class="text">Let theme shine like a star</span>
                    <small class="badge badge-success"><i class="far fa-clock"></i> 3 days</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo5" id="todoCheck5">
                      <label for="todoCheck5"></label>
                    </div>
                    <span class="text">Check your messages and notifications</span>
                    <small class="badge badge-primary"><i class="far fa-clock"></i> 1 week</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo6" id="todoCheck6">
                      <label for="todoCheck6"></label>
                    </div>
                    <span class="text">Let theme shine like a star</span>
                    <small class="badge badge-secondary"><i class="far fa-clock"></i> 1 month</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                </ul>
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <button type="button" class="btn btn-info float-right"><i class="fas fa-plus"></i> Add item</button>
              </div>
            </div>
            <!-- /.card -->
          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">

            <!-- Map card -->
            <div class="card bg-gradient-primary">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-map-marker-alt mr-1"></i>
                  Visitors
                </h3>
                <!-- card tools -->
                <div class="card-tools">
                  <button type="button"
                          class="btn btn-primary btn-sm daterange"
                          data-toggle="tooltip"
                          title="Date range">
                    <i class="far fa-calendar-alt"></i>
                  </button>
                  <button type="button"
                          class="btn btn-primary btn-sm"
                          data-card-widget="collapse"
                          data-toggle="tooltip"
                          title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
                <!-- /.card-tools -->
              </div>
              <div class="card-body">
                <div id="world-map" style="height: 250px; width: 100%;"></div>
              </div>
              <!-- /.card-body-->
              <div class="card-footer bg-transparent">
                <div class="row">
                  <div class="col-4 text-center">
                    <div id="sparkline-1"></div>
                    <div class="text-white">Visitors</div>
                  </div>
                  <!-- ./col -->
                  <div class="col-4 text-center">
                    <div id="sparkline-2"></div>
                    <div class="text-white">Online</div>
                  </div>
                  <!-- ./col -->
                  <div class="col-4 text-center">
                    <div id="sparkline-3"></div>
                    <div class="text-white">Sales</div>
                  </div>
                  <!-- ./col -->
                </div>
                <!-- /.row -->
              </div>
            </div>
            <!-- /.card -->



            <!-- Calendar -->
            <div class="card bg-gradient-success">
              <div class="card-header border-0">

                <h3 class="card-title">
                  <i class="far fa-calendar-alt"></i>
                  Calendar
                </h3>
                <!-- tools card -->
                <div class="card-tools">
                  <!-- button with a dropdown -->
                  <div class="btn-group">
                    <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown">
                      <i class="fas fa-bars"></i></button>
                    <div class="dropdown-menu float-right" role="menu">
                      <a href="#" class="dropdown-item">Add new event</a>
                      <a href="#" class="dropdown-item">Clear events</a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">View calendar</a>
                    </div>
                  </div>
                  <button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-success btn-sm" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
                <!-- /. tools -->
              </div>
              <!-- /.card-header -->
              <div class="card-body pt-0">
                <!--The calendar -->
                <div id="calendar" style="width: 100%"></div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2020 <a href="#">AdminLTL</a>.</strong>
    All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<%= Util.fullPath("Admin/plugins/jquery/jquery.min.js")%>"></script>

<!-- jQuery UI 1.11.4 -->
<script src="<%= Util.fullPath("Admin/plugins/jquery-ui/jquery-ui.min.js")%>"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<%= Util.fullPath("Admin/plugins/bootstrap/js/bootstrap.bundle.min.js")%>"></script>
<!-- ChartJS -->
<script src="<%= Util.fullPath("Admin/plugins/chart.js/Chart.min.js")%>"></script>
<!-- Sparkline -->
<script src="<%= Util.fullPath("Admin/plugins/sparklines/sparkline.js")%>"></script>
<!-- JQVMap -->
<script src="<%= Util.fullPath("Admin/plugins/jqvmap/jquery.vmap.min.js")%>"></script>
<script src="<%= Util.fullPath("Admin/plugins/jqvmap/maps/jquery.vmap.usa.js")%>"></script>
<script src="<%= Util.fullPath("Admin/plugins/jquery-knob/jquery.knob.min.js")%>"></script>
<script src="<%= Util.fullPath("Admin/plugins/moment/moment.min.js")%>"></script>
<script  src="<%= Util.fullPath("Admin/plugins/daterangepicker/daterangepicker.js")%>"></script>
<script  src="<%= Util.fullPath("Admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js")%>"></script>
<script  src="<%= Util.fullPath("Admin/plugins/summernote/summernote-bs4.min.js")%>"></script>
<script  src="<%= Util.fullPath("Admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js")%>"></script>
<script  src="<%= Util.fullPath("Admin/dist/js/adminlte.js")%>"></script>
<script  src="<%= Util.fullPath("Admin/dist/js/pages/dashboard.js")%>"></script>
<script  src="<%= Util.fullPath("Admin/dist/js/demo.js")%>"></script>
</body>
</html>
