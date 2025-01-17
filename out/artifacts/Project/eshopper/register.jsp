<%@ page import="vn.com.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Register</title>
    <link href="<%= Util.fullPath("eshopper/css/bootstrap.min.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/font-awesome.min.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/prettyPhoto.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/price-range.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/animate.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/main.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/responsive.css")%>" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section id="form" style="margin-top: 50px;margin-bottom: 100px"><!--form-->
    <div class="container">
        <div class="row">
            <div class="col-sm-4" style="margin-left: 35%">
                <div class="signup-form" style="margin-bottom: 50px;margin-top: 20px">
                    <h2>New User Signup!</h2>
                    <span><%=request.getAttribute("pass")== "" ? request.getAttribute("erorname"):""%></span>
                    <form action="<%=Util.fullPath("register")%>" method="post">
                        <input type="text" placeholder="User Name" name="user" value="<%=request.getAttribute("user") != null ? request.getAttribute("user") : ""%>"/>
                        <input type="email" placeholder="Email Address" name="mail" value="<%=request.getAttribute("email") != null ? request.getAttribute("email") : ""%>"/>
                        <input type="text" placeholder="Number Phone" name="phone" value="<%=request.getAttribute("phone") != null ? request.getAttribute("phone") : ""%>"/>
                        <input type="text" placeholder="Your address" name="address" value="<%=request.getAttribute("address") != null ? request.getAttribute("address") : ""%>"/>
                        <input type="password" placeholder="Password" name="pass"/>
                        <input type="password" placeholder="RePassword" name="repass"/>

                        <button style="float: right" type="submit" class="btn btn-default">Signup</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
            <jsp:include page="footer.jsp"></jsp:include>
            <script src="<%= Util.fullPath("eshopper/js/jquery.js")%>"></script>
            <script src="<%= Util.fullPath("eshopper/js/price-range.js")%>"></script>
            <script src="<%= Util.fullPath("eshopper/js/jquery.scrollUp.min.js")%>"></script>
            <script src="<%= Util.fullPath("eshopper/js/bootstrap.min.js")%>"></script>
            <script src="<%= Util.fullPath("eshopper/js/jquery.prettyPhoto.js")%>"></script>
            <script src="<%= Util.fullPath("eshopper/js/main.js")%>"></script>
</body>
</html>
