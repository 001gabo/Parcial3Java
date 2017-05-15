<%@include file="taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Flat HTML5/CSS3 Login Form</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

     
</head>

<body>
  <div class="login-page">
  <div class="form" >
      <h2>INGRESE INFORMACION DE NUEVA VISITA</h2>
    <form action="insertar"  method="post" class="login-form"  id="forminicio">
        <sql:setDataSource
                            driver="com.mysql.jdbc.Driver"
                            url="jdbc:mysql://localhost/parcial3java"
                            user="root"
                            password=""
                            var="dataSource"
                            />  
     <sql:query var="result" dataSource="${dataSource}">
                                   select * from 
                        </sql:query>
                                   <label>Seleccione una escuela</label><br>
                                   <select name="ddescuelas">
                                   <c:forEach var="escu" items="${result.rows}" >
                                       <option value="${escu.id}"${escu.id==selectedSchool?'selected':''}>${escu.nombre}</option>       
                                    </c:forEach> 
                                   </select><br><br>
      <input type="date" placeholder="fecha" name="fecha"/><br>
      
                        <sql:query var="result" dataSource="${dataSource}">
                                   select * from escuelas
                        </sql:query>
                                   <label>Seleccione una escuela</label><br>
                                   <select name="ddescuelas">
                                   <c:forEach var="escu" items="${result.rows}" >
                                       <option value="${escu.id}"${escu.id==selectedSchool?'selected':''}>${escu.nombre}</option>       
                                    </c:forEach> 
                                    </select>
                                   <br>
      <button type="submit" >Crear</button>
    </form>
      
    </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
