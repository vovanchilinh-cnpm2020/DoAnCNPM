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
@WebServlet("/doLogin")
public class doLogin extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String query = "SELECT * FROM `user` WHERE `uname`=? AND pass=? and active=1";


        try {
            String name = request.getParameter("uname").trim();
            String pass = request.getParameter("pass").trim();
            String md5= MD5_Class.getMD5(pass);
            PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, md5);
            ResultSet results = ps.executeQuery();
            results.last();
            if (results.getRow() == 1) {
                results.first();
                if (name.equals(results.getString("uname")) && md5.equals(results.getString("pass"))) {
                    User u= new User(results.getString("uname"),results.getString("pass"),results.getInt("level"),results.getInt("active"),results.getString("email"),results.getString("phone"),results.getString("address"));
                    HttpSession session=request.getSession(true);
                    session.setAttribute("Auth",u);
                    response.sendRedirect("level");
                } else {
                    request.setAttribute("uname",name);
                    request.getRequestDispatcher("eshopper/login.jsp").forward(request, response);
                }
            }
            else {
                request.setAttribute("Eror","Username or password incorrect!");
                request.setAttribute("uname",name);
                request.setAttribute("pass","");

                request.getRequestDispatcher("eshopper/login.jsp").forward(request, response);
            }
        }
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}