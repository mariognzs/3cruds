<%
if (request.getSession().getAttribute("usuario") != null) {
	out.println("<p>EXISTE USUARIO LOGUEADO</p>");
} else {
	response.sendRedirect("AuthController?action=login");
}
%>