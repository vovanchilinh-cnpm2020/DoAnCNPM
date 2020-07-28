package vn.com.admin.product;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/addpro")
public class addpro extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id= request.getParameter("id");
        String name= request.getParameter("name");
        String type= request.getParameter("type");
        String price= request.getParameter("price");
        String quantity= request.getParameter("quantity");
        String img= request.getParameter("img");
        String disc= request.getParameter("disc");
        String author= request.getParameter("author");
        String imgup="eshopper/Img/book/"+img;
        String sqladd="INSERT INTO `product`(`id`, `name`, `type`, `price`, `quantity`, `img`, `des`, `active`, `author`) VALUES (?,?, ?, ?, ?, ?, ?, 1, ?)";
        try {
            PreparedStatement pre=(PreparedStatement) dbconnect.getPrepareStatement(sqladd);
            pre.setInt(1, Integer.parseInt(id));
            pre.setString(2,name);
            pre.setInt(3, Integer.parseInt(type));
            pre.setDouble(4, Double.parseDouble(price));
            pre.setInt(5, Integer.parseInt(quantity));
            pre.setString(6,imgup);
            pre.setString(7,disc);
            pre.setInt(8, Integer.parseInt(author));
            int re= pre.executeUpdate();
            if (re==1){
                response.sendRedirect("PRODUCTT");
            }
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
    }
}

