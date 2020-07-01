
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=none">
        <title>AI | Login administrador</title>
    </head>
    <body>
        <%
            RequestDispatcher rd;
            String msg ="<div class=\"alert alert-danger alert-heading fade show\" role=\"alert\"><strong>Usuario y/o contraseña incorrecta</strong><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button></div>"; 
            String location = response.encodeURL(request.getHeader("referer"));
            request.setAttribute("msgError", msg);
                rd = request.getRequestDispatcher(location);
                rd.forward(request, response);
            response.sendRedirect(location);
        %>
    </body>

</html>