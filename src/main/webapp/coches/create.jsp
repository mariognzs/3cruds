<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.CocheDAO"%>
<%@page import="nombredominio.models.Coche"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE USUARIO</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<h1>USUARIOS CREATE</h1>
	<form method="POST" action="CochesController?action=create">

		<input type="hidden" name="id_coche">
		<p>Nombre:</p>
		<input type="text" name="nombre"> <br>
		<h3>Marca:</h3>
		<input type="text" name="marca"> <br>
		<h3>Precio:</h3>
		<input type="text" name="precio"> <br>
		<button type="submit">Enviar</button>
	</form>

</body>
</html>