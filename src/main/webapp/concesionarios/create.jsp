<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>
<%@page import="nombredominio.modelsDAO.ConcesionarioDAO"%>
<%@page import="nombredominio.models.Concesionario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--------------- CABECERA -------------------------------->
<header>
	<div id="header">
		<nav>
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
					<li><a href="ConcesionariosController?action=index">CONCESIONARIOS</a></li>
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
		<title>CREATE COCHE</title>
		<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<h1>COCHE CREATE</h1>
	<form method="POST" action="ConcesionariosController?action=create">

		<input type="hidden" name="id_concesionario">
		<p>Nombre:</p>
		<input type="text" name="nombre"> <br>
		<h3>Ciudad:</h3>
		<input type="text" name="ciudad"> <br>
		<h3>Pais:</h3>
		<input type="text" name="pais"> <br>
		<button type="submit">Enviar</button>
	</form>
	</div>
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

</body>
</html>