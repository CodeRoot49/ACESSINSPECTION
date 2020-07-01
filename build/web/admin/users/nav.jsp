<%-- 
    Document   : nav
    Created on : 25/06/2020, 06:59:04 PM
    Author     : mili
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String contextNavPath = request.getContextPath();%>

<nav class="navbar navbar-expand-lg ">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <a class="navbar-brand navbar-brand-logo ml-4 mr-5" href="<%=contextNavPath%>">
            <object>
                <embed class="img-fluid img-custom-w"  src="<%=contextNavPath%>/img/icoHeader.svg">
            </object>
        </a>
       
        <ul class="navbar-nav  mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="<%=contextNavPath%>">Inicio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href='<%=contextNavPath%>/admin/adminusers.jsp'>Administrador</a>
            </li>
             <li class="nav-item">
                <a class="nav-link" href='<%=contextNavPath%>/allemployeds?action=listempleado'>Lista Empleados</a>
            </li>
              <li class="nav-item">
                <a class="nav-link" href="<%=contextNavPath%>/admin/users/addempleado.jsp">Agregar Empleado</a>
            </li>
        </ul>
        <div class="nav-item dropdown  mt-3 ml-5 mr-4">
            <a class="nav-link " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas  fa-user-cog fontAwesom ml-4"></i><i class="fas fa-caret-down"></i>
                <p>Daren salazar </p>
            </a>
            <div class="dropdown-menu bg-dark " aria-labelledby="navbarDropdown">
                <a class="btn btn-outline-danger text-white  btn-block" href='<%=contextNavPath%>/logout?action=logout'>Salir</a>
            </div>

        </div>
    </div>
</nav>
