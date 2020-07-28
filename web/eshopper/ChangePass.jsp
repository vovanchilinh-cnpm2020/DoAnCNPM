<%@ page import="vn.com.User" %>
<%@ page import="vn.com.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
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
    <title>Change Password</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section id="form" style="margin-top: 50px;margin-bottom: 100px"><!--form-->
    <div class="container">
        <div class="row">
            <div class="col-sm-4" style="margin-left: 35%">
                <div class="signup-form" style="margin-bottom: 50px;margin-top: 20px">

                    <h2>Change Password!</h2>
                    <span><%=request.getAttribute("eror")!=null ? request.getAttribute("eror"):""%></span>
                    <form action="<%=Util.fullPath("ChangePass")%>" method="post">
                        <input type="password" placeholder="Enter your password" name="pass" value=""/>
                        <input type="password" placeholder="Enter new pass" name="new" value=""/>
                        <input type="password" placeholder="Enter repass" name="renew" value=""/>
                        <button style="float: right" type="submit" class="btn btn-default">Finish</button>
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
