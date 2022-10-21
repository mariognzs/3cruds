<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.CocheDAO"%>
<%@page import="nombredominio.models.Coche"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT COCHE</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body>

	<h1>USUARIO EDIT</h1>
	<%
	//UsuarioDAO usuarioDAO = new UsuarioDAO();
	//int Id_usuario = Integer.parseInt(request.getAttribute("id_usuario").toString());
	Coche coche = (Coche) request.getAttribute("coc");

	//Usuario usuario = new Usuario();
	//usuario = usuarioDAO.find(Id_usuario);
	%>


	<form method="POST" action="CochesController?action=update">

		<input type="hidden" name="id_coche" value="<%=coche.getId_coche()%>">
		<h3>Name</h3>
		<input type="text" name="nombre" value="<%=coche.getNombre()%>">
		<h3>Marca</h3>
		<input type="text" name="marca" value="<%=coche.getMarca()%>">
		<h3>Precio</h3>
		<input type="text" name="precio" value="<%=coche.getPrecio()%>">

		<button type="subimit">Actualizar</button>

	</form>

</body>
</html>