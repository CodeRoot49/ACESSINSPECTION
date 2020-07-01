<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>

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
        <div class="container  ml-auto mr-auto animated fadeIn">
            <div class="col-md-auto m-auto p-3">
                <%=
                    request.getAttribute("error")
                        
                    
                %>
                <form action="empleado" method="POST">
                    <table class="table table-hover table-dark mt-3">
                        <thead>
                            <tr>
                                <th colspan="5">
                                    <h3 class="text-center">Agregar empleado</h3>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="2">
                                    <label for="nombre">Nombre: </label>
                                    <input class="form-control" name="nombres" type="text" required>
                                </td>
                                <td colspan="3">
                                    <label for="nombre">Apellido: </label>
                                    <input class="form-control" name="apellidos" type="text"  required>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <label for="tipoDocumento">Tipo de documento: </label>
                                    <select name="tipoDoc" class="custom-select" required>
                                    <option value="CC">Cédula</option>
                                    <option value="PP">Pasaporte</option>
                                    <option value="vs">Visa de trabajo</option>

                                </select>
                                </td>
                                <td colspan="1">
                                    <label for="NrDocumento">Nº de Documento: </label>
                                    <input class="form-control" name="numDoc" type="number" pattern='[0-9]{5,20}' required>
                                </td>
                                <td colspan="2">
                                    <label for="fecha">Fecha de nacimiento: </label>
                                    <input class="form-control" name="fechaNac" type="date" required>
                                </td>
                                <td>
                                    <label for="rh">RH </label>
                                    <select name="rh" class="custom-select" required>
                                    <option value="O-">O Negativo</option>
                                    <option value="O+">O positivo</option>
                                    <option value="A-">A negativo</option>
                                    <option value="A+">A positivo</option>
                                    <option value="B-">B negativo</option>
                                    <option value="B+">B positivo</option>
                                    <option value="AB-">AB negativo</option>
                                    <option value="AB+">AB positivo</option>
                                </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="1">
                                    <label for="departamento">Departamento </label>
                                    <div id="dep"></div>
                                </td>
                                <td colspan="1">
                                    <label for="municipios">Municipios</label>
                                    <select name="municipio" id="mun" class="custom-select" required>
                                     
                                    </select>
                                </td>

                                <td colspan="3">
                                    <label for="address">Dirección: </label>
                                    <input class="form-control" name="direccion" type="text" required>
                                </td>


                            </tr>
                            <tr>
                                <td colspan="2">
                                    <label for="email">Correo: </label>
                                    <input class="form-control" name="correo" type="email" required>
                                </td>
                                <td colspan="1">
                                    <label for="telefono">Telefono o Celular: </label>
                                    <input class="form-control" name="telefono" type="number" pattern='[0-9]{5,20}' required>
                                </td>
                                <td colspan="1">
                                    <label for="email">Cargo: </label>
                                    <input class="form-control" name="cargo" type="text" required>
                                </td>
                                <td colspan="1">
                                    <label for="telefono">Foto: </label>
                                    <div class="input-group mb-3">
                                        <div class="custom-file">
                                            <input name="rtFoto" type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" required>
                                            <label class="custom-file-label" for="inputGroupFile01">Subir foto</label>
                                        </div>
                                    </div>
                                </td>

                            </tr>
                            <tr>
                                <td colspan="2 ">
                                    <button class="btn btn-danger m-1" type="reset">Borrar todo</button>
                                </td>
                                <td colspan="3">
                                    <button class="btn float-right btn-primary btn-success-aproved ml-5" type="submit">Guardar</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
                    <%@include file="footer.jsp" %>
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