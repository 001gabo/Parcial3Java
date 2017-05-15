<%@include file="taglibs.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado agenda</title>
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
                <% 
                    String institucion="",fecha="",selDocente="";
                    if(request.getParameter("institucion")!=null){
                        institucion=request.getParameter("institucion");
                    }if(request.getParameter("fecha")!=null){
                        fecha=request.getParameter("fecha");
                    }if(request.getParameter("selDocente")!=null){
                        selDocente=request.getParameter("selDocente");
                    }
                    int iddocente=Integer.parseInt(selDocente);
                %>
                 <!--Obteniendo a la persona a la cual se le agendara la visita-->
                <sql:setDataSource
                    driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost/parcial3java"
                    user="root"
                    password=""
                    var="dataSource"
                    /> 
                <sql:query var="result" dataSource="${dataSource}">
                    select * from persona where persona.id=?
                    <sql:param value='<%=iddocente%>'/>
                </sql:query> 
                <c:forEach var="row" items="${result.rows}">
                    <c:set var="apellido" scope="page" value="${row.apellido}"/>     
                    <c:set var="nombre" scope="page" value="${row.nombre}"/>   
                </c:forEach> 
                    
                    <!--Seleccionando el usuario-->
                <sql:query var="resultUsu" dataSource="${dataSource}">
                    select usuario.id from usuario where usuario.idpersona=?
                    <sql:param value='<%=iddocente%>'/>
                </sql:query>
                <c:forEach var="row" items="${resultUsu.rows}">
                    <c:set var="idusuario" scope="page" value="${row.id}"/> 
                </c:forEach> 
                    
                    <!--Insertando la visita-->
                <sql:update var="insertUsu" dataSource="${dataSource}">
                    insert into visitas(usuario,fecha,institucion)values(?,?,?)
                    <sql:param value="${idusuario}"/>
                    <sql:param value='<%=fecha%>'/>
                    <sql:param value="<%=institucion%>"/> 
                </sql:update>     
                
                    
                   
                <div id="resultados">
                    <p style="font-size: 20px;"> Al usuario: <c:out value="${nombre}"/> <c:out value="${apellido}"/> se le ha asiganado 
                        una visita que esta programada para <%=fecha%> en  
                        <%=institucion%><br><br>
                        <a href="director.jsp"><button type="button">Regresar</button></a>
                </div>
                        
                        
            </div> 
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> 
        <script src="js/index.js"></script>
    </body>
</html>
