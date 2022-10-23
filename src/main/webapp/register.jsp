<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@ page import="nombredominio.models.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE USUARIO</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<!--------------- CABECERA -------------------------------->
	<!-- NAV -->
	<header>
		<div id="header">
			<nav>
				<div>
					<a href="index.jsp"><img src="resources/img/logo.jpg"
						height="100px"></a>
				</div>
				<div>
					<h1 class="letraGrande">- SPORTS AUTO -</h1>
				</div>
				<div>
					<ul>
						<img class="icon" src="resources/img/login.svg">
						<li><a href="login.jsp">LOGIN</a></li>
						<img class="icon" src="resources/img/register.svg">
						<li><a href="register.jsp">REGISTER</a></li>
					</ul>
				</div>
			</nav>
			<hr>
		</div>

		<div class="mobile-container">

			<!-- Top Navigation Menu -->
			<div class="topnav">
				<img src="resources/img/logo.jpg" height="100px">
				<div id="myLinks">
					<a href="index.jsp">INICIO</a> <a href="login.jsp">LOGIN</a> <a href="register.jsp">REGISTER</a>
				</div>
				<a href="javascript:void(0);" class="icono" onclick="navFunction()">
				</a>
			</div>
	</header>
	<!--------------- FIN CABECERA -------------------------------->

	<div id="formulario">
		<!-- 		<div id="contenedorTablas">
			<div class="tablas"> -->
		<form method="POST" action="UsuariosController?action=regiter">
			<div id="contenedorForm">
				<div id="bordeLogin" style="border: 1px solid white;">
					<input type="hidden" name="id_usuario">
					<h1>REGISTER</h1>
					<h3>Nombre:</h3>
					<input type="text" name="nombre"> <br>
					<h3>Email:</h3>
					<input type="email" name="email"> <br>
					<h3>Password:</h3>
					<input type="password" name="password"> <br>
					<button type="submit">Enviar</button>
				</div>
			</div>
		</form>
	</div>

	<!-------------------------------------------- FOOTER ------------------------------------->
	<footer>
		<hr>
		<address>Copyright &#169 garajesEmpresa</address>
		<p>Redes Sociales:</p>
		<div id="socialMedia">
			<a href="#"><img src="resources/img/logoInstagram.png"></a> <a
				href="#"><img src="resources/img/logoFacebook.png"></a> <a
				href="#"><img src="resources/img/logoWhatsApp.png"></a>
		</div>
	</footer>

	<!---------------------------------------- FIN FOOTER ------------------------------->
	<script type="text/javascript" src="resources/js/js.js"></script>

</body>
</html>