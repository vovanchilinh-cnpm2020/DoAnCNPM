<%@ page import="vn.com.Util" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Author Infor </title>

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


<section>
    <div class="container">
        <div class="row">
            <%
                ResultSet re = (ResultSet) request.getAttribute("re");
                while (re.next()) {
            %>
            <div class="col-sm-9" style="width: 80%; margin-left: 10%">
                <div class="blog-post-area">
                    <h1 class="title text-center" style="background: radial-gradient(#fe980fd9, transparent);color: #000000cf;font-family: cursive;font-weight: bold;">AUTHOR INFORMATION</h1>
                    <div class="single-blog-post">
                        <h2><%=re.getString(2)%></h2>
                        <div class="post-meta">
                            <ul>
                                <li><i class="fa fa-user"></i>Author</li>
                                <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                <li><i class="fa fa-calendar"></i> JAN 10, 2020</li>
                            </ul>
                            <span>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</span>
                        </div>
                        <a href="">
                            <img style="width: 190px;height:250px;margin-left: 40%" src="<%=Util.fullPath(re.getString(3))%>" alt="">
                        </a>

                        <p><%=re.getString(4)%></p> <br>

                    </div>
                </div><!--/blog-post-area-->

                <div class="rating-area">
                    <ul class="ratings">
                        <li class="rate-this">Rate this item:</li>
                        <li>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </li>
                        <li class="color">(6 votes)</li>
                    </ul>

                </div><!--/rating-area-->

                <div class="socials-share">
                    <a href=""><img src="images/blog/socials.png" alt=""></a>
                </div><!--/socials-share-->

            </div>
            <%}%>
        </div>
        <div class="recommended_items"><!--recommended_items-->
            <h2 class="title text-center">The famous books</h2>
            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <%
                        int i = 1;
                        ResultSet re1 = (ResultSet) request.getAttribute("re1");
                        while (re1.next()) {
                            if (i < 5) {

                    %>
                        <div class="col-sm-4" style="width: 25%">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img style="margin-top: 20px"
                                             src=<%=Util.fullPath(re1.getString(10))%> height="220">
                                        <h2>$<%=re1.getDouble(8)%></h2>
                                        <p><%=re1.getString(6)%></p>
                                        <a href="<%=Util.fullPath("LTLproduct?id="+re1.getString(5)+"&type="+re1.getInt(7))%>" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Select</a>
                                        <a href="<%=Util.fullPath("AddCart?id="+re1.getInt(5))%>" class="btn btn-default add-to-cart"><i
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
                            re1.beforeFirst();
                            while (re1.next()) {
                                if (j > 4 && j < 9) {
                        %>
                        <div class="col-sm-4" style="width: 25%">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img style="margin-top: 20px"
                                             src=<%=Util.fullPath(re1.getString(10))%> height="220">
                                        <h2>$<%=re1.getDouble(8)%>
                                        </h2>
                                        <p><%=re1.getString(6)%></p>
                                        <a href="<%=Util.fullPath("LTLproduct?id="+re1.getString(5)+"&type="+re1.getInt(7))%>" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Select</a>
                                        <a href="<%=Util.fullPath("AddCart?id="+re1.getInt(5))%>" class="btn btn-default add-to-cart"><i
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
</body>
</html>