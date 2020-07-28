<%@ page import="vn.com.Cart" %>
<%@ page import="vn.com.Product" %>
<%@ page import="vn.com.Util" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart</title>

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
<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Shopping Cart</li>
            </ol>
        </div>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">Item</td>
                    <td class="description"></td>
                    <td class="price">Price</td>
                    <td class="quantity">Quantity</td>
                    <td class="total">Total</td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <%
                    Cart c = (Cart) session.getAttribute("Cart");
                    if (c != null) {
                        for (Product p : c.list()) {
                %>
                <tr>
                    <td class="cart_product" style="text-align: center ;margin-top: 20px">
                        <a href="<%=Util.fullPath("LTLproduct?id="+p.getId()+"&type="+p.getType())%>"><img
                                src="<%=p.getImg()%>" alt="" style="width: 110px;height: 150px"></a>
                    </td>
                    <td class="cart_description">
                        <h4><a href=""><%=p.getName()%>
                        </a></h4>
                        <p>Web ID: 1089772</p>
                    </td>
                    <td class="cart_price">
                        <p>$<%=p.getPrice()%>
                        </p>
                    </td>
                    <td class="cart_quantity">
                        <div class="cart_quantity_button">
                            <a class="cart_quantity_down" href="<%="QuantityDown?id="+p.getId()%>"> - </a>
                            <input class="cart_quantity_input" type="text" name="quantity" value="<%=p.getQuatity()%>"
                                   autocomplete="off" size="2">
                            <a class="cart_quantity_up" href="<%="QuantityUp?id="+p.getId()%>"> + </a>

                        </div>
                    </td>
                    <td class="cart_total">
                        <p class="cart_total_price">$<%=p.total()%>
                        </p>
                    </td>
                    <td class="cart_delete">
                        <a style="color: red" class="cart_quantity_delete"
                           href="<%=Util.fullPath("Remove?id="+p.getId())%>"><i class="fa fa-times"></i></a>
                    </td>
                </tr>
                <%
                        }
                    } else {
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</section> <!--/#cart_items-->


<section id="do_action">
    <div class="container" style="width: auto">
        <div class="heading">
            <h3>What would you like to do next?</h3>
            <p>Choose if you have a discount code or reward points you want to use or would like to estimate your
                delivery cost.</p>
        </div>
        <div class="row">

            <div class="col-sm-6">
                <div class="total_area">

                    <ul>
                        <li>Cart Sub Total <span><%=c!=null ? c.total() : ""%></span><span>$</span></li>
                        <li>Shipping Cost <span>$1</span></li>
                        <li>Total <span><%=c!=null ? c.total() + 1 :"" %></span><span>$</span></li>
                    </ul>
                    <a class="btn btn-default check_out" href="<%=Util.fullPath("CheckOut")%>">Check Out</a>
                </div>
            </div>
        </div>
    </div>
</section><!--/#do_action-->

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