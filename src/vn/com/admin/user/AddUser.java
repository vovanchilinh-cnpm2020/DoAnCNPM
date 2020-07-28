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
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String repass = request.getParameter("repass");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String sqlUser = "INSERT INTO `test1`.`user`(`uname`, `pass`, `level`, `active`, `email`, `phone`,address) VALUES (?,?, 1, 1, ?,?,?)";
        String equal="SELECT uname FROM `user` WHERE uname=? and active=1";
        String md5= MD5_Class.getMD5(password);
        try {
            PreparedStatement prl=(PreparedStatement) dbconnect.getPrepareStatement(equal);
            prl.setString(1,name);
            ResultSet rse= prl.executeQuery();
            rse.last();
            if (rse.getRow()==1){
                request.setAttribute("name",name);
                request.setAttribute("pass","");
                request.setAttribute("repass","");
                request.setAttribute("email",email);
                request.setAttribute("phone",phone);
                request.setAttribute("address",address);
                request.setAttribute("eror","UName is exists");
                request.getRequestDispatcher("Admin/them_user.jsp").forward(request,response);
            }
            else{
                if (password.equals(repass)) {
                    PreparedStatement user = (PreparedStatement) dbconnect.getPrepareStatement(sqlUser);
                    user.setString(1, name);
                    user.setString(2, md5);
                    user.setString(3, email);
                    user.setString(4, phone);
                    user.setString(5, address);

                    user.executeUpdate();
                    request.getRequestDispatcher("ProductType").forward(request, response);
                }
                else{
                    request.setAttribute("name",name);
                    request.setAttribute("pass","");
                    request.setAttribute("repass","");
                    request.setAttribute("email",email);
                    request.setAttribute("phone",phone);
                    request.setAttribute("address",address);
                    request.setAttribute("eror","Repass incorrect!");
                    request.getRequestDispatcher("Admin/them_user.jsp").forward(request,response);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }



    }
}

