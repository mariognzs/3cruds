package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import nombredominio.models.Usuario;
import nombredominio.modelsDAO.UsuarioDAO;

import java.io.IOException;
import java.util.ArrayList;

public class UsuariosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String acceso; // Variable que distingue entre las vistas a las que tengo que redireccionar
	String action; // Variable que recibo por URL y que me enlaza con el metodo/vista correspondiente
	
	Usuario usuario;
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	
	String nombre, email, password;
	
	String index = "usuarios/index.jsp";
	String create = "usuarios/create.jsp";
	String edit = "usuarios/edit.jsp";
	
	ArrayList<Usuario> usuarios;
	
	int id_usuario;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		acceso = "";
		action = request.getParameter("action");

		switch (action) {
		case "index":
			usuarios  = usuarioDAO.all();
			request.setAttribute("user", usuarios);
			acceso = index;
			break;

		case "create":
			acceso = create;
			break;
			
		case "edit":
			id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
			//request.setAttribute("id_usuario", id_usuario);
			//acceso = edit;

			request.setAttribute("usu", usuarioDAO.find(id_usuario));			
			acceso = edit;
			
			break;
			
			
		case"delete":
			id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
			usuarioDAO.delete(id_usuario);
			
			acceso = index;
			break;


		default:
			break;
		}
		
		RequestDispatcher vista  = request.getRequestDispatcher(acceso);
		vista.forward(request,response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		acceso = "";
		action = request.getParameter("action");

		switch (action) {
		case "create":
			nombre = request.getParameter("nombre");
			email = request.getParameter("email");
			password = request.getParameter("password");
			
			usuario = new Usuario();
			usuario.setNombre(nombre);
			usuario.setEmail(email);
			usuario.setPassword(password);
			
			usuarioDAO.save(usuario);
			
			acceso = index;
			break;
			

		case "update":
			System.out.println("asdasds"+id_usuario);
			id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
			nombre = request.getParameter("nombre");
			email = request.getParameter("email");
			password = request.getParameter("password");
			System.out.println(id_usuario);
			usuario = new Usuario();
			usuario.setId_usuario(id_usuario);
			usuario.setNombre(nombre);
			usuario.setEmail(email);
			usuario.setPassword(password);
			
			usuarioDAO.update(usuario);
			
			acceso = index;
			break;

		default:
			break;
		}
		
		RequestDispatcher vista  = request.getRequestDispatcher(acceso);
		vista.forward(request,response);
	}

}