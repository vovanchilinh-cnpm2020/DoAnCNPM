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

    <title>Đăng nhập trang admin| </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="<%=request.getContextPath()%>/XuLiDangNhapAdmin" method="post">
              <h1>Đăng nhập</h1>
              <div>
                <input type="text" name="tendangnhap" class="form-control" placeholder="Tên đăng nhập" required="" />
              </div>
              <div>
                <input type="password" name="matkhau" class="form-control" placeholder="Mật khẩu" required="" />
              </div>
              <div>
               <button type="submit" class="btn btn-default">Đăng nhập</button>
               <!--  <a class="reset_pass" href="#">Lost your password?</a> -->
              </div>

              <div class="clearfix"></div>

              <div class="separator">
              <!--   <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p> -->

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Lập trình web</h1>
                  <p>©2018 Cô Mai Anh Thơ -  Cô Trần Thị Thanh Nga</p>
                   <p>© Liên hệ <a href="https://www.facebook.com/profile.php?id=100020447350181" target="_blank">Phan Đức Anh</a> hoặc 15130008@st.hcmuaf.edu.vn để lấy tài khoản admin</p>
                </div>
              </div>
            </form>
          </section>
        </div>

      
      </div>
    </div>
  </body>
</html>
