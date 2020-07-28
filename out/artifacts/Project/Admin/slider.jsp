<%@ page import="vn.com.User" %>
<%@ page import="vn.com.Util" %>
<%@ page import="java.sql.ResultSet" %>
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
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/fontawesome-free/css/all.css")%>">

  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/datatables-bs4/css/dataTables.bootstrap4.css")%>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%= Util.fullPath("Admin/dist/css/adminlte.min.css")%>">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="ListProduct" class="nav-link">Home</a>
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
          <span class="badge badge-warning navbar-badge"></span>
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
    <a href="/Project/Admin/index.jsp" class="brand-link">
      <img src="<%= Util.fullPath("eshopper/Img/logo.png")%>"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: 0.8">
      <span class="brand-text font-weight-light">AdminLTL</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<%= Util.fullPath("Admin/dist/img/user2-160x160.jpg")%>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">LTL</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <%--          <li class="nav-item has-treeview">--%>
          <%--            <a href="#" class="nav-link">--%>
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
          <%--            <ul class="nav nav-treeview">--%>
          <%--              <li class="nav-item">--%>
          <%--                <a href="../UI/sliders.html" class="nav-link">--%>
          <%--                  <i class="far fa-circle nav-icon"></i>--%>
          <%--                  <p>Sliders</p>--%>
          <%--                </a>--%>
          <%--              </li>--%>
          <%--              <li class="nav-item">--%>
          <%--                <a href="../UI/modals.html" class="nav-link">--%>
          <%--                  <i class="far fa-circle nav-icon"></i>--%>
          <%--                  <p>Modals & Alerts</p>--%>
          <%--                </a>--%>
          <%--              </li>--%>
          <%--              <li class="nav-item">--%>
          <%--                <a href="../UI/navbar.html" class="nav-link">--%>
          <%--                  <i class="far fa-circle nav-icon"></i>--%>
          <%--                  <p>Navbar & Tabs</p>--%>
          <%--                </a>--%>
          <%--              </li>--%>
          <%--              <li class="nav-item">--%>
          <%--                <a href="../UI/timeline.html" class="nav-link">--%>
          <%--                  <i class="far fa-circle nav-icon"></i>--%>
          <%--                  <p>Timeline</p>--%>
          <%--                </a>--%>
          <%--              </li>--%>
          <%--              <li class="nav-item">--%>
          <%--                <a href="../UI/ribbons.html" class="nav-link">--%>
          <%--                  <i class="far fa-circle nav-icon"></i>--%>
          <%--                  <p>Ribbons</p>--%>
          <%--                </a>--%>
          <%--              </li>--%>
          <%--            </ul>--%>
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
          <%--                <a href="../forms/general.html" class="nav-link">--%>
          <%--                  <i class="far fa-circle nav-icon"></i>--%>
          <%--                  <p>General Elements</p>--%>
          <%--                </a>--%>
          <%--              </li>--%>

          <%--              <li class="nav-item">--%>
          <%--                <a href="../forms/editors.html" class="nav-link">--%>
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
                  <p>Qu?n lý khách hàng</p>
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
                  <p>Quản lý loại sách</p>
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
                <a href="/Project/Slidershow" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Quản lý slide</p>
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

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Slidershow</h1>
          </div>
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
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
            </div>
            <a href="<%= Util.fullPath("countslide")%>"> <i  style="color: dodgerblue ; font-size: 20px; float: right; margin: 6px"class="fas fa-plus"></i></a>

            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">

                <thead>
                <tr>
                  <th>Id</th>
                  <th>Img</th>
                  <th>Description</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <%
                  ResultSet rslide= (ResultSet) request.getAttribute("rslide");
                  int i=1;
                  while(rslide.next()){
                %>
                <tr>
                  <td><%=rslide.getInt(1)%></td>
                  <td><img src="<%=rslide.getString(2)%>" alt="" style="width: 400px;height: 150px"></td>
                  <td><%=rslide.getString(3)%></td>
                  <td>
                    <a href="<%=Util.fullPath("checkIDSlider?id="+rslide.getString(1))%>"> <i  style="color: dodgerblue ; font-size: 20px; float: right; margin: 6px"class="fas fa-pencil-alt"></i></a>
                  </td>

                </tr>
                <% } %>
                </tbody>

              </table>
            </div>


          </div>
          <!-- /.card -->


        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright 2020 <a href="#">AdminLTL</a>.</strong> All rights
    reserved.
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
<!-- Bootstrap 4 -->
<script src="<%= Util.fullPath("Admin/plugins/bootstrap/js/bootstrap.bundle.min.js")%>"></script>
<!-- DataTables -->
<script src="<%= Util.fullPath("Admin/plugins/datatables/jquery.dataTables.js")%>"></script>
<script src="<%= Util.fullPath("Admin/plugins/datatables-bs4/js/dataTables.bootstrap4.js")%>"></script>
<!-- AdminLTE App -->
<script src="<%= Util.fullPath("Admin/dist/js/adminlte.min.js")%>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<%= Util.fullPath("Admin/dist/js/demo.js")%>"></script>
<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
        });
    });
</script>
</body>
</html>
