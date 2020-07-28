package vn.com.controller;

import java.sql.*;

public class dbconnect {
    private static String URL = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
    private static String UNAME = "root";
    private static String PASS = "";
    static Connection con;

    public static PreparedStatement getPrepareStatement(String sql) throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, UNAME, PASS);
        }
        return con.prepareStatement(sql);
    }

    public static Statement connect() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + "test?useUnicode=true&characterEncoding=utf-8",
                    "root", "");
            return con.createStatement();
        } else {
            return con.createStatement();
        }
    }
}
