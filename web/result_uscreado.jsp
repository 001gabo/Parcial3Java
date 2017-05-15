<%@include file="taglibs.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession objsesion = request.getSession(false);
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
        <title>Resultado usuario</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
    </head>
    <body align="center">
        <% 
            String apellidos="",nombres="",ddescuelas="";
            if(request.getParameter("apellidos")!=null){
                apellidos=request.getParameter("apellidos");
            }if(request.getParameter("nombres")!=null){
                nombres=request.getParameter("nombres");
            }if(request.getParameter("ddescuelas")!=null){
                ddescuelas=request.getParameter("ddescuelas");
            }
        %>
        <h3>Resultado</h3>
        <jsp:useBean id="sesionactual" class="beans.DatosUsuario" scope="session"/>
        <jsp:setProperty name="sesionactual" property="apellidos" value="<%=apellidos%>"/>
        <jsp:setProperty name="sesionactual" property="nombres" value="<%=nombres%>"/>
        <jsp:setProperty name="sesionactual" property="escuela" value="<%=ddescuelas%>"/>
        <div style="font-size: 15px;">
             
            <div style="text-align: center;" >
            <%  
                    String usuario = sesionactual.getUsuario(apellidos,nombres);
                    out.println("Su usuario es:");
                    out.println(usuario);  
            %>
            <br><br>        
            <%
                    String pass = sesionactual.getUsuario(apellidos,nombres);
                    out.println("Su contraseña es:");
                    out.println(pass); 
            %>
            <br><br> 
            </div>
                <sql:setDataSource
                            driver="com.mysql.jdbc.Driver"
                            url="jdbc:mysql://localhost/parcial3java"
                            user="root"
                            password=""
                            var="dataSource"
                            />  
                        <sql:update var="insertUsu" dataSource="${dataSource}">
                            insert into persona(apellido,nombre,idescuela,rol)values(?,?,?,?)
                            <sql:param value="${param.apellidos}"/>
                            <sql:param value="${param.nombres}"/>
                            <sql:param value="${param.ddescuelas}"/>
                            <sql:param value="2"/> 
                        </sql:update> 
                            
                        <sql:query var="getUsu" dataSource="${dataSource}">
                            select persona.id from persona where persona.apellido=?
                            <sql:param value="${param.apellidos}"/> 
                        </sql:query>
                            <c:forEach var="row" items="${getUsu.rows}">
                                <c:set var="idpersona" scope="page" value="${row.id}"/>     
                            </c:forEach> 
                        <sql:update var="insertUsu" dataSource="${dataSource}">
                            insert into usuario(usuario,pass,idpersona)values(?,MD5(?),?)
                            <sql:param value='<%=usuario%>'/>
                            <sql:param value='<%=pass%>'/>
                            <sql:param value="${idpersona}"/> 
                        </sql:update> 
                            <br><br>
                            <a href="director.jsp"><button class="btn btn-default">Inicio</button></a>
        </div>
    </body>
</html>
