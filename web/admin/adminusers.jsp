
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Empleado | Access Inspection</title>
    <link rel="stylesheet" href='<%=contextPath%>/css/css/bootstrap.css'>
    <link rel="icon" href='<%=contextPath%>/img/ico-ai.png'>
    <link rel="stylesheet" href='<%=contextPath%>/css/css/bootstrap.min.css'>
    <link rel="stylesheet" href='<%=contextPath%>/css/style.css'>
</head>

<body class=" bg-dark">
    <div class="dontShowPhone">
       <%@include file="users/nav.jsp" %>
        <div class="container mt-5 ml-auto mr-auto animated fadeIn mb-5">
            ${msg}
            <div class="col m-auto d-flex  p-3">
                <a href='<%=contextNavPath%>/allemployeds?action=listempleado' class="list-border-none text-white p-5  text-decoration-none  fontAwesom m-5">
                    <div class="card border-danger  card-w bg-dark text-center">
                        <i class="fas fa-users ml-auto  mr-auto mt-3 fa-5x"></i>
                        <div class="card-body">
                            <h3>Lista de Empleados</h3>
                        </div>
                    </div>
                </a>
                <a href='<%=contextPath%>/admin/users/addEmplead.jsp' class="list-border-none m-5 p-5 float-right text-white text-decoration-none  fontAwesom m-3">
                    <div class="card card-w border-danger text-center bg-dark">
                        <i class="fas fa-user-plus ml-auto  mr-auto mt-3 fa-5x"></i>
                        <div class="card-body">
                            <h3>Agregar Empleado</h3>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        
    </div>
<di class="mt-5 p-3">
     <%@include file="users/footer.jsp" %>
</di>
                   
</body>
<script src='<%=contextPath%>/js/jquery-3.5.1.min.js'></script>
<script src='<%=contextPath%>/js/js.bootstrap/bootstrap.bundle.js'></script>
<script src='<%=contextPath%>/js/js.bootstrap/bootstrap.min.js'></script>
<script src='<%=contextPath%>/js/js.bootstrap/bootstrap.js'></script>
<script src='<%=contextPath%>/js/js.fontawesome/all.js'></script>
<script src='<%=contextPath%>/js/js.fontawesome/all.min.js'></script>

</html>