<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@ include file="../login-validation.jsp"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX USUARIOS</title>
<link href="resources/css/style.css" type="text/css" rel="stylesheet">
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
			<h1>USUARIOS INDEX</h1>

			<table border="1">
				<thead>
					<tr>
						<th>#</th>
						<th>Nombre</th>
						<th>Mail</th>
						<th>Password</th>
						<th></th>
						<th></th>

					</tr>
				</thead>
				<tbody>
					<%
					UsuarioDAO usuarioDAO = new UsuarioDAO();
					ArrayList<Usuario> usuarios = usuarioDAO.all();

					for (int i = 0; i < usuarios.size(); i++) {
						usuario = usuarios.get(i);
					%>

					<tr>
						<td><%=usuario.getId_usuario()%></td>
						<td><%=usuario.getNombre()%></td>
						<td><%=usuario.getEmail()%></td>
						<td><%=usuario.getPassword()%></td>
						<td><a
							href="UsuariosController?action=edit&id_usuario=<%=usuario.getId_usuario()%>">
								Edit </a></td>
						<td><a
							href="UsuariosController?action=delete&id_usuario=<%=usuario.getId_usuario()%>">
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


</body>
</html>