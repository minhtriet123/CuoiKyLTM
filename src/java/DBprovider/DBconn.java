
package DBprovider;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconn {
    public static Connection connection = null;
    public static Connection getConnection() {
        if (connection != null) {
            return connection;
        } else {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3300/dataltm", "root", "admin");
            } catch (ClassNotFoundException | SQLException e) {
                // TODO: handle exception
            }
            // TODO: handle exception
            return connection;
        }
    }
}
