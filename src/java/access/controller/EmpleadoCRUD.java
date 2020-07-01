/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package access.controller;

import access.model.EmpleadoPerfilModel;
import access.model.EmpleadoUpdateModel;
import access.services.GetAllEmpleadosService;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mili
 */
public class EmpleadoCRUD extends HttpServlet {

    /**/
    private RequestDispatcher rd;
    private String msg;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String empleado = request.getParameter("empleadoVer");
        String editEmpleado = request.getParameter("empleadEdito");
        String deleteEmpleado = request.getParameter("empleadoDelete");
        HttpSession se = request.getSession(true);
        String location = response.encodeURL(request.getHeader("referer"));
        EmpleadoUpdateModel serviceUpdate = new GetAllEmpleadosService().getUpdateEmpleado(editEmpleado);
        EmpleadoPerfilModel service = new GetAllEmpleadosService().getEmpleado(empleado);
        boolean delEmpleado = new GetAllEmpleadosService().getDeleteEmpleado(deleteEmpleado);
        if (location != null) {

            if (editEmpleado != null) {
                request.setAttribute("update", serviceUpdate);
                rd = request.getRequestDispatcher("/admin/users/updateEmpleado.jsp");
                rd.forward(request, response);
            }

            if (empleado != null) {

                request.setAttribute("service", service);
                rd = request.getRequestDispatcher("/admin/users/verEmpleado.jsp");
                rd.forward(request, response);
            }
            if (deleteEmpleado != null) {
                if (delEmpleado) {
                    msg = "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\"><strong>¡Empleado de cédula: " + deleteEmpleado + " a sido eliminado!</strong><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"> <span aria-hidden=\"true\">&times;</span> </button></div>";
                    request.setAttribute("msg", msg);
                    rd = request.getRequestDispatcher("/admin/adminusers.jsp");
                    rd.forward(request, response);
                }
            }

        } else {
            if (deleteEmpleado != null) {
                msg = "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\"><strong>¡Error al intentar eliminar!</strong><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"> <span aria-hidden=\"true\">&times;</span> </button></div>";
                request.setAttribute("msg", msg);
                rd = request.getRequestDispatcher("/admin/adminusers.jsp");
                rd.forward(request, response);
            }
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String hola = request.getParameter("hola");
        System.out.println(hola);
        Date fechaConverted = null;
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String tipoDoc = request.getParameter("tipoDoc");
        String numDoc = request.getParameter("numDoc");
        String fecha = request.getParameter("fechaNac");
        SimpleDateFormat fechaConvert = new SimpleDateFormat("yyyy-MM-dd");
        try {
            fechaConverted = fechaConvert.parse(fecha);
        } catch (ParseException ex) {
            Logger.getLogger(EmpleadoCRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        String rh = request.getParameter("rh");
        String departamento = request.getParameter("departamento");
        String municipio = request.getParameter("municipio");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String cargo = request.getParameter("cargo");
        String rtFoto = request.getParameter("rtFoto");

        boolean addVerify = new GetAllEmpleadosService().verifyExistingEmpleado(numDoc);
        if (addVerify) {
            System.out.println("El empleado ya existe en el sistema...");
            //msg = "<div class=\"usuarioExiste\">Este Usuario ya esta registrado</div>";
            // sesion.setAttribute("exists", msg);
            msg = "<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\"><strong>¡Empleado ya Existe!</strong><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"> <span aria-hidden=\"true\">&times;</span> </button></div>";
            request.setAttribute("error", msg);
            rd = request.getRequestDispatcher("/admin/users/addempleado.jsp");
            // response.sendRedirect(request.getContextPath() + "/admin/users/addempleado.jsp");
            rd.forward(request, response);
        } else {
            boolean inserVerify = new GetAllEmpleadosService().setEmpleado(numDoc, nombres, apellidos, tipoDoc, fechaConverted, rh, departamento, municipio, direccion, correo, telefono, cargo, rtFoto);
            // Preparamos un mensaje para el usuario

            if (inserVerify) {
                msg = "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\"><strong>¡Empleado guardado!</strong><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"> <span aria-hidden=\"true\">&times;</span> </button></div>";
                request.setAttribute("error", msg);
                rd = request.getRequestDispatcher("/admin/users/addempleado.jsp");
                // response.sendRedirect(request.getContextPath() + "/admin/users/addempleado.jsp");
                rd.forward(request, response);
            } else {
                msg = "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\"><strong>¡Error al intentar guardar empleado!</strong><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"> <span aria-hidden=\"true\">&times;</span> </button></div>";
                request.setAttribute("error", msg);
                rd = request.getRequestDispatcher("/admin/users/addempleado.jsp");
                // response.sendRedirect(request.getContextPath() + "/admin/users/addempleado.jsp");
                rd.forward(request, response);
            }
        }
    }

}
