<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="login-validation.jsp"%>
<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body>

	<!-- NAV -->
	<header>
		<div id="header">
			<nav class=".alinearVertical">
				<div>
					<a href="index.jsp"><img src="resources/img/logo.jpg"height="100px"></a>
				</div>
				<div>
					<ul>
						<li><a href="index.jsp">INICIO</a></li>
						<li><a href="UsuariosController?action=index">USUARIOS
								INDEX</a></li>
						<li><a href="CochesController?action=index">COCHES</a></li>
						<li><a href="garaje.jsp">GARAJE</a></li>
						<li>|</li>
						<%
						UsuarioDAO usuarioDAO = new UsuarioDAO();
						ArrayList<Usuario> usuarios = usuarioDAO.all();
						request.getSession().getAttribute("id_usuario");
						Usuario usuario = usuarios.get(1); //pillar id con Session
						%>
						<li><%=usuario.getEmail()%></li>
						<li><a href="AuthController?action=logout">CERRAR SESSION</a></li>

					</ul>
				</div>
			</nav>
			<hr>
		</div>
	</header>





		<footer>
			<hr>
			<address>Copyright &#169 garajesEmpresa</address>
			<p>Redes Sociales:</p>
			<div id="socialMedia">
				<a href="#"><img src="resources/img/logoInstagram.png"></a>
				<a href="#"><img src="resources/img/logoFacebook.png"></a>
				<a href="#"><img src="resources/img/logoWhatsApp.png"></a>
			</div>
		</footer>

</body>
</html>