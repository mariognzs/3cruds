<%@page import = "nombredominio.modelsDAO.UsuarioDAO" %>
<%@page import = "nombredominio.models.Usuario" %>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX USUARIOS</title>
<link href="resources/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<h1>USUARIOS INDEX</h1>
	<a href="UsuariosController?action=create">Crear usuario</a>
	<table border="1">
		<thead>
			<tr>
				<th>#</th>
				<th>Nombre</th>
				<th>Mail</th>
				<th>Password</th>	
				<th></th>
				<th></th>
				
			</tr>	
		</thead>
		<tbody>
		<%
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			ArrayList<Usuario> usuarios = usuarioDAO.all();
			
			for(int i = 0; i < usuarios.size(); i ++){
				Usuario usuario = usuarios.get(i);
		
			
		%>
		
			<tr>
				<td><%= usuario.getId_usuario() %></td>
				<td><%= usuario.getNombre() %></td>
				<td><%= usuario.getEmail() %></td>
				<td><%= usuario.getPassword() %></td>
				<td>
					<a href="UsuariosController?action=edit&id_usuario=<%= usuario.getId_usuario() %>"> Edit </a>
				</td>
				<td>
					<a href="UsuariosController?action=delete&id_usuario=<%= usuario.getId_usuario() %>"> Delete </a>	
				</td>
			</tr>
			
			
			
			<%} %>
		</tbody>
		
		
	</table>

</body>
</html>