

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String contextPath = request.getContextPath();
   
     
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Access Inspection</title>
    <link rel="icon" href='<%=contextPath%>/img/ico-ai.png'>
    <link rel="stylesheet" href='<%=contextPath%>/css/css/bootstrap.css'>
    <link rel="stylesheet" href='<%=contextPath%>/css/css/bootstrap.min.css'>
    <link rel="stylesheet" href='<%=contextPath%>/css/style.css'>
</head>

<body class="bg-dark">
    <div class="showCampos">
        <%
             HttpSession se = request.getSession();
            String location = response.encodeURL(request.getHeader("referer"));
        if(location!=null){%>
            <%@include file="admin/users/nav.jsp" %>
        <%}else{%>
        <nav class="navbar navbar-expand-lg">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <a class="navbar-brand navbar-brand-logo mr-5" href="#">
                    <object>
                        <embed class="img-fluid img-custom-w"  src='<%=contextPath%>/img/icoHeader.svg'>
                    </object>
                </a>

                <div class="nav-item dropdown ml-auto">
                    <ul class="navbar-nav  ">
                        <li class="nav-item active">
                            <a class="nav-link" href='<%=contextPath%>/admin/adminreport.jsp'><i class="fas fa-user-tie fontAwesom"></i>Administrador Reporte</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href='<%=contextPath%>/admin/adminusers.jsp'><i class="fas fa-user-cog fontAwesom"></i>Administrador Empleado</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <%}%>
        <div class="container animated fadeIn">
            <div class="jumbotron jumbotron-index d-flex">
                <div class="col-md-6  p-4">
                    <h1 class="display-4 display-4-text  mb-4 mr-4">Bienvenido a Access Inspection </h1>
                    <hr class="bg-dark">
                    <p>
                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus necessitatibus repellat natus, exercitationem commodi, soluta sit maiores animi a ipsa unde numquam deserunt, pariatur voluptatibus blanditiis veniam amet tenetur eum. Lorem ipsum dolor
                        sit, amet consectetur adipisicing elit. Doloribus necessitatibus repellat natus, exercitationem commodi, soluta sit maiores animi a ipsa unde numquam deserunt, pariatur voluptatibus blanditiis veniam amet tenetur eum.
                    </p>
                </div>
                <div class="col-md-7 dontShowPhone">
                    <object>
                            <embed class="img-fluid img-custom-w-j-5 m- "  src='<%=contextPath%>/img/ico.svg'>
                        </object>
                </div>
            </div>
        </div>
    </div>
</body>
<script src='<%=contextPath%>/js/jquery-3.5.1.min.js'></script>
<script src='<%=contextPath%>/js/js.bootstrap/bootstrap.min.js'></script>
<script src='<%=contextPath%>/js/js.bootstrap/bootstrap.js'></script>
<script src='<%=contextPath%>/js/js.fontawesome/all.js'></script>
<script src='<%=contextPath%>/js/js.fontawesome/all.min.js'></script>

</html>
