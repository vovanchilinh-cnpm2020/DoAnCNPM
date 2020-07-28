<%@ page import="vn.com.Util" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 11/28/2019
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<footer id="footer"><!--Footer-->
    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="row1">
                    <div class="col-sm-2">
                        <div class="companyinfo">
                            <h2><span>LTL</span>-Bookstore</h2>
                            <p></p>
                            <div class="address">
                                <img src=<%= Util.fullPath("eshopper/images/home/map.png")%> alt=""/>
                                <p> 208 Nguyen Huu Canh, Ward 22, Binh Thanh District, Thanh Ho Chi Minh City.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2 style="color: #ffb100fa"><u>Support Online</u></h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a>Hotline: 0397665385</a></li>
                            <li><a>Email: vovanchilinh@gmail.com</a></li>
                            <li><a href="#">Website: LTLbookstore.com.vn</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2 style="color: #ffb100fa"><u>bookstore offline</u></h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Open: 8.AM - 20.PM</a></li>
                            <li><a href="#">Address: 208 Nguyen Huu Canh, Ward 22, Binh Thanh District, Thanh Ho Chi
                                Minh City. </a></li>
                            <li><a href="#">Phone Number: 19000009</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2 style="color: #ffb100fa"><u>follow us</u></h2>
                        <ul>
                            <li>
                                <figure class="clear"><img src=<%= Util.fullPath("eshopper/Img/lib/avt1.jpg")%> height="30"
                                                           width="30"/>
                                    <figcaption>
                                        <a class="team_name"
                                           href="https://www.facebook.com/profile.php?id=100007015980386">Nguyễn Thành Tài</a>
                                        <p class="team_title">Marketing</p>
                                        <p class="team_description"></p>
                                    </figcaption>
                                </figure>
                            </li>
                            <li>
                                <figure class="clear"><img src=<%= Util.fullPath("eshopper/Img/lib/khang.png")%> height="30"
                                                           width="30"/>
                                    <figcaption>
                                        <a class="team_name" href="https://www.facebook.com/7ran.Khang">Trần Duy Khang</a>
                                        <p class="team_title">Developer</p>
                                        <p class="team_description"></p>
                                    </figcaption>
                                </figure>
                            </li>
                            <li>
                                <figure class="clear"><img src=<%= Util.fullPath("eshopper/Img/lib/avt3.jpg")%> height="30"
                                                           width="30"/>
                                    <figcaption>
                                        <a class="team_name" href="https://www.facebook.com/vo.linh.73113">Võ Văn Chí
                                            Linh</a>
                                        <p class="team_title">Manager</p>
                                        <p class="team_description"></p>
                                    </figcaption>
                                </figure>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2019 LTL-BOOKSTORE Inc. All rights reserved.</p>
                <p class="pull-right">Designed by <span><a target="_blank" href="#">T K L</a></span></p>
            </div>
        </div>
    </div>

</footer><!--/Footer-->
</body>
</html>
