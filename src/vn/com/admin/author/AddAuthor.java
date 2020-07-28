package vn.com.admin.author;

import vn.com.controller.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/AddAuthor")
public class AddAuthor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String check = "SELECT name FROM `author` WHERE name=?";
        String sqlauthor = "INSERT INTO `author`(id,`name`,img,infor) VALUES (?,?,?,?)";
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        String dis = request.getParameter("disc");
        String id = request.getParameter("id");
        img="eshopper/Img/Author/"+img;
        try {
            PreparedStatement aucheck = (PreparedStatement) dbconnect.getPrepareStatement(check);
            aucheck.setString(1, name);
            ResultSet rsaucheck = aucheck.executeQuery();
            rsaucheck.last();
            if (rsaucheck.getRow() == 1) {
                request.setAttribute("autype", name);
                request.setAttribute("img", img);
                request.setAttribute("dis", dis);
                request.setAttribute("id", id);
                request.setAttribute("error", "Author is exists!");
                request.getRequestDispatcher("Admin/add_author.jsp").forward(request, response);
            } else {
                PreparedStatement prepare = (PreparedStatement) dbconnect.getPrepareStatement(sqlauthor);
                prepare.setString(2, name);
                prepare.setString(3, img);
                prepare.setString(1, id);
                prepare.setString(4, dis);
                int rss1 = prepare.executeUpdate();
                if (rss1 == 1) {
                    response.sendRedirect("Author");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
