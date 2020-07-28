package vn.com.admin.author;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/countau")
public class countau extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String count = "SELECT COUNT(id) as SUM FROM author";
        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(count);
            ResultSet rscount = pre.executeQuery();
            rscount.next();
            request.setAttribute("count", rscount.getInt(1)+1);
            request.getRequestDispatcher("Admin/add_author.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

