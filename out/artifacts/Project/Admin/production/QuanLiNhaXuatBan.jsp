<%@page import="Dao.NhaXuatBanDao"%>
<%@page import="model.NhaXuatBan"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Quản lý nhà xuất bản</title>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- Datatables -->
<link
	href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="../build/css/custom.min.css" rel="stylesheet">
<%
	ArrayList<NhaXuatBan> list =  NhaXuatBanDao.getListNXB();

%>
<script>
        $(document).ready(function() {
            
            $('#myForm').bind({
                'submit': function() {
                   /*  if (!validateEmail($('#tenkhachhang').val())) {
                        $('#error_tenkhachhang').html('Bạn chưa nhập tên khách hàng');
                        return false;
                    } */
                    if ($('#tennhaxuatban').val()=='') {
                        $('#error_tennhaxuatban').html('Bạn chưa nhập tên nhà xuất bản');
                        return false;
                    }
                   
                    var tennhaxuatban = $('#tennhaxuatban').val();
                    var listNhaXuatBan = [];
                    
                    <%for (NhaXuatBan val : list) {%>
                    listNhaXuatBan.push('<%=val.getTenNhaXuatBan()%>');
					<%}%>

							if (listNhaXuatBan.indexOf(tennhaxuatban) > -1) { 
													$('#error_tennhaxuatban')
															.html(
																	'Đã tồn tại nhà xuất bản này');
													return false;
												}
												return true;
											},
											'keydown' : function() {
												if ($('#tennhaxuatban').val().length > 0) {
													$('#error_tennhaxuatban')
															.html('');
												}
												
											}
										});
					});
