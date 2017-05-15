<%@include file="taglibs.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  HttpSession objsesion = request.getSession(false);
    String usuario = (String)objsesion.getAttribute("usuario");
    String rol = (String)objsesion.getAttribute("rol");
    if(rol != "director")
    {
        response.sendRedirect("log.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendar visitas</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="login-page">
              <div class="form" >
        <h3>Hora de asignar una visita a un docente</h3>
        <p>Primero selecciona la escuela del docente al cual se le asignara la visita.</p>
        <form action="agendar.jsp" method="post">
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
                                   <a href="agendar.jsp"><button type="submit" >Siguiente</button></a><br><br>
                                   <a href="director.jsp"><button type="button">Inicio</button></a>
          </form>      
        </div>
        </div> 
                        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    </body>
</html>
