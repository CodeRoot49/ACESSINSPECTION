<%-- 
    Document   : verEmpleado
    Created on : 26/06/2020, 09:49:13 PM
    Author     : mili
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath();
    HttpSession se = request.getSession();
    
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> HUELLA EMPLEADO | Access Inspection</title>
    <link rel="stylesheet" href="<%=contextPath%>/css/css/bootstrap.css">
    <link rel="icon" href="<%=contextPath%>/img/ico.png">
    <link rel="stylesheet" href="<%=contextPath%>/css/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=contextPath%>/css/style.css">
</head>

<body class="bg-dark">
    <%@include file="nav.jsp" %>
    <div class="container mt-5 ml-auto mr-auto animated fadeIn">
        <div class=" m-auto p-3">
            <div class="card text-white bg-dark border-white mb-3" style="max-width: 1200px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="<%=contextPath%>/${service.foto}" class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <div class="btn-group float-right">
                                <button type="button" class="btn text-white" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-ellipsis-v"></i>
                                    </button>
                                <div class="dropdown-menu bg-dark">
                                    <a href="empleado?empleadEdito=${service.documento}" class="verEmpleados w-auto  dropdown-item "><i class="fas edit-fa-empleado fa-edit"></i><span>Editar</span> </a>
                                    <a href="${service.documento}" class="verEmpleados w-auto  dropdown-item "><i class="fas trash-delete- fa-trash-alt"></i> <span>Eliminar</span> </a>
                                </div>
                            </div>
                            <h1 class="card-title">${service.nombreCompleto}</h1>

                            <p> <strong>Documento :</strong> <span>${service.documento}</span></p>
                            <p> <strong>Cargo :</strong> <span>${service.cargo}</span></p>
                            <p><strong>telefono :</strong>${service.telefono}</p>
                            <p><strong>Correo :</strong>${service.correo}</p>
                            <p><strong>fecha nacimiento :</strong>${service.fechNaci}</p>
                            <p><strong>Municipio :</strong>${service.municipio}</p>
                            <p><strong>Dirección</strong>${service.direccion}</p>
                            <p><strong>RH :</strong>${service.rh} </p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                    <div class="mt-5 p-2">
                    <%@include file="footer.jsp" %>
                </div>
    </div>
</body>
<script src="<%=contextPath%>/js/jquery-3.5.1.min.js"></script>
<script src="<%=contextPath%>/js/js.bootstrap/bootstrap.bundle.js"></script>
<script src="<%=contextPath%>/js/js.bootstrap/bootstrap.min.js"></script>
<script src="<%=contextPath%>/js/js.bootstrap/bootstrap.js"></script>
<script src="<%=contextPath%>/js/js.fontawesome/all.js"></script>
<script src="<%=contextPath%>/js/js.fontawesome/all.min.js"></script>

</html>
