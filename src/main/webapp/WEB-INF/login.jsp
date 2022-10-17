<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>USUARIOS CREATE</h1>
		<form method="POST" action="AuthController?action=login">
        	
       	<input type="hidden" name="id">
       	<p>Nombre:</p>
       	<input type="text" name="nombre">
       	<br>
		<h3>Email:</h3>
		<input type="email" name="email">
		<br>
		<h3>Password:</h3>
		<input type="password" name="password">
		<br>
        <button type="submit">Enviar</button>	
	</form>
	
	
	

</body><body>

</body>
</html>