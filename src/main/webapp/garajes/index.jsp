<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.GarajeDAO"%>
<%@page import="nombredominio.models.Garaje"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX GARAJES</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>

	<h1>GARAJES INDEX</h1>
	<a href="GarajesController?action=create">Crear Garaje</a>
	<table border="1">
		<thead>
			<tr>
				<th>#</th>
				<th>Nombre</th>
				<th>Marca</th>
				<th>Precio</th>
				<th></th>
				<th></th>

			</tr>
		</thead>
		<tbody>
			<%
			GarajeDAO garajeDAO = new GarajeDAO();
			ArrayList<Garaje> garajes = garajeDAO.all();

			for (int i = 0; i < garajes.size(); i++) {
				Garaje garaje = garajes.get(i);
			%>
			<tr>
				<td><%=garaje.getId_garaje()%></td>
				<td><%=garaje.getCapacidad()%></td>
				<td><%=garaje.getSitiosOcupados()%></td>
				<td><a
					href="GrajesController?action=edit&id_garaje=<%=garaje.getId_garaje()%>">
						Edit </a></td>
				<td><a
					href="GarajesController?action=delete&id_garaje=<%=garaje.getId_garaje()%>">
						Delete </a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

</body>
</html>