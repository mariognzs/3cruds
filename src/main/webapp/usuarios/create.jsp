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
	<header>
		<div id="header">
			<nav class=".alinearVertical">
				<div>
					<a href="home.jsp"><img src="resources/img/logo.jpg"
						height="100px"></a>
				</div>
				<div>
					<ul>
						<li><a href="home.jsp">INICIO</a></li>
						<li><a href="UsuariosController?action=index">USUARIOS </a></li>
						<li><a href="CochesController?action=index">COCHES</a></li>
						<li><a href="GarajesController?action=index">GARAJE</a></li>
						<li>|</li>
						<%
						Usuario usuario = new Usuario();
						usuario = (Usuario) request.getSession().getAttribute("usuario");
						%>
						<img class="icon" src="resources/img/login.svg">
						<li style="color: red;"><%=usuario.getNombre()%></li>
						<img class="icon" src="resources/img/logout.svg">
						<li><a href="AuthController?action=logout">CERRAR SESSION</a></li>

					</ul>
				</div>
			</nav>
			<hr>
		</div>
	</header>
	<!--------------- FIN CABECERA -------------------------------->

	<div id="contenedorTablas">
		<div class="tablas">
			<h1>USUARIOS CREATE</h1>
			<form method="POST" action="UsuariosController?action=create">

				<input type="hidden" name="id_usuario">
				<h3>Nombre:</h3>
				<input type="text" name="nombre"> <br>
				<h3>Email:</h3>
				<input type="email" name="email"> <br>
				<h3>Password:</h3>
				<input type="password" name="password"> <br>
				<button type="submit">Enviar</button>
			</form>
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
		</div>
	</div>
	<!---------------------------------------- FIN FOOTER ------------------------------->

</body>
</html>