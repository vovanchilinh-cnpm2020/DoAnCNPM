package vn.com.cart;

import vn.com.Cart;
import vn.com.Product;
import vn.com.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AddCart")
public class Add extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            HttpSession session = req.getSession();
            int id = Integer.parseInt(req.getParameter("id"));
            Product p = Product.find(id);
            Cart c = (Cart) session.getAttribute("Cart");
            if (c == null) c = new Cart();
            if (p != null) c.put(p);
            session.setAttribute("Cart", c);

        } catch (NumberFormatException e) {

        }
        resp.sendRedirect(Util.fullPath("LTLshop"));
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
