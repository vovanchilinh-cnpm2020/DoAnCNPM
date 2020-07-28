package vn.com.admin.Contact;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/DeteteContact")
public class DeteteContact extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String sql = "DELETE FROM `contact` WHERE `id` =?";
        try {
            PreparedStatement prep = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            prep.setString(1, id);
            int rs = prep.executeUpdate();
            if (rs == 1) {
                response.sendRedirect("contact");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
