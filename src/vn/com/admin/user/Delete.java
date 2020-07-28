package vn.com.admin.user;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String uname= request.getParameter("uname");
            String sql="DELETE FROM`user` WHERE `uname` =?";
            try {
                PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
                pre.setString(1,uname);
                int rs=pre.executeUpdate();
                if (rs==1) {
                    request.getRequestDispatcher("ProductType").forward(request,response);
                }
            } catch (ClassNotFoundException |SQLException e) {
                e.printStackTrace();
        }


    }
}

