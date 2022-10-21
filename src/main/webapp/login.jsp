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
	<header>
		<div id="header">
			<nav class=".alinearVertical">
				<div>
					<a href="index.jsp"><img src="resources/img/logo.jpg"
						height="100px"></a>
				</div>
				<div>
					<ul>
						<li><a href="index.jsp">INICIO</a></li>
						<li><a href="UsuariosController?action=index">USUARIOS
								INDEX</a></li>
						<li><a href="CochesController?action=index">COCHES</a></li>
						<li><a href="garaje.jsp">GARAJE</a></li>
						<li>|</li>
						<img class="icon" src="resources/img/login.svg">
						<li><a href="login.jsp">LOGIN</a></li>
						<img class="icon" src="resources/img/register.svg">
						<li><a href="usuarios/create.jsp">REGISTER</a></li>
					</ul>
				</div>
			</nav>
			<hr>
		</div>
	</header>
	<div id="formulario">
		<form method="POST" action="AuthController?action=login">
			<div id="contenedorForm"> 
				<p>Email:</p>
				<input type="email" name="email"> <br>
				<p>Password:</p>
				<input type="text" name="password"> <br>
				<button type="submit">Enviar</button>
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



</body>
</html>