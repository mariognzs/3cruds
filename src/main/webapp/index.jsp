<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="nombredominio.modelsDAO.CocheDAO"%>
<%@page import="nombredominio.models.Coche"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body>
	<!-- NAV -->
	<header>
		<div id="header">
			<nav>
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
						<li><a href="GarajesController?action=index">GARAJE</a></li>
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

	<video autoplay muted loop>
		<source src="resources/video/videoCoche.mp4" type="video/mp4">
		Your browser does not support the video tag.
	</video>

<%
			CocheDAO cocheDAO = new CocheDAO();
			ArrayList<Coche> coches = cocheDAO.all();
				Coche coche; 
			%>

	<div id="contenedor">
		<% coche = coches.get(0); %>
		<div id="item1">
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche1.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button>
				<a href="">Editar</a>
			</button>
		</div>
		<% coche = coches.get(1); %>
		<div id="item2">
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche2.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button >
				<a href="">Editar</a>
			</button>
		</div>
		<% coche = coches.get(2); %>
		<div id="item3">
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche3.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button>
				<a href="">Editar</a>
			</button>
		</div>
			<% coche = coches.get(3); %>
		<div id="item4">
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche4.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button>
				<a href="CochesController?action=edit&id_coche=<%=coche.getId_coche()%>">Editar</a>
			</button>
		</div>
		<div id="item5">
			<% coche = coches.get(4); %>
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche5.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button>
				<a href="">Editar</a>
			</button>
		</div>
		<div id="item6">
			<% coche = coches.get(5); %>
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche6.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button>
				<a href="">Editar</a>
			</button>
		</div>
		<div id="item7">
			<% coche = coches.get(6); %>
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche7.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button>
				<a href="">Editar</a>
			</button>
		</div>
		<div id="item8">
			<% coche = coches.get(7); %>
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche8.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button>
				<a href="">Editar</a>
			</button>
		</div>
		<% coche = coches.get(8); %>
		<div id="item9">
			<h3>Nombre: <%=coche.getNombre()%></h3>
			<img src="resources/img/coche9.jpg" width="300px">
			<p>Marca: <%=coche.getMarca()%></p>
			<button>
				<a href="">Editar</a>
			</button>
		</div>

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