package vn.com;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/CheckOut")
public class CheckOut extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql="SELECT NOW()";
        try {
            PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement(sql) ;
            ResultSet rs= ps.executeQuery();
            request.setAttribute("rs",rs);
            HttpSession session=request.getSession();
            User u = (User) session.getAttribute("Auth");
            if (u != null) {
                request.getRequestDispatcher("eshopper/checkout.jsp").forward(request,response);
            }
            else{
                response.sendRedirect("eshopper/login.jsp");
            }
        } catch (ClassNotFoundException |SQLException e) {
            e.printStackTrace();
        }

    }
}

