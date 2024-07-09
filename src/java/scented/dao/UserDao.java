/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package scented.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao {
    public boolean insertUser(
        String userName,
        String password,
        String firstName,
        String middleName,
        String lastName,
        String completeAddress,
        String birthday,
        String mobileNumber,
        String role) throws ClassNotFoundException {
        
        boolean success = false; 
        PreparedStatement ps = null;
        Connection conn = null;

        try {
            conn = ConnectionPool1.getConnection(); 
            if (conn == null) {
                System.out.println("Error: Connection is null");
                return success;
            }

            String query = "INSERT INTO scented ("
                    + "username,"
                    + "password,"
                    + "firstname,"
                    + "middlename,"
                    + "lastname,"
                    + "completeaddress,"
                    + "birthday,"
                    + "mobileNumber,"
                    + "role) "
                    + "VALUES (?,?,?,?,?,?,?,?,?)";

            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, firstName);
            ps.setString(4, middleName);
            ps.setString(5, lastName);
            ps.setString(6, completeAddress);
            ps.setString(7, birthday);
            ps.setString(8, mobileNumber);
            ps.setString(9, role);

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected != 0) {
                success = true;
            }

        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
        } finally {
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("Error closing PreparedStatement: " + e.getMessage());
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("Error closing Connection: " + e.getMessage());
                }
            }
        }
        return success; 
    }
}