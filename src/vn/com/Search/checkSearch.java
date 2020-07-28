package vn.com.Search;

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

@WebServlet("/checkSearch")
public class checkSearch extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key=request.getParameter("search");
    String sql="SELECT id,name,price,img,type,des FROM product where `name` LIKE ?";
        try {
            String sql1 = "SELECT id,name FROM product_type WHERE active=1";
            PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement(sql1);
            ResultSet rs = ps.executeQuery();
            request.setAttribute("rs", rs);

            String sqlau = "SELECT id,`name` FROM author";
            PreparedStatement psau = (PreparedStatement) dbconnect.getPrepareStatement(sqlau);
            ResultSet rsau = psau.executeQuery();
            request.setAttribute("rsau", rsau);

            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1,"%"+key+"%");

            ResultSet search= pre.executeQuery();
            request.setAttribute("search",search);
            request.getRequestDispatcher("eshopper/resultSearch.jsp").forward(request,response);
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
