<!DOCTYPE html>
<html >
 <head>
  <meta charset="UTF-8">
  <title>Flat HTML5/CSS3 Login Form</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">
      <script src="js/vali.js" type="text/javascript"></script>
     
</head>

<body>
  <div class="login-page">
  <div class="form" >
    <form class="register-form" method="post" action="registrar">
      <input type="text" placeholder="nombres" name="nombres"/>
      <input type="text" placeholder="apellidos"name="apellidos"/>
      <input type="text" placeholder="pasaporte" name="pasaporte"/>
      <input type="text" placeholder="correo" name="correo"/>
      <input type="text" placeholder="usuario" name="usuario"/>
      <input type="password" placeholder="password" name="password"/>
      <input type="phone" placeholder="telefono" name="telefono"/>
      <button type="submit" >Crear</button>
      <p class="message">¿Ya estas registrado? <a href="#">ingresa</a></p>
    </form>
     
    <form action="iniciar"  method="post" class="login-form"  id="forminicio">
      <input type="text" placeholder="usuario" name="usuario" id="txtusuario"/>
      <input type="password" placeholder="password" name="password" id="txtpass" />
      <button type="submit" id="btniniciar">login</button>
      <p class="message">¿No te haz registrado?<a href="#">Crear una cuenta</a></p>
    </form>
      
    </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
