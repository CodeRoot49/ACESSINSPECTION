package access.services;

import access.dao.AccessConexionDao;
import access.dao.AccessEmpleadoDao;
import access.model.EmpleadoAddModel;
import access.model.EmpleadoListModel;
import access.model.EmpleadoPerfilModel;
import access.model.EmpleadoUpdateModel;
import java.util.Date;
import java.util.List;

public class GetAllEmpleadosService {

    private final AccessConexionDao conn = new AccessConexionDao();
    private final AccessEmpleadoDao emDao = new AccessEmpleadoDao(conn);
    private boolean empleadodel;

    public List<EmpleadoListModel> getAllEmpleados(String search) {
        List<EmpleadoListModel> listEmpleado = emDao.getAllEmpleados(search);
        conn.Disconnect();
        return listEmpleado;
    }

    public EmpleadoPerfilModel getEmpleado(String documento) {
        EmpleadoPerfilModel empleado = emDao.getEmpleado(documento);
        conn.Disconnect();
        return empleado;
    }

    public EmpleadoUpdateModel getUpdateEmpleado(String documento) {
        EmpleadoUpdateModel updateEmpleado = emDao.getUpdatEmpleado(documento);
        conn.Disconnect();
        return updateEmpleado;
    }

    public boolean verifyExistingEmpleado(String documento) {
        boolean addVerify = emDao.verifyExistingEmpleado(documento);
        return addVerify;
    }

    public boolean setEmpleado(String numDoc, String nombre, String apellido, String tipoDoc,
            Date fechaNac, String rh, String departamento, String municipio,
            String direccion, String correo, String telefono, String cargo,
            String foto) {
        EmpleadoAddModel add = new EmpleadoAddModel();
        add.setNumDoc(numDoc);
        add.setNombre(nombre);
        add.setApellido(apellido);
        add.setTipoDoc(tipoDoc);
        add.setCargo(cargo);
        add.setFechaNac(fechaNac);
        add.setCorreo(correo);
        add.setDepartamento(departamento);
        add.setMunicipio(municipio);
        add.setRh(rh);
        add.setTelefono(telefono);
        add.setFoto(foto);
        add.setIdAdmin("1");
        boolean addCorrect = emDao.insertEmpleado(add);
        return addCorrect;
    }

    public boolean getDeleteEmpleado(String documento) {
        boolean em = emDao.deleteEmpleado(documento);
        return em;

    }

}
