<%-- 
    Document   : empleadoList
    Created on : 25/06/2020, 11:41:33 PM
    Author     : mili
--%>



<% String contextPath = request.getContextPath();%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Agregar Empleado | Access Inspection</title>
        <link rel="stylesheet" href='<%=contextPath%>/css/css/bootstrap.css'>
        <link rel="icon" href='<%=contextPath%>/img/ico-ai.png'>
        <link rel="stylesheet" href='<%=contextPath%>/css/css/bootstrap.min.css'>
        <link rel="stylesheet" href='<%=contextPath%>/css/style.css'>
    </head>
    <body class=" bg-dark">
        <div class="dontShowPhone">

            <%@include file="nav.jsp" %>
            ${exists}
            <div class="container mb-5  mt-1 bg-dark  animated fadeIn">
                <div class="m-auto   w-100">
                    <table class="table table   table-hover table-dark text-center">
                        <thead>
                        <form action="allemployeds" class=" position-fixed" method="POST">
                            <tr>
                                <th colspan="5">
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="${buscar}" name="buscar" placeholder="Buscar Empleado">
                                    </div>
                                </th>
                                <th colspan="2">
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-danger btn-block" value="Buscar">
                                    </div>
                                </th>
                            </tr>
                        </form>
                      
                        </thead>
                    </table>
                    <div class="listaEmpleados">
                        <table class="table table table-hover table-dark text-center">
                             <div class="m-auto   w-100">
                    <table class="table table   table-hover table-dark text-center">
                        <thead>
                       
                        <tr>
                            <th>Documento</th>
                            <th>Nombre completo</th>
                            <th>Cargo</th>
                            <th>Número telefono</th>
                            <th>Correo</th>
                            <th>Acciones</th>
                        </tr>
                        </thead>
                            <tbody>
                                
                                <c:forEach items="${empleados}" var="empleado">
                                <tr>
                                    <td colspan="1"><strong>${empleado.documento}</strong></td>
                                    <td colspan="1">${empleado.nombreCompleto}</td>
                                    <td colspan="1">${empleado.cargo}</td>
                                    <td colspan="1">${empleado.numeroTelf}</td>
                                    <td colspan="1">${empleado.correo}</td>
                                    <td colspan="1">
                                        <div class="btn-group">
                                            <button type="button" class="btn text-white" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu bg-dark">
                                                <a href="empleado?empleadoVer=${empleado.documento}" class="verEmpleados dropdown-item "><i class="far  fa-eye verEmpleados-fa-eye" ></i>  <span>Ver</span></a>
                                                <a href="empleado?empleadEdito=${empleado.documento}" class="verEmpleados  dropdown-item "><i class="fas edit-fa-empleado fa-edit"></i><span>Editar</span> </a>
                                                <a href="empleado?empleadoDelete=${empleado.documento}" class="verEmpleados dropdown-item "><i class="fas trash-delete- fa-trash-alt"></i> <span>Eliminar</span> </a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
                <div class="mt-5 p-2">
                    <%@include file="footer.jsp" %>
                </div>
            
        </div>

    </body>
    <script src='<%=contextPath%>/js/jquery-3.5.1.min.js'></script>
    <script src='<%=contextPath%>/js/js.bootstrap/bootstrap.bundle.js'></script>
    <script src='<%=contextPath%>/js/js.bootstrap/bootstrap.min.js'></script>
    <script src='<%=contextPath%>/js/js.bootstrap/bootstrap.js'></script>
    <script src='<%=contextPath%>/js/js.fontawesome/all.js'></script>
    <script src='<%=contextPath%>/js/js.fontawesome/all.min.js'></script>
    <script src='<%=contextPath%>/js/script.js'></script>

</html>
