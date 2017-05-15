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
  <meta charset="UTF-8">
  <title>Flat HTML5/CSS3 Login Form</title> 
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
      <h2>INGRESE INFORMACION DE NUEVA VISITA</h2>
      <form  method="post" class="login-form"  id="forminicio" action="result_agendar.jsp">
        <% 
            String  ddescuelas=""; 
            if(request.getParameter("ddescuelas")!=null){
                ddescuelas=request.getParameter("ddescuelas");
            }
        %>
         <sql:setDataSource
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/parcial3java"
            user="root"
            password=""
            var="dataSource"
            /> 
        <sql:query var="result" dataSource="${dataSource}">
            select * from persona where persona.idescuela = ? and persona.rol=2
            <sql:param value='<%=ddescuelas%>'/>
        </sql:query>
            
        <label>Seleccione un docente</label><br><br>
        <select name="selDocente">
            <c:forEach var="teacher" items="${result.rows}" >
                <option value="${teacher.id}"${teacher.id==selectedTeacher?'selected':''}>${teacher.nombre} ${teacher.apellido}</option>       
            </c:forEach> 
        </select>     
        <br><br>
        <input type="date" name="fecha" required/><br>
        <input type="text"  placeholder="Institucion"  name="institucion" required>           
         <button type="submit" >Crear</button>
      
    </div> 
    </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
