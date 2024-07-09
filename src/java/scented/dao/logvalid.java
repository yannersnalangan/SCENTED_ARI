/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package scented.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
 
public class logvalid {
 
   
    public boolean isValidUser(String userName, String password) throws ClassNotFoundException, SQLException {
        boolean isValid = false;
        String query = "SELECT * FROM scented WHERE userName =? AND password =?";
        try (Connection conn = ConnectionPool1.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, userName);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    isValid = true;
                }
            }
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            throw e; // re-throw the exception
        }
        return isValid;
    }
}