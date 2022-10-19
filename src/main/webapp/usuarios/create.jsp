<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@ page import="nombredominio.models.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE USUARIO</title>
</head>
<body>
	<h1>USUARIOS CREATE</h1>
	<form method="POST" action="UsuariosController?action=create">

		<input type="hidden" name="id">
		<p>Nombre:</p>
		<input type="text" name="nombre"> <br>
		<h3>Email:</h3>
		<input type="email" name="email"> <br>
		<h3>Password:</h3>
		<input type="password" name="password"> <br>
		<button type="submit">Enviar</button>
	</form>




</body>
</html>