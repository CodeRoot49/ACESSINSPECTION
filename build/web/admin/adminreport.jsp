
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <title>AI | reportes</title>
    <link rel="icon" href='<%=contextPath%>/img/ico.png'>
    <link rel="stylesheet" href='<%=contextPath%>/css/style.css'>
</head>

<body>
    <div class="header-adminConf">
        <nav class="nav-contain">
            <div class="logo-nav">
                <object>
                    <embed class="logoAI" src='<%=contextPath%>/img/ico.svg'>
                </object>

            </div>
            <p>
                ACCESS REPORTE
            </p>
            <ul class="ul">
                <li class="ul-li">
                    <i class="fas fa-user-tie fa-1x"></i>
                    <p>
                        <!--Aqui se pone el nombre del administrador por medio de una etiqueta de java-->
                        ${accessUser}
                    </p>
                </li>
                <li class="ul-li">
                    <a class="btn btn-danger-outline" href=>Salir</a>                    
                </li>
            </ul>
        </nav>
    </div>
    <div class="container-login">
        <div class="row-conf">
            <a href="#" class="icones-link">
                <i class="fas fa-clipboard-list fa-5x"></i>
                <h5 class="reportH5">Reporte Diario</h5>
            </a>
            <a href="#" class="icones-link">
                <i class="fas fa-book fa-5x"></i>
                <h5 class="reportH5">Reporte quincenal</h5>
            </a>


        </div>
    </div>
</body>
<script src="../js/all.js"></script>

</html>