/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import DBprovider.DBconn;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class DAORegister {

    public boolean register(String id, String username, String password) {
        DBconn.connection = DBconn.getConnection();
        String SQL_Query_String;
        SQL_Query_String = "INSERT INTO user (iduser, username, password) VALUES (?,?,?);";
        if (DBconn.connection != null) {
            try {
                PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
                stmt.setString(1, id);
                stmt.setString(2, username);
                stmt.setString(3, password);
                stmt.execute();
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
