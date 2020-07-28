<%@ page import="vn.com.Util" %>
<%@ page import="vn.com.Cart" %>
<%@ page import="vn.com.User" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 11/28/2019
  Time: 11:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="Trangchu" style="font-size: 16px;font-family: 'Comic Sans MS'">Welcome to
                                bookstore!!!</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-md-4 clearfix">
                    <div class="logo pull-left">
                        <a href="Trangchu"><img src=<%= Util.fullPath("eshopper/Img/logomain.png")%>
                                                height="100px" width="200px" alt=""/></a>
                    </div>

                </div>
                <div class="col-md-8 clearfix">
                    <div class="shop-menu clearfix pull-right">
                        <ul class="nav navbar-nav">
                            <%
                                User u = (User) session.getAttribute("Auth");
                                if (u != null) {
                            %>
                            <li><button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg" style="margin-top: 4px; background: white; color: darkorange"><i class="fa fa-user"></i> <%=u.getUname()%>
                            </button></li>
                            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                                <div class="modal-dialog modal-lg" role="document" style="margin-right: 230px">
                                    <div class="modal-content" style="margin-top: 75px;width: 240px;float: right;">
                                        <div class="modal-body">
                                            <div class="row" style="padding-top: 0px">
                                                <div class="col-md-5 col-lg-5 block">
                                                    <li style="background: darkorange;
                                                        margin-bottom: 10px;
                                                        width: 160px;
                                                        text-align: left;
                                                        padding: 5px;">
                                                        <a href="<%=Util.fullPath("UReceipt")%>" style="background: darkorange;color: white;"> <i class="glyphicon glyphicon-edit"></i>  View orders</a></li>

                                                    <li style="background: darkorange;
                                                        margin-bottom: 10px;
                                                        width: 160px;
                                                        text-align: left;
                                                        padding: 5px;" >
                                                        <a href="<%=Util.fullPath("eshopper/ChangePass.jsp")%>" style="background: darkorange;color: white;"> <i class="fa fa-key"></i>  Change password</a></li>
                                                    <li style="background: darkorange;
                                                        margin-bottom: 10px;
                                                        width: 160px;
                                                        text-align: left;
                                                        padding: 5px;">
                                                        <a href="<%=Util.fullPath("eshopper/ChangeInfor.jsp")%>" style="background: darkorange;color: white;"><i class="glyphicon glyphicon-edit"></i>  Update infor</a></li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <li><a href="doLogout" style="color: darkorange"> <i class="fa fa-lock"></i>Logout</a>
                            </li>
                            <%
                            } else {
                            %>
                            <li><a href="<%=Util.fullPath("eshopper/register.jsp")%>"><i class="fa fa-user"></i>
                                Register </a></li>

                            <li><a href="<%=Util.fullPath("eshopper/login.jsp")%>"> <i class="fa fa-lock"></i>Login</a>
                            </li>
                            <%
                                }
                            %>
                            <%
                                Cart c = (Cart) session.getAttribute("Cart");
                                int count = c == null ? 0 : c.list().size();
                            %>
                            <li><a href="<%=Util.fullPath("showCart")%>"><i class="fa fa-shopping-cart"></i> Cart</a>
                            <li style="text-align: center;
                                        position: absolute;
                                        padding-left: 0px;
                                        margin-left: -5px;
                                        height: 18px;
                                        width: 18px;
                                        background: red;
                                        color: white;
                                        border-radius: 50%;
                                    }">
                                <%= c != null ? count : 0 %>
                            </li>

                            </li>
                        </ul>
                    </div>
                </div>
                <div class="header-bottom"><!--header-bottom-->
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse"
                                        data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><a href="<%=Util.fullPath("Trangchu")%>" class="active">HOME</a></li>
                                    <li class="dropdown"><a href="#">CATEGORIES<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="<%=Util.fullPath("LTLshop?type=1")%>">COMIC</a></li>
                                            <li><a href="<%=Util.fullPath("LTLshop?type=2")%>">NOVEL</a></li>
                                            <li><a href="<%=Util.fullPath("LTLshop?type=3")%>">LITERATURE</a></li>
                                            <li><a href="<%=Util.fullPath("LTLshop?type=4")%>">ENGLISH</a></li>
                                            <li><a href="<%=Util.fullPath("LTLshop?type=5")%>">CALTURAL</a></li>
                                            <li><a href="<%=Util.fullPath("LTLshop?type=6")%>">ECONOMIC</a></li>
                                            <li><a href="<%=Util.fullPath("LTLshop?type=7")%>">KID</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="eshopper/about.jsp">ABOUT</a>
                                    </li>

                                    <li><a href="eshopper/contact-us.jsp">CONTACT</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <form class="search_box pull-right" action="<%=Util.fullPath("checkSearch")%>"
                                  method="post">
                                <input type="text" name="search" placeholder="Search" value=""/>
                           </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div><!--/header-middle-->

</header><!--/header-->

</body>
</html>
