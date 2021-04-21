
package model.DAO;

import DBprovider.DBconn;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CheckLoginDAO {
    public boolean isExistUser(String userName, String password) throws ClassNotFoundException {
        String SQL_Query_String = "SELECT * FROM user WHERE username ='" + userName + "' AND password ='" + password + "'";
        DBconn.connection = DBconn.getConnection();
        try {
            if (DBconn.connection != null) {
                Statement stmt = DBconn.connection.createStatement();
                ResultSet rs = stmt.executeQuery(SQL_Query_String);
                if(rs.next()){
                return true;} 
                else return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
