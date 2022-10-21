<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="nombredominio.modelsDAO.GarajeDAO"%>
<%@page import="nombredominio.models.Garaje"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT GARAJE</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<h1>USUARIO EDIT</h1>
	<%
	//UsuarioDAO usuarioDAO = new UsuarioDAO();
	//int Id_usuario = Integer.parseInt(request.getAttribute("id_usuario").toString());
	Garaje garaje = (Garaje) request.getAttribute("gar");

	//Usuario usuario = new Usuario();
	//usuario = usuarioDAO.find(Id_usuario);
	%>


	<form method="POST" action="GarajesController?action=update">

		<input type="hidden" name="id_garaje" value="<%=garaje.getId_garaje()%>">
		<h3>Capacidad</h3>
		<input type="text" name="capacidad" value="<%=garaje.getCapacidad() %>">
		<h3>Sitios Ocupados</h3>
		<input type="text" name="sitiosOcupados" value="<%=garaje.getSitiosOcupados()%>">

		<button type="subimit">Actualizar</button>

	</form>

</body>
</html>