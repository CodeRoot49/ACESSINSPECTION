package access.dao;


import access.model.AccessLoginBeans;
import java.sql.*;
import java.sql.PreparedStatement;

public class AccessLoginDao {

    AccessConexionDao conn;

    public AccessLoginDao(AccessConexionDao conn) {
        this.conn = conn;
    }

    public boolean validate(AccessLoginBeans loginBeans)
            throws ClassNotFoundException {
        boolean status = false;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            
            //String sqlLogin = "SELECT * FROM administradores WHERE nombre_usuario = ? and contrasena = ? and rol = ?";
            String sqlLogin = " SELECT * FROM administradores AS ad JOIN roles AS r ON (idAdmin=idAdminFk) WHERE ad.username = ? and ad.password = ? and r.rol = ?";
            ps = conn.getConnetion().prepareStatement(sqlLogin);
            ps.setString(1, loginBeans.getUser());
            ps.setString(2, loginBeans.getPassword());
            ps.setString(3, loginBeans.getRol());
            rs = ps.executeQuery();
            System.out.println(rs);
            status = rs.next();     
        } catch (SQLException e) {
            System.out.println("Fallo en la conexion");
            System.out.println(e.getMessage());
        }
        return status;
    }
}
