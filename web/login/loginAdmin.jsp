
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession se = request.getSession();
    if (se.getAttribute("login") == "login") {      
        String user = (String) se.getAttribute("accessUser");
        switch (user) {
            case "Milton":
                System.out.println("erroor en el login miltom");
                //response.sendRedirect("../admin/adminusers.jsp");
                break;
            case "Daren":
                System.out.println("erroor en el login Daren");
                //response.sendRedirect("../admin/adminusers.jsp");
                break;
        }
    }
%>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ACCESS LOGIN | ACESS INSPECTION</title>
    <link rel="stylesheet" href="<%=contextPath%>/css/css/bootstrap.css">
    <link rel="icon" href="<%=contextPath%>/img/ico.png">
    <link rel="stylesheet" href="<%=contextPath%>/css/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=contextPath%>/css/style.css">
</head>

<body class="bg-dark">
    <div class="showCampos">
        <div class="container mt-5">
            <div class="row mt-5">
                <div class="col-md-5 m-auto ">
                    <div class="card card-color-login mt-5">
                        <div class="card-header text-center mt-2">
                            <h1>ACCESS INSPECTION</h1>
                            <hr>
                            <object class="m-auto">
                                <embed class="img-fluid img-custom-w-login"  src="<%=contextPath%>/img/ico.svg">
                            </object>

                        </div>
                        <div class="card-body">
                            <form action='<%=contextPath%>/j_security_check' name="form" method="post">
                                <div class="form-group">
                                    <input name='j_username' type="text" class="form-control" placeholder="Ingrese Usuario">
                                </div>
                                <div class="form-group">
                                    <input name='j_password' type="password" class="form-control" placeholder="Ingrese Contraseña">
                                </div>
                                <div class="form-group">
                                    <input name="submit" type="submit" class="btn btn-block btn-outline-primary" value="Ingresar">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="<%=contextPath%>/js/jquery-3.5.1.min.js"></script>
<script src="<%=contextPath%>/js/js.bootstrap/bootstrap.min.js"></script>
<script src="<%=contextPath%>/js/js.bootstrap/bootstrap.js"></script>
<script src="<%=contextPath%>/js/js.fontawesome/all.js"></script>
<script src="<%=contextPath%>/js/js.fontawesome/all.min.js"></script>

</html>