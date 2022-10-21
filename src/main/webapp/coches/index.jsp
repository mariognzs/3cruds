<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="nombredominio.modelsDAO.CocheDAO"%>
<%@page import="nombredominio.models.Coche"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX COCHES</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>

	<h1>COCHES INDEX</h1>
	<a href="CochesController?action=create">Crear Coche</a>
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
			CocheDAO cocheDAO = new CocheDAO();
			ArrayList<Coche> coches = cocheDAO.all();

			for (int i = 0; i < coches.size(); i++) {
				Coche coche = coches.get(i);
			%>
			<tr>
				<td><%=coche.getId_coche()%></td>
				<td><%=coche.getNombre()%></td>
				<td><%=coche.getMarca()%></td>
				<td><%=coche.getPrecio()%></td>
				<td><a
					href="CochesController?action=edit&id_coche=<%=coche.getId_coche()%>">
						Edit </a></td>
				<td><a
					href="CochesController?action=delete&id_coche=<%=coche.getId_coche()%>">
						Delete </a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>