package vn.com.level;

import vn.com.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/level")
public class level extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("Auth");
        if (u==null){
            response.sendRedirect("Trangchu");
        }else{
        if (u.getlevel() > 1) {
            response.sendRedirect("Admin");
        } else {
            if (u.getlevel() == 1 || u.getlevel() > 1) {
                response.sendRedirect("Trangchu");
            }
        }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doGet(request, response);
    }
}
