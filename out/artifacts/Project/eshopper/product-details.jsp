<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.com.Util" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Details </title>
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
<body style="">
<jsp:include page="header.jsp"></jsp:include>

<section>
    <div class="container">
        <div class="row">


            <div class="col-sm-9 padding-right" style="width: 100%">
                <div class="product-details"><!--product-details-->
                    <%
                        ResultSet pd = (ResultSet) request.getAttribute("pd");
                        while (pd.next()) {

                    %>
                    <div class="col-sm-5">
                        <div class="view-product">
                            <img src=<%= Util.fullPath(pd.getString(10))%> alt="">
                        </div>
                        <div id="similar-product" class="carousel slide" data-ride="carousel">

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item">
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book13.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book11.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book12.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book14.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                </div>
                                <div class="item">
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book13.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book14.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book12.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book11.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                </div>
                                <div class="item active">
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book13.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book12.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book14.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                    <a href=""><img src=<%=Util.fullPath("eshopper/Img/book/book11.jpg")%> width="84"
                                                    height="84" alt=""></a>
                                </div>

                            </div>

                            <!-- Controls -->
                            <a class="left item-control" href="#similar-product" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right item-control" href="#similar-product" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>

                    </div>

                    <div class="col-sm-7">
                        <div class="product-information" style="padding-top: 0px"><!--/product-information-->
                            <h1 style="background: radial-gradient(#fe980fd9, transparent);color: #000000cf;font-family: cursive;font-weight: bold; text-align: center"><%=pd.getString(6)%></h1>
                            <p></p>
                            <span>
                                <span><%=pd.getInt(8)%>$</span></br>
									<label>Quantity:</label>
									<input type="text" value="1">

								</span>
                            <p style="margin-bottom: 20px"><b>Brand:</b>LTL-BOOKSTORE</p>
                            <p style="margin-bottom: 20px"><b>Author: </b><%=pd.getString(2)%></p>
                            <p style="margin-bottom: 20px"><b>Publishing year: </b>11-2014</p>
                            <p style="margin-bottom: 20px"><b>Description:</b> <%=pd.getString(11)%>
                            </p>
                            <a style="margin-top: 60px" href="<%=Util.fullPath("AddCart?id="+pd.getInt(5))%>" class="btn btn-default add-to-cart"><i
                                    class="fa fa-shopping-cart"></i>Add to cart</a>
                            <a href=""><img src="images/product-details/share.png" class="share img-responsive" alt=""></a>
                        </div><!--/product-information-->
                    </div>
                    <%}%>
                </div><!--/product-details-->


                <div class="recommended_items"><!--recommended_items-->
                    <h2 class="title text-center">recommended books</h2>

                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <%
                                    int i = 1;
                                    ResultSet pd1 = (ResultSet) request.getAttribute("pd1");
                                    while (pd1.next()) {
                                        if (i < 5) {

                                %>
                                <div class="col-sm-4" style="width: 25%">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img style="margin-top: 20px"
                                                     src=<%=Util.fullPath(pd1.getString(6))%> height="220">
                                                <h2>$<%=pd1.getDouble(4)%></h2>
                                                <p><%=pd1.getString(2)%></p>
                                                <a href="<%=Util.fullPath("LTLproduct?id="+pd1.getString(1)+"&type="+pd1.getInt(3))%>" class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Select</a>
                                                <a href="<%=Util.fullPath("AddCart?id="+pd1.getInt(1))%>" class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                            i++;
                                        }
                                    }%>
                            </div>
                            <div class="item">
                                <%
                                    int j = 1;
                                    pd1.beforeFirst();
                                    while (pd1.next()) {
                                        if (j > 4 && j < 9) {
                                %>
                                <div class="col-sm-4" style="width: 25%">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img style="margin-top: 20px"
                                                     src=<%=Util.fullPath(pd1.getString(6))%> height="220">
                                                <h2>$<%=pd1.getDouble(4)%>
                                                </h2>
                                                <p><%=pd1.getString(2)%></p>
                                                <a href="<%=Util.fullPath("LTLproduct?id="+pd1.getString(1)+"&type="+pd1.getInt(1))%>" class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Select</a>
                                                <a href="<%=Util.fullPath("AddCart?id="+pd1.getInt(1))%>" class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                        }
                                        j++;
                                    }%>
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
</section>

<jsp:include page="footer.jsp"></jsp:include>

<link href="<%= Util.fullPath("eshopper/css/bootstrap.min.css")%>" rel="stylesheet">
<link href="<%= Util.fullPath("eshopper/css/font-awesome.min.css")%>" rel="stylesheet">
<link href="<%= Util.fullPath("eshopper/css/prettyPhoto.css")%>" rel="stylesheet">
<link href="<%= Util.fullPath("eshopper/css/price-range.css")%>" rel="stylesheet">
<link href="<%= Util.fullPath("eshopper/css/animate.css")%>" rel="stylesheet">
<link href="<%= Util.fullPath("eshopper/css/main.css")%>" rel="stylesheet">
<link href="<%= Util.fullPath("eshopper/css/responsive.css")%>" rel="stylesheet">

<script src="<%= Util.fullPath("eshopper/js/jquery.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/price-range.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/jquery.scrollUp.min.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/bootstrap.min.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/jquery.prettyPhoto.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/main.js")%>"></script>
<a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: block;"><i
        class="fa fa-angle-up"></i></a></body>
</html>