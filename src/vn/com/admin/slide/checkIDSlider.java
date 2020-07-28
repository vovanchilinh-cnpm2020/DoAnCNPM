package vn.com.admin.slide;

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

@WebServlet("/checkIDSlider")
public class checkIDSlider extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id= request.getParameter("id");
        String sql="Select * from slider where id=? and active=1";
        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,id);
            ResultSet rs= pre.executeQuery();
            request.setAttribute("rs",rs);
            request.getRequestDispatcher("Admin/updateslider.jsp").forward(request,response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
