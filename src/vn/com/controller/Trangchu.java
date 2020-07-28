package vn.com.controller;

import com.mysql.jdbc.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Trangchu")
public class Trangchu extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String sqlSlider = "SELECT id, img, dis FROM slider where active= 1";
            PreparedStatement psSlider = (PreparedStatement) dbconnect.getPrepareStatement(sqlSlider);
            ResultSet rsSlider= psSlider.executeQuery();
            request.setAttribute("rsSlider", rsSlider);

            String sql = "SELECT id,name FROM product_type WHERE active=1";
            PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            request.setAttribute("rs", rs);

            String sqlau = "SELECT id,`name` FROM author";
            PreparedStatement psau = (PreparedStatement) dbconnect.getPrepareStatement(sqlau);
            ResultSet rsau = psau.executeQuery();
            request.setAttribute("rsau", rsau);


            String sql1="SELECT * FROM product WHERE active=1 ORDER BY RAND()";
            PreparedStatement ps1 = (PreparedStatement) dbconnect.getPrepareStatement(sql1);
            ResultSet rs1 = ps1.executeQuery();
            request.setAttribute("rs1", rs1);

            String sql3="SELECT * FROM product WHERE active=1";
            PreparedStatement ps3 = (PreparedStatement) dbconnect.getPrepareStatement(sql3);
            ResultSet rs3 = ps3.executeQuery();
            request.setAttribute("rs3", rs3);

            String sql2="SELECT * FROM author ORDER BY RAND()";
            PreparedStatement ps2 = (PreparedStatement) dbconnect.getPrepareStatement(sql2);
            ResultSet pd = ps2.executeQuery();
            request.setAttribute("pd", pd);


            request.getRequestDispatcher("eshopper/trangchu.jsp").forward(request, response);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
