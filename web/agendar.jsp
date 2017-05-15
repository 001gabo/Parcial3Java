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
  
  
  
      <link rel="stylesheet" href="css/style.css">

     
</head>

<body>
<sql:setDataSource
                            driver="com.mysql.jdbc.Driver"
                            url="jdbc:mysql://localhost/parcial3java"
                            user="root"
                            password=""
                            var="dataSource"
                            />  
<sql:query var="result" dataSource="${dataSource}">select * from persona where  persona.idescuela = 1   </sql:query>
  <div class="form" >
      <h2>INGRESE INFORMACION DE NUEVA VISITA</h2>
    <form  method="post" class="login-form"  id="forminicio">
        <select>
        <c:forEach var="docente" items="${result.rows}" >
             <option value="${escu.id}"${escu.id==selectedSchool?'selected':''} >${escu.nombre}</option>     
         </c:forEach>  
        </select>
        
        <input type="text" name="docente" value="1">
        <input type="date" name="fecha"/><br>
        <input type="text"  placeholder="Institucion"  name="escuela">           
      <button type="submit" >Crear</button>
    </form>
      
    </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
