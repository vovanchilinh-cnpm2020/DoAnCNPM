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

@WebServlet("/LTLauthor")
public class LTLauthor extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String sql="SELECT* FROM author WHERE id=?";
    String id = request.getParameter("id");
    String sql1 = "SELECT * FROM author JOIN product ON author.id=product.author where product.author=?";

        try {
            PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            ps.setString(1,id);
            ResultSet re = ps.executeQuery();
            request.setAttribute("re", re);

            PreparedStatement ps1 = (PreparedStatement) dbconnect.getPrepareStatement(sql1);
            ps1.setString(1,id);
            ResultSet re1 = ps1.executeQuery();
            request.setAttribute("re1", re1);
            request.getRequestDispatcher("eshopper/author.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
