package vn.com.controller;

import com.mysql.jdbc.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LTLproduct")
public class LTLproduct extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql = "SELECT * FROM author JOIN product ON author.id=product.author where product.id=?";
        String sql1="SELECT * FROM product WHERE active=1 AND type=?  ORDER BY RAND()";
        String id = request.getParameter("id");
        String type= request.getParameter("type");
        try {
           PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement(sql);
           ps.setString(1,id);
            ResultSet pd = ps.executeQuery();
            request.setAttribute("pd", pd);

            PreparedStatement ps1 = (PreparedStatement) dbconnect.getPrepareStatement(sql1);
            ps1.setString(1,type);
            ResultSet pd1 = ps1.executeQuery();
            request.setAttribute("pd1", pd1);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("eshopper/product-details.jsp").forward(request, response);

    }
}

