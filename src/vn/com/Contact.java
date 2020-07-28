package vn.com;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Contact")
public class Contact extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
            String email = request.getParameter("email");
            String subject = request.getParameter("subject");
            String message = request.getParameter("message");

            String sql="INSERT INTO `test1`.`contact`(`name`, `email`, `subject`, `mess`) VALUES (?,?,?,?)";
        try {
            PreparedStatement pre =(PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,name);
            pre.setString(2,email);
            pre.setString(3,subject);
            pre.setString(4,message);
            int re= pre.executeUpdate();
            if (re==1){
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
