<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>
<%@page import="nombredominio.modelsDAO.GarajeDAO"%>
<%@page import="nombredominio.models.Garaje"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX GARAJES</title>
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
			<h1>GARAJES INDEX</h1>

			<table border="1">
				<thead>
					<tr>
						<th>#</th>
						<th>Capacidad</th>
						<th>Sitios Ocupados</th>
						<th>Usuario ID</th>
						<th>Coche ID</th>
						<th></th>
						<th></th>

					</tr>
				</thead>
				<tbody>
					<%
					GarajeDAO garajeDAO = new GarajeDAO();
					ArrayList<Garaje> garajes = garajeDAO.all();

					for (int i = 0; i < garajes.size(); i++) {
						Garaje garaje = garajes.get(i);
					%>
					<tr>
						<td><%=garaje.getId_garaje()%></td>
						<td><%=garaje.getCapacidad()%></td>
						<td><%=garaje.getSitiosOcupados()%></td>
						<td><%=garaje.getUsuario_id()%></td>
						<td><%=garaje.getCoche_id()%></td>
						<td><a
							href="GarajesController?action=edit&id_garaje=<%=garaje.getId_garaje()%>">
								Edit </a></td>
						<td><a
							href="GarajesController?action=delete&id_garaje=<%=garaje.getId_garaje()%>">
								Delete </a></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<button>
				<a href="GarajesController?action=create">Crear Garaje</a>
			</button>
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