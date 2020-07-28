package vn.com.admin.product;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/dellpro")
public class dellpro extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String sql = "DELETE FROM `product` WHERE `id` =? and active=1";
        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setInt(1, Integer.parseInt(id));
            int rs = pre.executeUpdate();
            if (rs == 1) {
                response.sendRedirect("PRODUCTT");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

