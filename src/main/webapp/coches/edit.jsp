<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>
<%@page import="nombredominio.modelsDAO.CocheDAO"%>
<%@page import="nombredominio.models.Coche"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT COCHE</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body>
	<!--------------- CABECERA -------------------------------->
	<!-- NAV -->
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

		<div class="mobile-container">

			<!-- Top Navigation Menu -->
			<div class="topnav">
				<img src="resources/img/logo.jpg" height="100px">
				<div id="myLinks">
					<a href="home.jsp">INICIO</a> <a
						href="UsuariosController?action=index">USUARIOS </a> <a
						href="CochesController?action=index">COCHES</a> <a
						href="GarajesController?action=index">GARAJE</a> <a
						href="ConcesionariosController?action=index">CONCESIONARIOS</a> <a>______</a>

					<a style="color: red;"><%=usuario.getNombre()%></a> <a
						href="AuthController?action=logout">CERRAR SESSION</a>
				</div>
				<a href="javascript:void(0);" class="icono" onclick="navFunction()">
				</a>
			</div>
	</header>
	<!--------------- FIN CABECERA -------------------------------->
	<div id="contenedorTablas">
		<div class="tablas">
			<h1>COCHE EDIT</h1>
			<%
			//UsuarioDAO usuarioDAO = new UsuarioDAO();
			//int Id_usuario = Integer.parseInt(request.getAttribute("id_usuario").toString());
			Coche coche = (Coche) request.getAttribute("coc");

			//Usuario usuario = new Usuario();
			//usuario = usuarioDAO.find(Id_usuario);
			%>


			<form method="POST" action="CochesController?action=update">

				<input type="hidden" name="id_coche"
					value="<%=coche.getId_coche()%>">
				<h3>Name</h3>
				<input type="text" name="nombre" value="<%=coche.getNombre()%>">
				<h3>Marca</h3>
				<input type="text" name="marca" value="<%=coche.getMarca()%>">
				<h3>Precio</h3>
				<input type="text" name="precio" value="<%=coche.getPrecio()%>">
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
	<!---------------------------------------- FIN FOOTER ------------------------------->
	<script type="text/javascript" src="resources/js/js.js"></script>

</body>
</html>