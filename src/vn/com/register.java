package vn.com;

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

@WebServlet("/register")
public class register extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("user");
        String email = request.getParameter("mail");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String check = "SELECT uname FROM `user` WHERE uname=? and active=1";
        String sql = "INSERT INTO `user` VALUES(?,?,?,?,?,?,?)";
        //MD5
        String m1= MD5_Class.getMD5(pass);

        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(check);
            pre.setString(1, name);
            ResultSet rscheck = pre.executeQuery();
            rscheck.last();
            if (rscheck.getRow() == 1) {
                request.setAttribute("pass", "");
                request.setAttribute("user", name);
                request.setAttribute("phone", phone);
                request.setAttribute("address", address);
                request.setAttribute("repass", "");
                request.setAttribute("email", email);
                request.setAttribute("erorname", "Username is exists");
                request.getRequestDispatcher("eshopper/register.jsp").forward(request, response);
            }
            else {
                if (pass.equals(repass)) {
                    PreparedStatement insert = (PreparedStatement) dbconnect.getPrepareStatement(sql);
                    insert.setString(1, name);
                    insert.setString(2, m1);
                    insert.setInt(3, 1);
                    insert.setInt(4, 1);
                    insert.setString(5, email);
                    insert.setString(6, phone);
                    insert.setString(7, address);
                    int rinsert = insert.executeUpdate();
                    if (rinsert == 1) {
                        response.sendRedirect("eshopper/login.jsp");
                    } else {
                        request.getRequestDispatcher("eshopper/register.jsp").forward(request, response);
                    }
                }
                else {
                    request.setAttribute("pass", "");
                    request.setAttribute("user", name);
                    request.setAttribute("phone", phone);
                    request.setAttribute("address", address);
                    request.setAttribute("repass", "");
                    request.setAttribute("email", email);
                    request.setAttribute("erorname", "Repass incorrect !");
                    request.getRequestDispatcher("eshopper/register.jsp").forward(request, response);

                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
