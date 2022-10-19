package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;

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
	String home = "home.jsp";
	String index = "index.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		action = request.getParameter("action");

		switch (action) {
		case "login":
			acceso = login;

			break;

		case "home":
			acceso = home;
			break;

		case "logout":
			request.getSession().removeAttribute("usuario");
			acceso = index;
			break;

		default:
			break;
		}

		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		action = request.getParameter("action");

		switch (action) {

		case "login":

			email = request.getParameter("email");
			password = request.getParameter("password");

			if (usuarioDAO.validate(email,  getMD5(password))) {
				request.getSession().setAttribute("usuario", usuarioDAO.getUsuario(email,  getMD5(password)));
				ArrayList<Usuario> usuarios = usuarioDAO.all();
				request.getSession().setAttribute("usuarios", usuarios);
				acceso = home;

			} else {
				acceso = login;
			}
			break;
		default:
			break;

		}

		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);

	}

	public String getMD5(String input) {

		try {

			MessageDigest md = MessageDigest.getInstance("MD5");

			byte[] encBytes = md.digest(input.getBytes());

			BigInteger numero = new BigInteger(1, encBytes);

			String encString = numero.toString(16);

			while (encString.length() < 32) {

				encString = "0" + encString;

			}

			return encString;

		} catch (Exception e) {

			throw new RuntimeException(e);

		}

	}

}
