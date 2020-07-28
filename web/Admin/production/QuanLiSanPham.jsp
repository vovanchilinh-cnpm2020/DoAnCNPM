<%@page import="model.TheLoai"%>
<%@page import="Dao.TheLoaiDao"%>
<%@page import="Dao.SanPhamDAO"%>
<%@page import="model.SanPham"%>
<%@page import="model.NhaXuatBan"%>
<%@page import="Dao.NhaXuatBanDao"%>
<%@page import="Dao.TacGiaDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- <% Admin ad = (Admin) session.getAttribute("admin"); %>
<%if(ad==null){ %>
		<jsp:forward page="dangnhap.jsp"></jsp:forward>
	<%} %> --%>
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
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
	
<title>Quản lý sản phẩm</title>

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
<script src="../jquery/jquery.min.js"></script>
<script src="../jquery/ajaxupload.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script>
$(document).ready(function() {
    $('#myForm').bind({
    	
        'submit': function() {
            if ($('#tensach').val()=='') {

                $('#error_tensach').html('Bạn chưa nhập tên truyện');
                return false;
            }
            if ($('#matheloai').val()=='Chọn thể loại') {
                $('#error_matheloai').html('Bạn chưa chọn thể loại');
                return false;
            }
            if ($('#socuon').val()=='') {
                $('#error_socuon').html('Bạn chưa nhập số cuốn');
                return false;
            }
            if ($('#hinhanh').val()=='') {
                $('#error_hinhanh').html('Bạn chưa chọn ảnh');
                return false;
            }
            if ($('#gia').val()=='') {
                $('#error_gia').html('Bạn chưa nhập giá');
                return false;
            }
            
            if ($('#manhaxuatban').val()=='Chọn nhà xuất bản') {
                $('#error_manhaxuatban').html('Bạn chưa chọn nhà xuất bản');
                return false;
            }
            return true;
        },
        'keydown': function() {
          
            if ($('#tensach').val().length > 0) {
                $('#error_tensach').html('');
            }
            if ($('#matheloai').val().length > 0) {
                $('#error_matheloai').html('');
            }
            if ($('#socuon').val().length > 0) {
                $('#error_socuon').html('');
            }
            if ($('#hinhanh').val().length > 0) {
                $('#error_hinhanh').html('');
            }
            if ($('#gia').val().length > 0) {
                $('#error_gia').html('');
            }
            if ($('#manhaxuatban').val().length > 0) {
                $('#error_manhaxuatban').html('');
            }
            
           
            
           
         
        }
    });
    $('#manhaxuatban').on('change',function(){
    	var manhaxuatban =  $('#manhaxuatban').val();
    	var matacgia = $('#matacgia');
    	matacgia[0].options.length =0; // xóa hết
    	matacgia.append('<option>Đang load...</option>');
		
    	$.ajax({
    		url:'<%=application.getContextPath()%>/Ajax?manxb='+manhaxuatban,
    		type:'get',
    		success:function(data){ // data chính là danh sách hãng sản xuất
    			matacgia[0].options.length =0; // xóa lần nữa cụ thể là Đang tải dữ liệu
    			var ds = JSON.parse(data);
    			 ds.forEach(function(value){ // value chính là 1 phần tử của danh sách
    				var option = document.createElement('option');
    				option.value = value.maTacGia;
    				option.innerHTML = value.tenTacGia;
    				matacgia.append(option);
    			});
    		},
    		error:function(err){
    			
    		}
    		
    		
    	});
    	
    	
    });
});

