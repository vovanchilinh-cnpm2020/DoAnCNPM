package vn.com.admin.slide;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/editslide")
public class editslide extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String id = request.getParameter("id");
        String img = request.getParameter("img");
        String dis = request.getParameter("disc");
        img="eshopper/Img/slide/"+img;

        String sql = "UPDATE slider SET img=? ,dis=? ,active=1 WHERE id = ? LIMIT 1";
        try {
            PreparedStatement pre = (PreparedStatement) dbconnect.getPrepareStatement(sql);
            pre.setString(1, img);
            pre.setString(2, dis);
            pre.setString(3, id);
            int re = pre.executeUpdate();
            if (re == 1) {
                response.sendRedirect("Slidershow");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
