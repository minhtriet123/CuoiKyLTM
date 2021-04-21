/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import DBprovider.DBconn;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.bean.Hocsinh;

/**
 *
 * @author ADMIN
 */
public class SearchHocsinhDAO {
    public ArrayList<Hocsinh> searchWifeList(String nameSearch) throws SQLException {
        ArrayList<Hocsinh> result = new ArrayList<Hocsinh>();
        DBconn.connection = DBconn.getConnection();
        String SQL_Query_String = "SELECT * FROM hocsinh WHERE ten LIKE '%"+nameSearch+"%'";
        if (DBconn.connection != null) {
            Statement stmt = DBconn.connection.createStatement();
            ResultSet rs = stmt.executeQuery(SQL_Query_String);
            while (rs.next()) {
                Hocsinh hs =new Hocsinh();
                hs.setId(rs.getInt("idhocsinh"));
                hs.setTen(rs.getString("ten"));
                hs.setSdt(rs.getString("sdt"));
                hs.setEmail(rs.getString("email"));
                hs.setNgaysinh(rs.getString("ngaysinh"));
                hs.setDiachi(rs.getString("diachi"));
                hs.setHocphi(rs.getString("hocphi"));
                hs.setIduser(rs.getString("iduser"));
                result.add(hs);;
            }
        }
        return result;
    }
}
