
package access.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AccessConexionDao {
    // Constantes de instancia de clases
    /** Se declaran constantes porque van hacer los mismo
     *  valores cada ves que vaya a realizar una conexion
     * set global time_zone = '-3:00';
     **/
    static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static String JDBC_DB = "access_inspection?serverTimezone=UTC";
    static String JDBC_USER = "root";
    static String JDBC_PASS = "025940";
    static String JDBC_URL = "jdbc:mysql://localhost:3306/" + JDBC_DB;
    // esta variable va a guardar la conecion
    Connection conn = null;
    
    public AccessConexionDao(){
        try{
            // Obtenemos el Driver para MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
            if( conn != null){
                // Si conn es diferente de null es porque se realizao la conexion
                System.out.println("Conexion Database ["+ conn +"] OK");
            }
        }catch (SQLException e){
            System.out.println("Fallo en la conexion");
            System.out.println(e.getMessage());
        }catch (ClassNotFoundException e){
            System.err.println("Error al cargar el Driver JDBC");
            System.err.println(e.getMessage());
        }
    }
    public Connection getConnetion(){
        return conn;
    }
    public void Disconnect(){
        System.err.println("Cerrando Conexion... ["+ conn +"] OK");
        if(conn != null){
            try{
                System.err.println("Desconectado de ["+JDBC_DB+"] OK");
                conn.close();
            }catch (SQLException e){
                System.err.println("Error al desconectar");
                System.err.println(e);
            }
        }
    }

    Object getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
