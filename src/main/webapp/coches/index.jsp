<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.CocheDAO"%>
<%@page import="nombredominio.models.Coche"%>
<%@page import="java.util.ArrayList"%>
<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX COCHES</title>
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
			<h1>COCHES INDEX</h1>
			<table border="1">
				<thead>
					<tr>
						<th>#</th>
						<th>Nombre</th>
						<th>Marca</th>
						<th>Precio</th>
						<th></th>
						<th></th>

					</tr>
				</thead>
				<tbody>
					<%
					CocheDAO cocheDAO = new CocheDAO();
					ArrayList<Coche> coches = cocheDAO.all();

					for (int i = 0; i < coches.size(); i++) {
						Coche coche = coches.get(i);
					%>
					<tr>
						<td><%=coche.getId_coche()%></td>
						<td><%=coche.getNombre()%></td>
						<td><%=coche.getMarca()%></td>
						<td><%=coche.getPrecio()%></td>
						<td><a
							href="CochesController?action=edit&id_coche=<%=coche.getId_coche()%>">
								Edit </a></td>
						<td><a
							href="CochesController?action=delete&id_coche=<%=coche.getId_coche()%>">
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