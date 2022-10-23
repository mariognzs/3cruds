<%
if (request.getSession().getAttribute("usuario") != null) {
} else {
	response.sendRedirect("AuthController?action=login");
}
%>