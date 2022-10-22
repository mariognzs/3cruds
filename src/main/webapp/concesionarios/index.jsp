<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.ConcesionarioDAO"%>
<%@page import="nombredominio.models.Concesionario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX CONCESIONARIO</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
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
			<h1>CONCESIONARIOS INDEX</h1>
			<table border="1">
				<thead>
					<tr>
						<th>#</th>
						<th>Nombre</th>
						<th>Ciudad</th>
						<th>Precio</th>
						<th></th>
						<th></th>

					</tr>
				</thead>
				<tbody>
					<%
					ConcesionarioDAO concesionarioDAO = new ConcesionarioDAO();
					ArrayList<Concesionario> concesionarios = concesionarioDAO.all();

					for (int i = 0; i < concesionarios.size(); i++) {
						Concesionario concesionario = concesionarios.get(i);
					%>
					<tr>
						<td><%=concesionario.getId_concesionario()%></td>
						<td><%=concesionario.getNombre()%></td>
						<td><%=concesionario.getCiudad()%></td>
						<td><%=concesionario.getPais()%></td>
						<td><a
							href="ConcesionariosController?action=edit&id_concesionario=<%=concesionario.getId_concesionario()%>">
								Edit </a></td>
						<td><a
							href="ConcesionariosController?action=delete&id_concesionario=<%=concesionario.getId_concesionario()%>">
								Delete </a></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<button>
				<a href="ConcesionariosController?action=create">Crear Garaje</a>
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

</body>