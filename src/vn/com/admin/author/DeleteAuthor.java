package vn.com.admin.author;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/DeleteAuthor")
public class DeleteAuthor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String sql = "DELETE FROM `author` WHERE `name` =?";
        try {
            PreparedStatement prep = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            prep.setString(1, name);
            int rs = prep.executeUpdate();
            if (rs == 1) {
                response.sendRedirect("Author");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

