<%@include file="taglibs.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index director</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <center><h1>Bienvenido director de escuela</h1></center>
        <div class="container container-fluid" align="center">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <a href="crea_usu.jsp"><button class="btn btn-primary">Agrega un docente</button></a><br><br>
                    <a href="agenda_visita.jsp"><button class="btn btn-primary">Agenda una visita a un docente</button></a><br><br> 
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </body>
</html>
