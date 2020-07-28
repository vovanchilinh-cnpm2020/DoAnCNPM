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
    <title>Trang chu</title>
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
</head><!--/head-->

<body>
<jsp:include page="header.jsp"></jsp:include>
<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner" style="background: radial-gradient(#ffffff, #f7c02c)">
                        <%
                        ResultSet rslide= (ResultSet) request.getAttribute("rsSlider");
                        int t=1;
                        if (t==1){
                            rslide.next();
                    %>
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>LTL</span>-BookStore</h1>
                                <h2><%=rslide.getString(3)%></h2>
                            </div>
                            <div class="col-sm-6">
                                <img src="<%=Util.fullPath(rslide.getString(2))%>" width="100%" height="350"/>
                            </div>
                        </div>
                        <%
                                t++; }
                            if (t==2){
                                rslide.next();
                        %>
                        <div class="item">
                            <div class="col-sm-6">
                                <p style="margin-top: 80px;
                        font-family: 'Comic Sans MS';
                        font-size: 25px;
                        font-weight: bold;">
                                    <i>Để mai đọc ư? Thứ 2, 3, 4, 5, 6, 7, Chủ nhật. Đâu có thứ nào gọi là thứ mai?</i>
                                </p>
                                <p style="
                    font-family: cursive;
                    font-size: 15px;
                    margin-left: 30px;
                    margin-top: 45px;"
                                ><%=rslide.getString(3)%>
                                </p>
                            </div>
                            <div class="col-sm-6">
                                <img src="<%=Util.fullPath(rslide.getString(2))%>" width="100%" height="353"/>

                            </div>
                        </div>
                        <%
                                t++; }
                            if (t==3){
                                rslide.next();
                        %>
                        <div class="item">
                            <div class="col-sm-6">
                                <p style="margin-top: 83px;
                        font-family: 'Comic Sans MS';
                        font-size: 25px;
                        font-weight: bold;">
                                    <i><%=rslide.getString(3)%></i></p>
                            </div>
                            <div class="col-sm-6">
                                <img src="<%=Util.fullPath(rslide.getString(2))%>" width="100%" height="356"/></div>
                        </div>
                        <%
                            }
                        %>
                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Category</h2>
                    <ul class="ab">
                        <%
                            ResultSet rs = (ResultSet) request.getAttribute("rs");
                            while (rs.next()) {
                        %>
                        <li style="margin: 10px 0px;"><a href="<%=Util.fullPath("LTLshop?type="+rs.getInt(1))%>"
                                                         style="color: gray"><%= rs.getString(2)%>
                        </a></li>
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

<%--                    <div class="price-range"><!--price-range-->--%>
<%--                        <h2>Price Range</h2>--%>
<%--                        <div class="well text-center">--%>
<%--                            <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="500"--%>
<%--                                   data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br/>--%>
<%--                            <b class="pull-left">$ 0</b> <b class="pull-right">$ 500</b>--%>
<%--                        </div>--%>
<%--                    </div><!--/price-range-->--%>

                    <div class="shipping text-center"><!--shipping-->
                        <img src=<%= Util.fullPath("eshopper/Img/book/book18.jpg")%> height="300"/>

                        <img src=<%= Util.fullPath("eshopper/Img/book/book17.png")%> height="300"/>

                        <img src=<%= Util.fullPath("eshopper/Img/book/book19.jpg")%> height="300"/></div>
                    <!--/shipping-->
                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Exclusive this month</h2>
                    <%
                        int i = 1;
                        ResultSet rs1 = (ResultSet) request.getAttribute("rs1");
                        while (rs1.next()) {
                            if (i < 10) {
                    %>
                    <div class="col-sm-4" style="margin-bottom: 15px">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img style="width: 150px; height: 190px"
                                         src="<%=Util.fullPath(rs1.getString(6))%>"/>
                                    <h2>$<%=rs1.getDouble(4)%>
                                    </h2>
                                    <p><%=rs1.getString(2) %>
                                    </p>
                                    <a href="<%=Util.fullPath("LTLproduct?id="+rs1.getString(1))%>"
                                       class="btn btn-default add-to-cart"><i

                                            class="fa fa-shopping-cart"></i>Select</a>
                                    <a href="<%=Util.fullPath("AddCart?id="+rs1.getInt(1))%>"
                                       class="btn btn-default add-to-cart"><i
                                            class="fa fa-shopping-cart"></i>Add to cart</a>
                                </div>
                                <div class="product-overlay">
                                    <div class="overlay-content">
                                        <a href="<%=Util.fullPath("LTLproduct?id="+rs1.getString(1)+"&type="+rs1.getInt(3))%>"
                                           class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Select</a>
                                        <a href="<%=Util.fullPath("AddCart?id="+rs1.getInt(1))%>"
                                           class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%
                                i++;
                            }
                        }
                    %>

                </div><!--features_items-->

                <div class="category-tab"><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">

                            <li class="active"><a href="#tshirt" data-toggle="tab">Store Recommended
                            </a></li>

                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in" id="tshirt">
                            <%
                                ResultSet rs3 = (ResultSet) request.getAttribute("rs3");
                                for (int n = 1; n < 6; n++) {
                                    rs3.next();
                            %>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src=<%=Util.fullPath(rs3.getString(6))%> height="145"
                                                 alt=""/>
                                            <h2>$<%=rs3.getDouble(4)%>
                                            </h2>
                                            <p><%=rs3.getString(2)%>
                                            </p>
                                            <a href="<%=Util.fullPath("AddCart?id="+rs3.getInt(1))%>"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>

                        </div>

                    </div>
                </div><!--/category-tab-->

                <div class="recommended_items"><!--recommended_items-->
                    <h2 class="title text-center">Most popular author</h2>

                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel"
                         style="margin-bottom: 10px;">
                        <div class="carousel-inner">
                            <div class="item active">
                                <%
                                    int k;
                                    ResultSet pd = (ResultSet) request.getAttribute("pd");
                                    for (k = 1; k < 4; k++) {
                                        pd.next();
                                %>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img style="    margin-top: 20px;HEIGHT: 210PX;"
                                                     src="<%=Util.fullPath(pd.getString(3))%>"/>
                                                <h2></h2>
                                                <p><%=pd.getString(2)%>
                                                </p>
                                                <a href="<%=Util.fullPath("LTLauthor?id="+pd.getInt(1))%>"
                                                   class="btn btn-default add-to-cart">More
                                                    infor➤</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <%}%>
                            </div>
                            <div class="item">
                                <%
                                    for (k = 4; k < 7; k++) {
                                        pd.next();

                                %>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img style="margin-top: 20px;HEIGHT: 210PX;"
                                                     src="<%=Util.fullPath(pd.getString(3))%>"/>
                                                <h2></h2>
                                                <p><%=pd.getString(2)%>
                                                </p>
                                                <a href="<%=Util.fullPath("LTLauthor?id="+pd.getInt(1))%>"
                                                   class="btn btn-default add-to-cart">More
                                                    infor➤</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                            </div>
                        </div>
                        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                </div><!--/recommended_items-->
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