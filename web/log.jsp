<!DOCTYPE html>
<html >
 <head>
<%
  
    HttpSession objsesion = request.getSession(false);
    objsesion.invalidate();
 
%>
  <meta charset="UTF-8">
  <title>Bienvenido</title>
      <link rel="stylesheet" href="css/style.css">
      <script src="js/vali.js" type="text/javascript"></script>
   
</head>

<body>
  <div class="login-page">
  <div class="form" >
    
    <form action="iniciar"  method="post" class="login-form"  id="forminicio">
      <input type="text" placeholder="usuario" name="usuario" id="txtusuario"/>
      <input type="password" placeholder="password" name="password" id="txtpass" />
      <button type="submit" id="btniniciar">login</button>
     
    </form>
      
    </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
