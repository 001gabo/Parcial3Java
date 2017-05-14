<!DOCTYPE html>
<%
    HttpSession objsesion = request.getSession(false);
    objsesion.invalidate();
%>
<html>
     <script src="js/vali.js" type="text/javascript"></script>
<head>
  <meta charset="UTF-8">
  <title>Flat HTML5/CSS3 Login Form</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="login-page">
  <div class="form" >
    <form action="iniciar"  method="post" class="login-form"  id="forminicio">
      <input type="text" placeholder="usuario" name="user" id="txtusuario"/>
      <input type="password" placeholder="password" name="pass" id="txtpass" />
      <button type="submit" id="btniniciar">login</button>
    </form>
    </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src="js/index.js"></script>
</body>
</html>
