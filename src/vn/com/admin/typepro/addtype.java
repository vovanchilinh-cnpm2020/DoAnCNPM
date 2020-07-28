package vn.com.admin.typepro;

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

@WebServlet("/addtype")
public class addtype extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String check = "SELECT name FROM `product_type` WHERE name=? and active=1";
        String sqltype = "INSERT INTO `product_type`(`name`, `active`) VALUES (?, 1)";
        String type = request.getParameter("type");
        String id = request.getParameter("id");
        try {
            PreparedStatement pcheck = (PreparedStatement) dbconnect.getPrepareStatement(check);
            pcheck.setString(1,type);
            ResultSet rscheck = pcheck.executeQuery();
            rscheck.last();
            if (rscheck.getRow() == 1) {
                request.setAttribute("type", type);
                request.setAttribute("id", id);
                request.setAttribute("error", "Type is exists!");
                request.getRequestDispatcher("Admin/addtype.jsp").forward(request, response);
            } else {
                PreparedStatement prepare = (PreparedStatement) dbconnect.getPrepareStatement(sqltype);
                prepare.setString(1, type);
                int rss = prepare.executeUpdate();
                request.getRequestDispatcher("TypeSP").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}