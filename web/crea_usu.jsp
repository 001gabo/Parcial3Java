<%@include file="taglibs.jsp" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.ControladorVisita" %>
<%@page import="classes.Usuario" %>
<%@page import="models.ModeloUsuario" %>
<%
    ModeloUsuario mu = new ModeloUsuario();
    HttpSession objsesion = request.getSession(false);
    String usuario = (String)objsesion.getAttribute("usuario");
    String rol = (String)objsesion.getAttribute("rol");
    if(rol != "director")
    {
        response.sendRedirect("log.jsp");
    }
    Usuario us = new Usuario();
    us = mu.getUsuario(usuario);
    ControladorVisita cv = new ControladorVisita();
 
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creacion de usuario</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
    </head>
    <body>
    <center><h3>Creacion de usuarios</h3></center>
    <center><p>Porfavor ingrese un nombre y un apellido</p></center>
        <form action="result_uscreado.jsp" method="post">
            <div class="container container-fluid">
                <div class="row">
                    <div class="col-md-4"></div>
                    
                    <div class="col-md-4">
                        <label>Apellido:</label><br>
                        <input type="text" name="apellidos"/><br><br>
                        <label>Nombre:</label><br>
                        <input type="text" name="nombres"/><br><br> 
                        
                        <sql:setDataSource
                            driver="com.mysql.jdbc.Driver"
                            url="jdbc:mysql://localhost/parcial3java"
                            user="root"
                            password=""
                            var="dataSource"
                            />  
                        <sql:query var="result" dataSource="${dataSource}">
                                   select * from escuelas
                        </sql:query>
                                   <label>Seleccione una escuela</label><br>
                                   <select name="ddescuelas">
                                   <c:forEach var="escu" items="${result.rows}" >
                                       <option value="${escu.id}"${escu.id==selectedSchool?'selected':''}>${escu.nombre}</option>       
                                    </c:forEach> 
                                    </select>
                                  
                                           
                        <br><br>
                        <button type="submit" class="btn btn-info">Crear</button>
                    </div>
                        
                        <div class="col-md-4">  
                        </div>
                </div>
            </div>
        </form>
    </body>
</html>
