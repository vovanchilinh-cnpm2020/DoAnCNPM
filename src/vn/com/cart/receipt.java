package vn.com.cart;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/receipt")
public class receipt extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("name");
        String mail=request.getParameter("email");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        String date=request.getParameter("date");
        String total=request.getParameter("total");
        String sql="INSERT INTO `test1`.`receipt`(`name`, `email`, `phone`, `address`, `date`, `total`,active) VALUES (?,?,?,?,?,?,?)";
        try {
            PreparedStatement pre= (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,name);
            pre.setString(2,mail);
            pre.setString(3,phone);
            pre.setString(4,address);
            pre.setString(5,date);
            pre.setString(6,total);
            pre.setInt(7,0);
            int re= pre.executeUpdate();
            if (re==1){
                request.getSession().removeAttribute("Cart");
                response.sendRedirect("Trangchu");
            }
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
