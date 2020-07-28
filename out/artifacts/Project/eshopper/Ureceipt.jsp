<%@ page import="vn.com.User" %>
<%@ page import="vn.com.Util" %>
<%@ page import="java.sql.ResultSet" %>

<html>
<head>

    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%= Util.fullPath("Admin/plugins/fontawesome-free/css/all.css")%>">
    <link href="<%= Util.fullPath("eshopper/css/bootstrap.min.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/font-awesome.min.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/prettyPhoto.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/price-range.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/animate.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/main.css")%>" rel="stylesheet">
    <link href="<%= Util.fullPath("eshopper/css/responsive.css")%>" rel="stylesheet">
    <title>Your Receipt</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


                <div class="col-sm-6">
                    <h1 style="    margin-left: 20%;margin-bottom: 60px; font-weight: bold;">List receipt</h1>
                </div>
            <div class="table-responsive cart_info">
    <table class="table table-condensed" style="width: 80%;
                                        text-align: center;
                                        margin-left: 9%;
                                        color: black;
                                        border: 1px solid black;">
        <thead style="border-bottom: 1px solid black">
        <tr class="cart_menu">
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Date</th>
            <th>Total</th>
            <th>Active</th>
        </tr>
        </thead>
        <tbody>
        <%
            ResultSet rs= (ResultSet) request.getAttribute("re");
            while (rs.next()){
        %>
        <tr>
            <td><%= rs.getString(1)%></td>
            <td><%= rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><% if (rs.getInt(7)==1){ %>
                <i style=" color: limegreen; font-size: 20px" class="fa fa-check" > </i>
                <% }
                else{ %>
                <i  style="color: red ; font-size: 20px" class="fas fa-minus-circle "></i>
                <% } %>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script src="<%= Util.fullPath("eshopper/js/jquery.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/price-range.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/jquery.scrollUp.min.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/bootstrap.min.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/jquery.prettyPhoto.js")%>"></script>
<script src="<%= Util.fullPath("eshopper/js/main.js")%>"></script>

</body>
</html>
