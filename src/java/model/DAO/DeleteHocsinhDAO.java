/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import DBprovider.DBconn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.Hocsinh;

/**
 *
 * @author ADMIN
 */
public class DeleteHocsinhDAO {

    public boolean deleteHocSinh(String idhs) {
        DBconn.connection = DBconn.getConnection();
        String SQL_Query_String = "DELETE  FROM `hocsinh` where idhocsinh ='" + idhs + "'";
        if (DBconn.connection != null) {
            try {
                PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
                stmt.execute();
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
