

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
					<h1 class="letraGrande">- SPORTS AUTO -</h1>
				</div>
				<div>
					<ul>
						<img class="icon" src="resources/img/login.svg">
						<li><a href="login.jsp">LOGIN</a></li>
						<img class="icon" src="resources/img/register.svg">
						<li><a href="register.jsp">REGISTER</a></li>
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