</script>

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><i class="fa fa-paw"></i>
							<span>Group 08</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Xin chào,</span>
							<h2>Admin</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-home"></i> Quản lý <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="QuanLiKhachHang.jsp">Quản lý khách hàng</a></li>
										<li><a href="QuanLiNhaXuatBan.jsp">Quản lý nhà xuất bản</a></li>
										<li><a href="QuanLiTacGia.jsp">Quản lý tác giả</a></li>
										<li><a href="QuanLiSanPham.jsp">Quản lý sản phẩm</a></li>
									</ul></li>
								<li><a><i class="fa fa-edit"></i> Forms <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="thongkesoluong.jsp">Thống kê số lượng</a></li>
										<li><a href="thongketacgia.jsp">Thống kê tác giả</a></li>
										
									</ul></li>
								
							</ul>
						</div>
						
					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="login.html"> <span class="glyphicon glyphicon-off"
							aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img src="images/img.jpg" alt="">Admin<span class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									
									<li><a href="dangnhap.jsp"><i
											class="fa fa-sign-out pull-right"></i>Đăng xuất</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Quản lý nhà xuất bản</h3>
						</div>

						
					</div>

					
					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<center>
										<h4 class="modal-title">Thêm nhà xuất bản</h4>
									</center>
								</div>
								<div class="modal-body">
									<div class="container">
										<form class="form-horizontal"
											action="<%=request.getContextPath()%>/NhaXuatBanController"
											method="post" id="myForm">
											<div style="display: none">
												<input type="text" class="form-control" id="action"
													name="action" value="them" onkeydown="">
											</div>

											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Tên
													nhà xuất bản:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="tennhaxuatban"
														placeholder="Nhập tên nhà xuất bản" name="tennhaxuatban">
													<p id="error_tennhaxuatban" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd"></label>
												<div class="col-sm-4">
													<button type="submit" class="btn btn-success">
														<span class="glyphicon glyphicon-plus"></span> Thêm
													</button>

												</div>
											</div>


										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Đóng</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<button type="button" class="btn btn-success"
										data-toggle="modal" data-target="#myModal">
										<i class="fa fa-user-plus" aria-hidden="true"></i></span>&nbsp; Thêm
										mới
									</button>
									
									
								

									
										
								</div>
								<div class="x_content">
									
									<table id="datatable-buttons" class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>STT</th>
												<th>Mã nhà xuất bản</th>
												<th>Tên nhà xuất bản</th>
												<th>Thao tác</th>
											</tr>
										</thead>
										<tbody>
											<%
												ArrayList<NhaXuatBan> nxb = NhaXuatBanDao.getListNXB();
												int count = 0;
												for (int i = 0; i < nxb.size(); i++) {
													count++;
											%>

											<tr>
												<td><%=count%></td>
												<td><%=nxb.get(i).getMaNhaXuatBan()%></td>
												<td><%=nxb.get(i).getTenNhaXuatBan()%></td>
												<td><a
													href="#"
													class="btn btn-success xem" data-toggle="modal" data-target="#Xem<%=nxb.get(i).getMaNhaXuatBan()%>" title="Xem chi tiết"
													id="xem-' + t.maNhanVien + '"><i class="fa fa-search"></i></a>

													<a href="#"
													class="btn btn-success sua" data-toggle="modal" data-target="#Sua<%=nxb.get(i).getMaNhaXuatBan()%>" title="Chỉnh sửa thông tin "
													id="sua-' + t.maNhanVien + '"><i class="fa fa-retweet"
														aria-hidden="true"></i></a> <a class="btn btn-danger xoa"
													data-toggle="modal" data-target="#Xoa<%=nxb.get(i).getMaNhaXuatBan()%>"
													title="Xóa nhà xuất bản này"><i class="fa fa-times"
														aria-hidden="true"></i></a></td>
											</tr>
											<%} %>
										</tbody>
									</table>
									<% for(int i=0;i<nxb.size();i++){%>

		<div id="Xoa<%=nxb.get(i).getMaNhaXuatBan()%>" class="modal fade"
			role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông báo</h4>
					</div>
					<div class="modal-body" style="text-align: center;">
						Bạn có chắc chắn xóa nhà xuất bản <%out.print(nxb.get(i).getTenNhaXuatBan()); %>?
					</div>
					<div class="modal-footer">
						<a href="<%=request.getContextPath()%>/NhaXuatBanController?action=xoa&manhaxuatban=<%=nxb.get(i).getMaNhaXuatBan()%>">
							<button type="button" class="btn btn-danger">Có</button>
						</a>
						<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
					</div>
				</div>
			</div>
		</div>
		<div id="Xem<%=nxb.get(i).getMaNhaXuatBan()%>" class="modal fade"
			role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông tin nhà xuất bản</h4>
					</div>
					<div class="modal-body" style="margin-left: 200px;">
						<p>Mã nhà xuất bản: <%out.print(nxb.get(i).getMaNhaXuatBan()); %></p>
						<p>Tên nhà xuất bản: <%out.print(nxb.get(i).getTenNhaXuatBan()); %> </p>
						
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<div id="Sua<%=nxb.get(i).getMaNhaXuatBan()%>" class="modal fade"
			role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Sửa thông tin nhà xuất bản</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal"
											action="<%=request.getContextPath()%>/NhaXuatBanController"
											method="post" id="myForm">
											<div style="display: none">
												<input type="text" class="form-control" id="action"
													name="action" value="sua" onkeydown="">
											</div>
											
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Mã nhà xuất bản:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="manhaxuatban"
														name="manhaxuatban" value="<%out.print(nxb.get(i).getMaNhaXuatBan()); %>" readonly="readonly">
													<p id="error_makhachhang" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Tên
													xuất bản:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="tennhaxuatban"
														name="tennhaxuatban" value="<%out.print(nxb.get(i).getTenNhaXuatBan()); %> ">
													<p id="error_tenkhachhang" style="color: red;"></p>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd"></label>
												<div class="col-sm-4">
													<button type="submit" class="btn btn-success">
														<span class="glyphicon glyphicon-save-file"></span> Cập nhật
													</button>

												</div>
											</div>


										</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<%} %>
		
								</div>
							</div>
						</div>
						<!-- /page content -->

						<!-- footer content -->
						<footer>
							<div class="pull-right">
								Gentelella - Bootstrap Admin Template by <a
									href="https://colorlib.com">Colorlib</a>
							</div>
							<div class="clearfix"></div>
						</footer>
						<!-- /footer content -->
					</div>
				</div>

				<!-- jQuery -->
				<script src="../vendors/jquery/dist/jquery.min.js">
					
				</script>
				<!-- Bootstrap -->
				<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
				<!-- FastClick -->
				<script src="../vendors/fastclick/lib/fastclick.js"></script>
				<!-- NProgress -->
				<script src="../vendors/nprogress/nprogress.js"></script>
				<!-- iCheck -->
				<script src="../vendors/iCheck/icheck.min.js"></script>
				<!-- Datatables -->
				<script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
				<script
					src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
				<script
					src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
				<script
					src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
				<script
					src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
				<script
					src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
				<script
					src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
				<script src="../vendors/jszip/dist/jszip.min.js"></script>
				<script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
				<script src="../vendors/pdfmake/build/vfs_fonts.js"></script>

				<!-- Custom Theme Scripts -->
				<script src="../build/js/custom.min.js"></script>
</body>
</html>