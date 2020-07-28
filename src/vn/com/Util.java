package vn.com;

public class Util {
    static final String HOST = "http://localhost:8080/Project/";

    public static String fullPath(String path) {
        return HOST + path;
    }
}