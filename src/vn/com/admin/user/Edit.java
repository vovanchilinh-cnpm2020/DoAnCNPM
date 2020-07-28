package vn.com.admin.user;

import com.mysql.jdbc.PreparedStatement;
import vn.com.MD5_Class;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Edit")
public class Edit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String uname = request.getParameter("uname");
        String md5= MD5_Class.getMD5(password);
        String sqlUser = "UPDATE `test1`.`user` SET `uname` =?, `pass` = ?,level=1,active=1, `email` = ?, `phone` = ?,address=? WHERE `uname` = ? LIMIT 1";
        try  {
            PreparedStatement user = (PreparedStatement) dbconnect.getPrepareStatement(sqlUser);
            user.setString(1, name);
            user.setString(2, md5);
            user.setString(3, email);
            user.setString(4, phone);
            user.setString(5, address);
            user.setString(6,uname);
            int rs= user.executeUpdate();
            if (rs==1){

                request.getRequestDispatcher("ProductType").forward(request,response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }
}
