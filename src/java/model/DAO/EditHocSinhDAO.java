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
import model.bean.Hocsinh;

public class EditHocSinhDAO {
    public boolean editHocSinh(Hocsinh hs){
    DBconn.connection = DBconn.getConnection();
        if(DBconn.connection!=null){
        String SQL_Query_String = "UPDATE hocsinh SET ten = ?, sdt= ?, email = ?, ngaysinh = ?, diachi = ?, hocphi = ?, iduser = ? WHERE idhocsinh = ?";
        try {
             PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
             stmt.setString(1, hs.getTen());
             stmt.setString(2, hs.getSdt());
             stmt.setString(3, hs.getEmail());
             stmt.setString(4, hs.getNgaysinh());
             stmt.setString(5, hs.getDiachi());
             stmt.setString(6, hs.getHocphi());
             stmt.setString(7, hs.getIduser());
             stmt.setInt(8, hs.getId());
             stmt.execute(); 
             return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
        return false;
    }
    public Hocsinh getInforEditDAO(String idhs){
        Hocsinh hs = new Hocsinh();
        DBconn.connection = DBconn.getConnection();
        if(DBconn.connection!=null){
        String SQL_Query_String = "SELECT * FROM hocsinh WHERE idhocsinh = ?";
        try {
             PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
             stmt.setString(1,idhs);
             ResultSet rs = stmt.executeQuery();
             while (rs.next()){
                hs.setTen(rs.getString("ten"));
                hs.setSdt(rs.getString("sdt"));
                hs.setEmail(rs.getString("email"));
                hs.setNgaysinh(rs.getString("ngaysinh"));
                hs.setDiachi(rs.getString("diachi"));
                hs.setHocphi(rs.getString("hocphi"));
                hs.setIduser(rs.getString("iduser"));
             }
             
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }return hs;
}
}
