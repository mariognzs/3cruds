<%@page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@page import="nombredominio.models.Usuario"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT USUARIO</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<h1>USUARIO EDIT</h1>
	<%
	//UsuarioDAO usuarioDAO = new UsuarioDAO();
	//int Id_usuario = Integer.parseInt(request.getAttribute("id_usuario").toString());
	Usuario usuario = (Usuario) request.getAttribute("usu");

	//Usuario usuario = new Usuario();
	//usuario = usuarioDAO.find(Id_usuario);
	%>


	<form method="POST" action="UsuariosController?action=update">

		<input type="hidden" name="id_usuario"value="<%=usuario.getId_usuario()%>">
		<h3>Name</h3>
		<input type="text" name="nombre" value="<%=usuario.getNombre()%>">
		<h3>Email</h3>
		<input type="email" name="email" value="<%=usuario.getEmail()%>">
		<h3>Password</h3>
		<input type="password" name="password"
			value="<%=usuario.getPassword()%>">

		<button type="subimit">Actualizar</button>

	</form>

</body>
</html>