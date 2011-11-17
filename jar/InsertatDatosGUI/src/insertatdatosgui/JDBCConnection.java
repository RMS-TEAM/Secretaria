package insertatdatosgui;

import java.sql.DriverManager;
import com.mysql.jdbc.Connection;

public class JDBCConnection {

    private static Connection connection;

    public static Connection getConexion(String db, String user, String pass) throws Exception{
        if (connection == null)
            return getJDBConnection(db, user, pass);
        else
            return connection;
    }

    private static Connection getJDBConnection(String db, String user, String pass) throws Exception{
        if(pass == null)
            pass = "";
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/"+db+"";
        connection = (Connection) DriverManager.getConnection(url, user, pass);
        return connection;
    }

    public static void cerrarConexion(){
        try{
            connection.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

}
