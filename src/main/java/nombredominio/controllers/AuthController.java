package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import nombredominio.models.Usuario;
import nombredominio.modelsDAO.UsuarioDAO;

public class AuthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
String action, acceso;
	
	Usuario usuario;
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	
	String email, password;
	
	String login = "login.jsp";
	String create = "usuarios/create.jsp";
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		action = request.getParameter("action");
		
		switch (action) {
		case "login":
			acceso = login;
			
			break;

		default:
			break;
		}
	
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		action = request.getParameter("action");
		
		switch(action){
		
		case "login":
			
		email = request.getParameter("email");
		password  = request.getParameter("password");
		
		if(usuarioDAO.validate(email,password)) {
			acceso = create;
		}else {
			acceso = login;	
		}
			break;
		default:
			break;
		
		
		}
			
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
		
	}

}
