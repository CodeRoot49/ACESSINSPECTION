/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package access.controller;

import access.model.EmpleadoListModel;
import access.services.GetAllEmpleadosService;
import java.io.IOException;
import java.util.List;
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
public class EmpleadoGetList extends HttpServlet {
    private RequestDispatcher rd;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession se = request.getSession();
        String location = response.encodeURL(request.getHeader("referer"));
        if (location != null) {
            if (action.equals("listempleado")) {
                List<EmpleadoListModel> list = new GetAllEmpleadosService().getAllEmpleados("");
                request.setAttribute("empleados", list);
                rd = request.getRequestDispatcher("/admin/users/empleadoList.jsp");
                rd.forward(request, response);
            }
        }else{
             response.sendRedirect(request.getContextPath() + "/index.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String buscar = request.getParameter("buscar");
        if(buscar!=null){
            List<EmpleadoListModel> list = new GetAllEmpleadosService().getAllEmpleados(buscar);
            request.setAttribute("empleados", list);
             request.setAttribute("buscar", buscar);
            rd = request.getRequestDispatcher("/admin/users/empleadoList.jsp");
            rd.forward(request, response);
        }
    }

}