</script>
<script language="Javascript">
$(document).ready(function(){
$('input[type="file"]').ajaxfileupload({ 'action': '../../../UploadFile',
'onComplete': function(response) {
	$('#upload').hide();
	$('#uploadComplete').show();

	alert("File SAVED!!");
	},
	'onStart': function() {
	$('#uploadComplete').hide();
	$('#upload').show();
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
							<h3>Quản lý sản phẩm</h3>
						</div>

						
					</div>

					<div class="clearfix"></div>
					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<center>
										<h4 class="modal-title">Thêm sản phẩm</h4>
									</center>
								</div>
								<div class="modal-body">
									<div class="container">
										<form class="form-horizontal"
											action="<%=request.getContextPath()%>/SanPhamController"
											method="post" id="myForm">
											<div style="display: none">
												<input type="text" class="form-control" id="action"
													name="action" value="them" onkeydown="">
											</div>

											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Tên
													sản phẩm:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="tensach"
														placeholder="Nhập tên truyện" name="tensach">
													<p id="error_tensach" style="color: red;"></p>
												</div>
											</div>
												<%
												ArrayList<TheLoai> l1 = TheLoaiDao.getListTL();
											%>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Thể loại</label>
												<div class="col-sm-4">
													<select class="form-control" id="matheloai"
														name="matheloai">
														<option>Chọn thể loại</option>
														<%
															for (int i = 0; i < l1.size(); i++) {
														%>
														<option value="<%=l1.get(i).getMaTheLoai()%>"><%=l1.get(i).getTenTheLoai()%>
														</option>

														<%
															}
														%>
													</select>
													<p id="error_matheloai" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Số
													cuốn:</label>
												<div class="col-sm-4">
													<input type="number" class="form-control" id="socuon"
														placeholder="Nhập số cuốn" name="socuon">
													<p id="error_socuon" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Hình
													ảnh</label>
												<div class="col-sm-4">
													<input type="file" class="form-control" id="hinhanh"
														placeholder="" name="hinhanh">
													<p id="error_socuon" style="color: red;"></p>
													<p id="error_hinhanh" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Giá:</label>
												<div class="col-sm-4">
													<input type="number" class="form-control" id="gia"
														placeholder="Nhập giá" name="gia">
													<p id="error_gia" style="color: red;"></p>
												</div>
											</div>
											<%
												ArrayList<NhaXuatBan> l = NhaXuatBanDao.getListNXB();
											%>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Nhà
													xuất bản</label>
												<div class="col-sm-4">
													<select class="form-control" id="manhaxuatban"
														name="manhaxuatban">
														<option>Chọn nhà xuất bản</option>
														<%
															for (int i = 0; i < l.size(); i++) {
														%>
														<option value="<%=l.get(i).getMaNhaXuatBan()%>"><%=l.get(i).getTenNhaXuatBan()%>
														</option>

														<%
															}
														%>
													</select>
													<p id="error_manhaxuatban" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Tác giả:</label>
												<div class="col-sm-4">
													<select class="form-control" id="matacgia"
														name="matacgia">

														<option>Chọn tác giả</option>


													</select>
													<p id="error_matacgia" style="color: red;"></p>
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
									
									
								

									
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									
									<table id="datatable-buttons" class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>STT</th>
												<th>Mã sách</th>
												<th>Tên sách</th>
												<th>Thể loại</th>
												<th>Tác giả</th>
												<th>Nhà xuất bản</th>
												<th>Số cuốn</th>
												<th>Hình ảnh</th>
												<th>Giá</th>
												<th>Thao tác</th>
											</tr>
										</thead>
										<tbody>
											<%
												ArrayList<SanPham> sp = SanPhamDAO.getListSanPham();
												int count = 0;
												for (int i = 0; i < sp.size(); i++) {
													count++;
											%>

											<tr>
												<td><%=count%></td>
												<td><%=sp.get(i).getMaSach()%></td>
												<td><%=sp.get(i).getTenSach()%></td>
												<td><%=TheLoaiDao.tenTL(sp.get(i).getMaTheloai())%></td>
												<td><%=TacGiaDao.tenTG(sp.get(i).getMaTacGia())%></td>
												<td><%=NhaXuatBanDao.tenNXB(sp.get(i).getMaNhaXuatBan())%></td>
												<td><%=sp.get(i).getSoCuon()%></td>
												<%-- <td><img src="<%=sp.get(i).getHinhAnh()%>"
											class="img-responsive" alt="Image"
											style="width: 50px !important; height: 50px !important"></td> --%>
												<td><a href="#" data-toggle="modal" data-target="#XemAnh<%=sp.get(i).getMaSach()%>" title="Xem chi tiết"><button type="button" class="btn btn-info">Xem ảnh</button></a></td>
												<td><%=sp.get(i).getGia()%></td>
												<td><a
													href="#"
													class="btn btn-success xem" data-toggle="modal" data-target="#Xem<%=sp.get(i).getMaSach()%>" title="Xem chi tiết"
													id="xem-' + t.maNhanVien + '"><i class="fa fa-search"></i></a>

													<a href="#"
													class="btn btn-success xem" data-toggle="modal" data-target="#Sua<%=sp.get(i).getMaSach()%>" title="Chỉnh sửa thông tin "
													id="sua-' + t.maNhanVien + '"><i class="fa fa-retweet"
														aria-hidden="true"></i></a> <a class="btn btn-danger xoa"
													data-toggle="modal" data-target="#Xoa<%=sp.get(i).getMaSach()%>"
													title="Xóa truyện này"><i class="fa fa-times"
														aria-hidden="true"></i></a></td>
											</tr>
											<%} %>
										</tbody>
									</table>
									<% for(int i=0;i<sp.size();i++){%>
		<div id="XemAnh<%=sp.get(i).getMaSach()%>" class="modal fade"
			role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Ảnh sản phẩm</h4>
					</div>
					<div class="modal-body" style="text-align: center;">
						<img alt="" src="<%=sp.get(i).getHinhAnh()%>">
					</div>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<div id="Xoa<%=sp.get(i).getMaSach()%>" class="modal fade"
			role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông báo</h4>
					</div>
					<div class="modal-body" style="text-align: center;">
						Bạn có chắc chắn xóa truyện <%out.print(sp.get(i).getTenSach()); %>?
					</div>
					<div class="modal-footer">
						<a href="<%=request.getContextPath()%>/SanPhamController?action=xoa&maTruyen=<%=sp.get(i).getMaSach()%>">
							<button type="button" class="btn btn-danger">Có</button>
						</a>
						<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
					</div>
				</div>
			</div>
		</div>
		<div id="Xem<%=sp.get(i).getMaSach()%>" class="modal fade"
			role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông tin sách</h4>
					</div>
					<div class="modal-body" style="margin-left: 200px;">
						<p>Mã sách: <%out.print(sp.get(i).getMaSach()); %></p>
						<p>Tên sách: <%out.print(sp.get(i).getTenSach()); %> </p>
						<p>Thể loại: <%out.print(TheLoaiDao.tenTL(sp.get(i).getMaTheloai())); %> </p>
						<p>Số cuốn: <%out.print(sp.get(i).getSoCuon()); %> </p>
						<p>Giá: <%out.print(sp.get(i).getGia()); %> </p> 
						<p>Tác giả: <%out.print(TacGiaDao.tenTG(sp.get(i).getMaTacGia())); %> </p>
						<p>Nhà xuất bản: <%out.print(NhaXuatBanDao.tenNXB(sp.get(i).getMaNhaXuatBan())); %> </p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<div id="Sua<%=sp.get(i).getMaSach()%>" class="modal fade"
			role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Sửa thông tin sách</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal"
											action="<%=request.getContextPath()%>/SanPhamController"
											method="post" id="myForm">
											<div style="display: none">
												<input type="text" class="form-control" id="action"
													name="action" value="sua" onkeydown="">
											</div>
											
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Mã sách:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="masach"
														name="masach" value="<%out.print(sp.get(i).getMaSach()); %>" readonly="readonly">
													<p id="error_masach" style="color: red;"></p>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Tên sách:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="tensach"
														name="tensach" value="<%out.print(sp.get(i).getTenSach()); %> ">
													<p id="error_tensach" style="color: red;"></p>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Số cuốn:</label>
												<div class="col-sm-4">
													<input type="number" class="form-control" id="socuon"
														name="socuon" value="<%out.print(sp.get(i).getSoCuon()); %> ">
													<p id="error_socuon" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Giá:</label>
												<div class="col-sm-4">
													<input type="number" class="form-control" id="gia"
														name="gia" value="<%out.print(sp.get(i).getGia()); %> ">
													<p id="error_gia" style="color: red;"></p>
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
				 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>