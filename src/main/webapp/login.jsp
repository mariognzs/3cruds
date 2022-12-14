<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body>

	<!-- NAV -->
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
					<a href="index.jsp">INICIO</a> <a href="login.jsp">LOGIN</a> <a
						href="register.jsp">REGISTER</a>
				</div>
				<a href="javascript:void(0);" class="icono" onclick="navFunction()">
				</a>
			</div>
	</header>
	<div id="formulario">
		<form method="POST" action="AuthController?action=login">
			<div id="contenedorForm">
				<div id="bordeLogin" style="border: 1px solid white;">
					<h1>LOGIN</h1>
					<h3>Email:</h3>
					<input type="email" name="email" placeholder="Tu correo ...">
					<br>
					<h3>Password:</h3>
					<input type="text" name="password" placeholder="Tu contrasena ...">
					<br>
					<button type="submit">Enviar</button>
				</div>
			</div>
		</form>
	</div>

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
	<script type="text/javascript" src="resources/js/js.js"></script>

</body>
</html>