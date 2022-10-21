<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE USUARIO</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<h1>USUARIOS CREATE</h1>
	<form method="POST" action="GarajesController?action=create">

		<input type="hidden" name="id_garaje">
		<h3>Capacidad:</h3>
		<input type="text" name="capacidad"> <br>
		<h3>Sitios Ocupados:</h3>
		<input type="text" name="sitiosOcupados"> <br>
		<button type="submit">Enviar</button>
	</form>
</body>
</html>