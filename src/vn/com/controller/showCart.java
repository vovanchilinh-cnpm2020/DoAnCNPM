package vn.com.controller;

import vn.com.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/showCart")
public class showCart extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cart c =(Cart) request.getSession().getAttribute("Cart");
        request.setAttribute("Cart",c);
        String quantity= request.getParameter("quantity");
        if (quantity==null){
            request.setAttribute("quantity",1);
        }else{
        request.setAttribute("quantity",quantity);
        }
        request.getRequestDispatcher("eshopper/cart.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
