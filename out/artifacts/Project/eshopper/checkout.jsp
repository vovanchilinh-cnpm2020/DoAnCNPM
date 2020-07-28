<%@ page import="vn.com.Cart" %>
<%@ page import="vn.com.Product" %>
<%@ page import="vn.com.User" %>
<%@ page import="vn.com.Util,java.util.Date" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <link href="<%= Util.fullPath("eshopper/css/bootstrap.min.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/font-awesome.min.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/prettyPhoto.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/price-range.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/animate.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/main.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/responsive.css")%>" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Check out</li>
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
                    for (Product p : c.list()) {
                %>
                <tr>
                    <td class="cart_product" style="text-align: center ;margin-top: 20px">
                        <a href="<%=Util.fullPath("LTLproduct?id="+p.getId()+"&type="+p.getType())%>"><img src="<%=p.getImg()%>" alt="" style="width: 110px;height: 150px"></a>
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
                        <p><%=p.getQuatity()%></p>
                    </td>
                    <td class="cart_total">
                        <p class="cart_total_price">$<%=p.total()%>
                        </p>
                    </td>
                </tr>
                <%}%>
                </tbody>
            </table>
        </div>
    </div>
</section>

<section id="form" style="margin-top: 50px;margin-bottom: 100px"><!--form-->
    <div class="container">
        <div class="row">
            <div class="col-sm-4" style="margin-left: 35%">
                <div class="signup-form" style="margin-bottom: 50px;margin-top: 20px">
                    <h2>Receipt!</h2>
                    <%
                        ResultSet rs= (ResultSet) request.getAttribute("rs");
                        rs.next();
                        User u = (User) session.getAttribute("Auth");
                        if (u != null) {
                    %>
                    <form action="<%=Util.fullPath("receipt")%>" method="post">
                        <label class="control-label col-sm-2" >Fullname </label>
                        <input type="text"  name="name" value="<%=u.getUname()%>"/>
                        <label class="control-label col-sm-2" >Email </label>
                        <input type="email"  name="email" value="<%=u.getEmail()%>"/>
                        <label class="control-label col-sm-2" >Phone</label>
                        <input type="text"  name="phone" value="<%=u.getPhone()%>"/>
                        <label class="control-label col-sm-2" >Address </label>
                        <input type="text"  name="address" value="<%=u.getAddress()%>"/>
                        <label class="control-label col-sm-2" >Date </label>
                        <input type="text"  name="date" value="<%=rs.getString(1)%>"/>
                        <label class="control-label col-sm-2" >Total </label>
                        <input type="text"  name="total" value="<%=c.total()+1%>"/>

                        <button style="float: right" type="submit" class="btn btn-default">Finish</button>
                    </form>
                    <%
                        }
                    %>
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