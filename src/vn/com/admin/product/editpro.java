package vn.com.admin.product;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/editpro")
public class editpro extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String img = request.getParameter("img");
        String dis = request.getParameter("disc");
        String author = request.getParameter("author");
        img="eshopper/Img/book/"+img;
        String sql = "UPDATE `product` SET `name` =?,`type` =?, price = ?, quantity=? ,img=? ,des=? ,active=1,author=? WHERE `id` = ? LIMIT 1";
        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1, name);
            pre.setInt(2, Integer.parseInt(type));
            pre.setDouble(3, Double.parseDouble(price));
            pre.setInt(4, Integer.parseInt(quantity));
            pre.setString(5, img);
            pre.setString(6, dis);
            pre.setInt(7, Integer.parseInt(author));
            pre.setInt(8, Integer.parseInt(id));
            int re = pre.executeUpdate();
            if (re == 1) {
                response.sendRedirect("PRODUCTT");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
}

