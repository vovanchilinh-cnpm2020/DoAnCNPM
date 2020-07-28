package vn.com;

import com.mysql.jdbc.PreparedStatement;
import vn.com.controller.dbconnect;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Product {
    int id;
    String name;
    int quatity;
    String img;
    double price;
    int type;

    public Product(int id, int type, String name, int quatity, String img, double price) {
        this.type = type;
        this.id = id;
        this.name = name;
        this.quatity = quatity;
        this.img = img;
        this.price = price;

    }

    public Product() {

    }

    public static Product find(int id) {
        try {
            PreparedStatement ps = (PreparedStatement) dbconnect.getPrepareStatement("SELECT id,name,price,img,type FROM product WHERE id=? AND active=1");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.id = rs.getInt(1);
                p.name = rs.getString(2);
                p.price = rs.getDouble(3);
                p.img = rs.getString(4);
                p.type = rs.getInt(5);
                p.quatity = 1;
                return p;

            }
            return null;
        } catch (SQLException | ClassNotFoundException e) {
            return null;
        }
    }

    public int getType() {
        return type;
    }

    public void quatityUp() {
        this.quatity++;
    }

    public void quatityDown() {
        if (quatity > 1) {
            this.quatity--;
        } else {
            quatity = 1;
        }
    }

    public void quatityUp(int quatity) {
        setQuatity(quatity);
    }


    public int getQuatity() {
        return quatity;
    }


    void setQuatity(int quatity) {
        if (quatity < 1) quatity = 1;
        this.quatity = quatity;
    }

    public String getImg() {
        return img;

    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;

    }

    public double getPrice() {
        return price;
    }

    public void setName(String name) {
        this.name = name;

    }

    public double total() {
        return price * quatity;
    }
}
