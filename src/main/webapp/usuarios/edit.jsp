<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT USUARIO</title>
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
			<h1>USUARIO EDIT</h1>
			<%
			//UsuarioDAO usuarioDAO = new UsuarioDAO();
			//int Id_usuario = Integer.parseInt(request.getAttribute("id_usuario").toString());
			usuario = (Usuario) request.getAttribute("usu");

			//Usuario usuario = new Usuario();
			//usuario = usuarioDAO.find(Id_usuario);
			%>


			<form method="POST" action="UsuariosController?action=update">

				<input type="hidden" name="id_usuario"
					value="<%=usuario.getId_usuario()%>">
				<h3>Name</h3>
				<input type="text" name="nombre" value="<%=usuario.getNombre()%>">
				<h3>Email</h3>
				<input type="email" name="email" value="<%=usuario.getEmail()%>">
				<h3>Password</h3>
				<input type="password" name="password"
					value="<%=usuario.getPassword()%>">
				<br>
				<button type="subimit">Actualizar</button>

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
</body>
</html>