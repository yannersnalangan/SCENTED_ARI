/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package scented.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager; 

    public class ConnectionPool1 {

        static Connection conn;

        public static Connection getConnection() throws SQLException, ClassNotFoundException {
            try {

                String driver = "com.mysql.cj.jdbc.Driver";
                Class.forName(driver);

                String url = "jdbc:mysql://localhost:3306/scentdari?serverTimezone=UTC";
                conn = (Connection) DriverManager.getConnection(url, "root", "ciaobitches_13");

            } catch (SQLException e) { 
                System.out.println("SQLException" + e); 
            }
        return conn;
    }
}