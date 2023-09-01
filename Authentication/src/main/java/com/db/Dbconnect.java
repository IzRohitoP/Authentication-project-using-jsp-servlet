package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnect {
    private static Connection conn;

    public static Connection getConnection() {
        try {
            if (conn == null) {
                String jdbcUrl = "jdbc:mysql://localhost:3306/authentication";
                String user = "root";
                String password = "root";

                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish the connection
                conn = DriverManager.getConnection(jdbcUrl, user, password);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    
}
