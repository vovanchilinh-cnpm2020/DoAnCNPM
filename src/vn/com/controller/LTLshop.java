package vn.com.controller;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/LTLshop")
public class LTLshop extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page=request.getParameter("page");
        if (page==null) page="1";
        int limit=Integer.parseInt(page );
        if (limit<1) limit=1;

        String linkQuery="type=";
        //nxb
        String author = request.getParameter("author");

        //long,short,combo
        HttpSession session = request.getSession();
//        String pagename= (String) session.getAttribute("currentpage");
        String type=request.getParameter("type");
        if (type==null){type="1";}
        //to place kind name on title or esle
        request.setAttribute("type",type);
        //get list nxb
        String aut = "SELECT id,name FROM author";
        //get list of book type
        String  list = "SELECT id,name,price,img,type,des FROM product WHERE type=?";
        String typeSql="select id,name from product_type";
        //count page
        String countQuery="select count(id) from product where type=? ";
        linkQuery+=type;
        try {

            PreparedStatement s1 = dbconnect.getPrepareStatement(typeSql);
            ResultSet rs = s1.executeQuery();
            request.setAttribute("rs", rs);
            PreparedStatement s2 = dbconnect.getPrepareStatement(aut);
            ResultSet rs1 = s2.executeQuery();
            request.setAttribute("rsau", rs1);
            if (author!=null){
                linkQuery+="&author=";
                linkQuery+=author;

                countQuery+=" and author=?";
                list+=" and author=?";
            }
            list+=" limit ?,12";
            PreparedStatement bookS= dbconnect.getPrepareStatement(list);
            bookS.setString(1,type);
            PreparedStatement counting= dbconnect.getPrepareStatement(countQuery);
            counting.setString(1,type);
            if (author!=null){
                counting.setString(2,author);
            }
            ResultSet pages=counting.executeQuery();
            int slide=0;
            pages.next();
            int itemQ=pages.getInt(1);
            if (itemQ%12==0){
                slide=itemQ/12;
            }
            else if (itemQ%12>=1){
                slide=itemQ/12+1;
            }
            if (slide<limit) limit=slide;
            request.setAttribute("pages",slide);
            request.setAttribute("curPag",limit);
            if (limit>=1){
                linkQuery+="&page=";
            }
            request.setAttribute("q",linkQuery);



            if (author== null){
                bookS.setInt(2,(limit-1)*12);
                ResultSet booklist=bookS.executeQuery();
                request.setAttribute("pd",booklist);
            }
            if (author!=null){
                counting.setString(2,type);
                bookS.setString(2,type);
                bookS.setInt(3,(limit-1)*12);
                ResultSet booklist=bookS.executeQuery();
                request.setAttribute("pd",booklist);
            }




        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        session.setAttribute("page",limit);
        session.setAttribute("kind",type);
        if (author!=null){
            session.setAttribute("author",author);}
        request.setAttribute("type",type);
        request.getRequestDispatcher("eshopper/shop.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}