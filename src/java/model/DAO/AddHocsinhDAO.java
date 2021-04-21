/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import DBprovider.DBconn;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.bean.Hocsinh;

public class AddHocsinhDAO {
    public boolean addHSDAO(Hocsinh hs){
        DBconn.connection = DBconn.getConnection();
        if(DBconn.connection!=null){
        String SQL_Query_String = "INSERT INTO `hocsinh` (ten, sdt, email, ngaysinh, diachi, hocphi, iduser) VALUES (?,?,?,?,?,?,?)";
        try {
             PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
             stmt.setString(1,hs.getTen());
             stmt.setString(2,hs.getSdt());
             stmt.setString(3,hs.getEmail());
             stmt.setString(4,hs.getNgaysinh());
             stmt.setString(5,hs.getDiachi());
             stmt.setString(6,hs.getHocphi());
             stmt.setString(7,hs.getIduser());
             stmt.execute(); return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
        return false;
    }
}

