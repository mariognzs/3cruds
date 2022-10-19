<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<!-- 	 <link rel="StyleSheet" media="screen" type="text/css" href="http://localhost:8084/3cruds/src/main/webapp/resources/css/estilos.css">
 -->
</head>
<body>
	<div id="contenedor">
		<!-- NAV -->
		<header>
			<div id="header">
				<nav>
					<ol>
						<li><a href="index.jsp">INICIO</a></li>
						<li><a href="UsuariosController?action=index">USUARIOS
								INDEX</a></li>
						<li><a href="CochesController?action=index">COCHES</a></li>
						<li><a href="garaje.jsp">GARAJE</a></li>
						<li><a href="login.jsp">LOGIN</a></li>
						<li><a href="usuarios/create.jsp">REGISTER</a></li>
					</ol>
				</nav>
			</div>
		</header>

		<div id="videoContenedor">
			<video autoplay muted loop width="100">
				<source src="resources/video/videoCoche.mp4" type="video/mp4">
				Your browser does not support the video tag.
			</video>
		</div>
	</div>
</body>
</html>