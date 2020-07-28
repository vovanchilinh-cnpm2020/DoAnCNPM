<%@ page import="vn.com.Util" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shop</title>
    <link href="<%= Util.fullPath("eshopper/css/bootstrap.min.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/font-awesome.min.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/prettyPhoto.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/price-range.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/animate.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/main.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/responsive.css")%>" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body style="">
<jsp:include page="header.jsp"></jsp:include>


<section id="advertisement">
    <div class="container">

        <img src=<%= Util.fullPath("eshopper/Img/book/slide-shop.jpg")%> height="400"/></div>
</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Category</h2>
                    <ul class="ab" >
                        <%
                            ResultSet rs = (ResultSet) request.getAttribute("rs");
                            while(rs.next()){
                        %>
                        <li style="margin: 10px 0px;"><a href="<%=Util.fullPath("LTLshop?type="+rs.getInt(1))%>" style="color: gray"><%= rs.getString(2)%></a></li>
                        <%}%>
                    </ul>
                    <h2>Author</h2>
                    <ul class="ab">
                        <%
                            ResultSet rsau = (ResultSet) request.getAttribute("rsau");
                            while (rsau.next()) {
                        %>
                        <li style="margin: 10px 0px;"><a href="<%=Util.fullPath("BookAuthor?author="+rsau.getInt(1))%>"
                                                         style="color: gray"><%= rsau.getString(2)%>
                        </a></li>
                        <%}%>
                    </ul>
                    <div class="price-range"><!--price-range-->
                        <h2>Price Range</h2>
                        <div class="well text-center">
                            <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="500"
                                   data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br/>
                            <b class="pull-left">$ 0</b> <b class="pull-right">$ 500</b>
                        </div>
                    </div><!--/price-range-->

                    <div class="shipping text-center"><!--shipping-->
                        <img src=<%= Util.fullPath("eshopper/Img/book/book18.jpg")%> height="300"/>

                        <img src=<%= Util.fullPath("eshopper/Img/book/book17.png")%> height="300"/>

                        <img src=<%= Util.fullPath("eshopper/Img/book/book19.jpg")%> height="300"/></div><!--/shipping-->

                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Features Items</h2>
                    <%
                        ResultSet pd3 =(ResultSet) request.getAttribute("pd3");
                        while(pd3.next()){
                    %>
                    <div class="col-sm-4">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img style="width:165px; height: 200px" src="<%= Util.fullPath(pd3.getString(4))%>"/>
                                    <h2><%=pd3.getDouble(3)%>$</h2>
                                    <p style="color: black"><%=pd3.getString(2)%></p>
                                    <a href="<%=Util.fullPath("LTLproduct?id="+pd3.getString(1)+"&type="+pd3.getInt(5))%>" class="btn btn-default add-to-cart"><i
                                            class="fa fa-shopping-cart"></i>Select</a>
                                    <a href="<%=Util.fullPath("AddCart?id="+pd3.getInt(1))%>" class="btn btn-default add-to-cart"><i
                                            class="fa fa-shopping-cart"></i>Add to cart</a>
                                </div>
                                <div class="product-overlay">
                                    <div class="overlay-content">

                                        <a href="<%=Util.fullPath("LTLproduct?id="+pd3.getString(1)+"&type="+pd3.getInt(5))%>" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Select</a>
                                        <a  href="<%=Util.fullPath("AddCart?id="+pd3.getInt(1))%>" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}%>
                    <ul class="pagination">
                        <li class="active"><a href="LTLshop">1</a></li>
                        <li><a href="ListProduct">2</a></li>
                        <li><a href="ListProduct">3</a></li>
                        <li><a href="ListProduct">»</a></li>
                    </ul>
                </div><!--features_items-->
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

<a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: none;"><i class="fa fa-angle-up"></i></a>
</body>
</html>
