package vn.com.admin.author;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/UpdateAuthor")
public class UpdateAuthor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        String dis = request.getParameter("dis");
        img="eshopper/Img/Author/"+img;

        String sqlauthor = "UPDATE `author` SET `name` =?,`img` =?, infor = ? WHERE `id` = ? LIMIT 1";
        try  {
            PreparedStatement author = (PreparedStatement) dbconnect.getPrepareStatement(sqlauthor);
            author.setString(1, name);
            author.setString(2, img);
            author.setString(3, dis);
            author.setString(4, id);
            int rs= author.executeUpdate();
            if (rs==1){
              response.sendRedirect("Author");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }
}
