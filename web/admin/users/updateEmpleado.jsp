<%-- 
    Document   : updateEmpleado
    Created on : 27/06/2020, 05:15:12 PM
    Author     : mili
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath();%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Actualizar Empleado | Access Inspection</title>
    <link rel="stylesheet" href="<%=contextPath%>/css/css/bootstrap.css">
    <link rel="icon" href="<%=contextPath%>/img/ico.png">
    <link rel="stylesheet" href="<%=contextPath%>/css/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=contextPath%>/css/style.css">
</head>

<body class=" bg-dark">
    <div class="dontShowPhone">
         <%@include file="nav.jsp" %>
        <div class="container mt-3 ml-auto mr-auto animated fadeIn">
            <div class="col-md-auto m-auto p-3">
                <form action="/addUserEmployet" method="POST">
                    <table class="table table-hover table-dark mt-3">
                        <thead>
                            <tr>
                                <th colspan="5">
                                    <h3 class="text-center">Actulizar empleado</h3>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="2">
                                    <label for="nombre">Nombre: </label>
                                    <input class="form-control" value="${update.nombres}" name="nombre" type="text">
                                </td>
                                <td colspan="3">
                                    <label for="nombre">Apellido: </label>
                                    <input class="form-control" value="${update.apellidos}" name="apellido" type="text">
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <label for="tipoDocumento">Tipo de documento: </label>
                                    <h3>${update.tipoDoc} </h3>
                                </td>
                                <td colspan="1">
                                    <label for="NrDocumento">Numero de Documento: </label>
                                    <input class="form-control" value="${update.numDoc}" name="NrDocumento" type="number">
                                </td>
                                <td colspan="2">
                                    <label for="fecha">Fecha de nacimiento: </label>
                                    <h5>${update.fechaNac}</h5>
                                    <input type="hidden" name="idAdminitrador" value="%=pasar id del administrador%">
                                </td>
                                <td>
                                    <label for="rh">RH </label>
                                    <h5>${update.rh}</h5>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="1">
                                    <label for="departamento">Departamento </label>
                                    <div id="dep">
                                       
                                    </div>
                                </td>
                                <td colspan="1">
                                    <label for="municipios">Municipios</label>
                                    <select name="municipios" id="mun" class="custom-select">
                                     
                                    </select>
                                </td>

                                <td colspan="3">
                                    <label for="address">Dirección: </label>
                                    <input class="form-control" value="${update.direccion}" name="address" type="text">
                                </td>


                            </tr>
                            <tr>
                                <td colspan="1">
                                    <label for="email">Cargo: </label>
                                    <input class="form-control" value="${update.cargo}" name="cargo" type="text">
                                </td>
                                <td colspan="2">
                                    <label for="email">Correo: </label>
                                    <input class="form-control" value="${update.correo}" name="email" type="email">
                                </td>
                                <td colspan="2">
                                    <label for="telefono">Telefono o Celular: </label>
                                    <input class="form-control" value="${update.telefono}" name="telefono" type="text">
                                </td>

                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button class="btn btn-danger m-1" type="reset">Borrar todo</button>
                                </td>
                                <td colspan="3">
                                    <button class="btn float-right btn-primary btn-success-aproved ml-5" type="submit">Actualizar</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</body>
<script src="<%=contextPath%>/js/jquery-3.5.1.min.js"></script>
<script src="<%=contextPath%>/js/js.bootstrap/bootstrap.bundle.js"></script>
<script src="<%=contextPath%>/js/js.bootstrap/bootstrap.min.js"></script>
<script src="<%=contextPath%>/js/js.bootstrap/bootstrap.js"></script>
<script src="<%=contextPath%>/js/js.fontawesome/all.js"></script>
<script src="<%=contextPath%>/js/js.fontawesome/all.min.js"></script>
<script src="<%=contextPath%>/js/script.js"></script>

</html>