<%@page import="controllers.ControladorVisita" %>
<%@page import="classes.Usuario" %>
<%@page import="models.ModeloUsuario" %>
<jsp:useBean id="sesionactual" class="java.applet.Applet" scope="session" />
<%
    ModeloUsuario mu = new ModeloUsuario();
    HttpSession objsesion = request.getSession(false);
    String usuario = (String)objsesion.getAttribute("usuario");
    int docente = (Integer)objsesion.getAttribute("id");
    if(usuario == null)response.sendRedirect("log.jsp");
    Usuario us = new Usuario();
    us = mu.getUsuario(usuario);
    ControladorVisita cv = new ControladorVisita();
   
   
    
    
%>
<jsp:useBean id="fecha" scope="page" class="java.util.Date"/>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Docentes | UDB</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6 ">
						<div class="contactinfo">
							<ul class="nav nav-pills">
							
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="https://www.facebook.com/UDBelsalvador"><i class="fa fa-facebook"></i></a></li>
								<li><a href="https://twitter.com/udbelsalvador"><i class="fa fa-twitter"></i></a></li>
								<li><a href="https://plus.google.com/111928122673692499018"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="shop.jsp"><img src="images/home/logo.png" alt="" /></a>
						</div>
						
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
                                                            <li><a href=""><i class="fa fa-user"></i>Bienvenido <% out.println(usuario); %></a></li>
						            <li><a href="log.jsp"><i class="fa fa-unlock"></i> Cerrar Sesion</a></li>
                                                        </ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="docentes.jsp">Home</a></li>
								<li class="dropdown"><a href="#" class="active">Sistema<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                        <li><a action="salir">Cerrar Sesion</a></li> 
                                    </ul>
                                </li> 
				    </li> 
					</ul>
				</div>
				</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
				</div>
			</div>
	</header>
					
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Ultimos viajes</h2>
                                                <!--Carga Viajes-->
						<%= cv.getVisitas() %>
																	
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>E</span>Visitas</h2>
							<p>Gracias por ser parte de nuetro programa de visitas de docentes</p>
						</div>
					</div>
					
					<div class="col-sm-3">
						<div class="address">
                                                    <p>Calle a Plan del Pino, Km 1 1/2, Ciudadela Don Bosco, Soyapango.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">							
				</div>
			</div>
		</div>
		
		<div class="footer-botto-container">
			<div class
				<div class="row">
                                    <p class="pull-left">Visitas UDB © </p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
