package access.dao;

import access.model.EmpleadoAddModel;
import access.model.EmpleadoDeleteModel;
import access.model.EmpleadoListModel;
import access.model.EmpleadoPerfilModel;
import access.model.EmpleadoUpdateModel;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AccessEmpleadoDao {

    AccessConexionDao conn;
    private PreparedStatement ps;
    private ResultSet rs;

    public AccessEmpleadoDao(AccessConexionDao conn) {
        this.conn = conn;
    }

    public boolean verifyExistingEmpleado(String numDoc) {
        boolean exists = false;

        String querySQL = "SELECT * FROM empleados WHERE numDoc = ?;";
        try {
            ps = conn.getConnetion().prepareStatement(querySQL);
            ps.setString(1, numDoc);
            rs = ps.executeQuery();
            exists = rs.next();
        } catch (SQLException ex) {
            Logger.getLogger(AccessEmpleadoDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                ps.close();
                rs.close();
                conn.Disconnect();
            } catch (SQLException e) {
                System.out.println("Error recerrar conexiones" + e.getMessage());
            }

        }

        /**
         * if(exists){ System.out.println("El empleado ya existe"); }else{
         * System.out.println("El empleado NO existe");
        }*
         */
        return exists;
    }

    public boolean insertEmpleado(EmpleadoAddModel empleado) {

        String insertSQL = "INSERT INTO empleados(numDoc,nombres,apellidos,tipoDoc,fechaNac,rh,departamento,municipio,direccion,correo,telefono,cargo,foto,idAdminCreater) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            SimpleDateFormat formato = new SimpleDateFormat("yyyy-mm-dd");
            PreparedStatement insertPS = conn.getConnetion().prepareStatement(insertSQL);

            insertPS.setString(1, empleado.getNumDoc());
            insertPS.setString(2, empleado.getNombre());
            insertPS.setString(3, empleado.getApellido());
            insertPS.setString(4, empleado.getTipoDoc());
            // pasamos la fecha con formato en tipo string
            insertPS.setString(5, formato.format(empleado.getFechaNac()));
            insertPS.setString(6, empleado.getRh());
            insertPS.setString(7, empleado.getDepartamento());
            insertPS.setString(8, empleado.getMunicipio());
            insertPS.setString(9, empleado.getDireccion());
            insertPS.setString(10, empleado.getCorreo());
            insertPS.setString(11, empleado.getTelefono());
            insertPS.setString(12, empleado.getCargo());
            insertPS.setString(13, empleado.getFoto());
            insertPS.setString(14, empleado.getIdAdmin());
            insertPS.execute(insertSQL);
            //System.out.println("Clase empleado Dao metodo insert");
            //System.out.println(empleado);
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(AccessEmpleadoDao.class.getName()).log(Level.SEVERE, null, ex);
            //System.out.println("Error al insertar");
            return false;
        } finally {
            try {
                ps.close();
                rs.close();
                conn.Disconnect();
            } catch (SQLException e) {
                System.out.println("Error recerrar conexiones" + e.getMessage());
            }

        }
    }

    public List<EmpleadoListModel> getAllEmpleados(String search) {
        String SQL = "SELECT numDoc, concat(nombres, ' ', apellidos) as nombreCompleto, cargo,telefono, correo  FROM empleados WHERE numDoc LIKE ? or nombres LIKE ? or apellidos LIKE ? or cargo LIKE ?;";
        try {
            ps = conn.getConnetion().prepareStatement(SQL);
            ps.setString(1, "%" + search + "%");
            ps.setString(2, "%" + search + "%");
            ps.setString(3, "%" + search + "%");
            ps.setString(4, "%" + search + "%");
            rs = ps.executeQuery();
            List<EmpleadoListModel> empleadoList = new ArrayList<>();

            while (rs.next()) {
                EmpleadoListModel empleado = new EmpleadoListModel();
                empleado.setDocumento(rs.getString("numDoc"));
                empleado.setNombreCompleto(rs.getString("nombreCompleto"));
                empleado.setCargo(rs.getString("cargo"));
                empleado.setNumeroTelf(rs.getString("telefono"));
                empleado.setCorreo(rs.getString("correo"));
                empleadoList.add(empleado);
            }
            return empleadoList;
        } catch (SQLException e) {
            System.out.println("Error getAllempleados" + e.getMessage());
            return null;
        } finally {
            try {
                ps.close();
                rs.close();
                conn.Disconnect();
            } catch (SQLException e) {
                System.out.println("Error recerrar conexiones" + e.getMessage());
            }

        }

    }

    public EmpleadoPerfilModel getEmpleado(String documento) {
        EmpleadoPerfilModel empleado;
        String SQL = "SELECT numDoc, concat(nombres, ' ', apellidos) as nombreCompleto,DATE_FORMAT(fechaNac, \"%D %M  %Y\") AS fechaN,rh,municipio,direccion,correo,telefono,cargo,foto  FROM empleados WHERE numDoc= ?;";

        try {
            ps = conn.getConnetion().prepareStatement(SQL);
            ps.setString(1, documento);
            rs = ps.executeQuery();
            empleado = new EmpleadoPerfilModel();
            if (rs.next()) {
                empleado.setDocumento(rs.getString("numDoc"));
                empleado.setNombreCompleto(rs.getString("nombreCompleto"));
                empleado.setCargo(rs.getString("cargo"));
                empleado.setCorreo(rs.getString("correo"));
                empleado.setDireccion(rs.getString("direccion"));
                empleado.setFechNaci(rs.getString("fechaN"));
                empleado.setRh(rs.getString("rh"));
                empleado.setFoto(rs.getString("foto"));
                empleado.setMunicipio(rs.getString("municipio"));
                empleado.setTelefono(rs.getString("telefono"));

            }

            return empleado;

        } catch (SQLException e) {
            System.out.println("Error Empleado perfil " + e.getMessage());
            return null;
        } finally {
            try {
                ps.close();
                rs.close();
                conn.Disconnect();
            } catch (SQLException e) {
                System.out.println("Error recerrar conexiones" + e.getMessage());
            }

        }
    }

    public EmpleadoUpdateModel getUpdatEmpleado(String documento) {
        EmpleadoUpdateModel empleado;
        String SQL = "SELECT numDoc,nombres,apellidos,tipoDoc,DATE_FORMAT(fechaNac, \"%D %M  %Y\") AS fechaN,rh,departamento,municipio,direccion,correo,telefono,cargo FROM empleados WHERE numDoc= ?;";

        try {
            ps = conn.getConnetion().prepareStatement(SQL);
            ps.setString(1, documento);
            rs = ps.executeQuery();
            empleado = new EmpleadoUpdateModel();
            if (rs.next()) {
                empleado.setNumDoc(rs.getString("numDoc"));
                empleado.setNombres(rs.getString("nombres"));
                empleado.setApellidos(rs.getString("apellidos"));
                empleado.setTipoDoc(rs.getString("tipoDoc"));
                empleado.setCargo(rs.getString("cargo"));
                empleado.setCorreo(rs.getString("correo"));
                empleado.setDireccion(rs.getString("direccion"));
                empleado.setFechaNac(rs.getString("fechaN"));
                empleado.setRh(rs.getString("rh"));
                empleado.setDepartamento(rs.getString("departamento"));
                empleado.setMunicipio(rs.getString("municipio"));
                empleado.setTelefono(rs.getString("telefono"));

            }

            return empleado;

        } catch (SQLException e) {
            System.out.println("Error Empleado update perfil " + e.getMessage());
            return null;
        } finally {
            try {
                ps.close();
                rs.close();
                conn.Disconnect();
            } catch (SQLException e) {
                System.out.println("Error recerrar conexiones" + e.getMessage());
            }

        }
    }

    public boolean deleteEmpleado(String empleado) {

        String insertSQL = "DELETE FROM empleados WHERE numDoc = ?;";
        try {
            ps = conn.getConnetion().prepareStatement(insertSQL);
            ps.setString(1, empleado);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            System.out.println("Error al Eliminar empleado : " + ex.getMessage());
            return false;
        } finally {
            try {
                ps.close();
                conn.Disconnect();
            } catch (SQLException e) {
                System.out.println("Error recerrar conexiones" + e.getMessage());
            }

        }
    }
}
