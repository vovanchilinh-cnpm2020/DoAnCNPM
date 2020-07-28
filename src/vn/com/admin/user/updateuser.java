package vn.com.admin.user;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/updateuser")
public class updateuser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String sql = "SELECT * FROM `user` WHERE uname=?";

        try {
            PreparedStatement sel = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            sel.setString(1, uname);
            ResultSet rsel = sel.executeQuery();
            request.setAttribute("rsel",rsel);
           request.getRequestDispatcher("Admin/update.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }
}

