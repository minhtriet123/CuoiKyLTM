
package model.DAO;

import DBprovider.DBconn;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class ResetHocphiDAO {
    public boolean ResetHocphi(){
        DBconn.connection = DBconn.getConnection();
        if(DBconn.connection!=null){
        String SQL_Query_String;
        SQL_Query_String = "UPDATE hocsinh SET hocphi='Chưa Nộp' WHERE idhocsinh>0;";
        try {
             PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
             stmt.execute(); 
             return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        }  return false;
    }
}
    
