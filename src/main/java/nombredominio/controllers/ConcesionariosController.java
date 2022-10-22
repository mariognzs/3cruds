package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import nombredominio.models.Concesionario;
import nombredominio.modelsDAO.ConcesionarioDAO;

import java.io.IOException;
import java.util.ArrayList;

public class ConcesionariosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String acceso, action;

	Concesionario concesionario;
	ConcesionarioDAO concesionarioDAO = new ConcesionarioDAO();

	String nombre, ciudad, pais;

	String index = "concesionarios/index.jsp";
	String create = "concesionarios/create.jsp";
	String edit = "concesionarios/edit.jsp";

	ArrayList<Concesionario> concesionarios;

	int id_concesionario;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		acceso = "";
		action = request.getParameter("action");
		
		switch (action) {
		case "index":
			concesionarios = concesionarioDAO.all();
			request.setAttribute("con", concesionarios);
			acceso = index;
			break;

		case "create":
			acceso = create;
			break;

		case "edit":
			id_concesionario = Integer.parseInt(request.getParameter("id_concesionario"));

			request.setAttribute("con", concesionarioDAO.find(id_concesionario));
			acceso = edit;

			break;

		case "delete":
			id_concesionario = Integer.parseInt(request.getParameter("id_concesionario"));
			concesionarioDAO.delete(id_concesionario);
			acceso = index;
			break;

		default:
			break;
		}
		
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		acceso = "";
		action = request.getParameter("action");
		
		switch(action) {
			case "create":
				nombre = request.getParameter("nombre");
				ciudad = request.getParameter("ciudad");
				pais = request.getParameter("pais");
				
				concesionario = new Concesionario();
				concesionario.setNombre(nombre);
				concesionario.setCiudad(ciudad);
				concesionario.setPais(pais);
				
				concesionarioDAO.save(concesionario);
				
				acceso = index;
				break;
			
			case "update":
				id_concesionario = Integer.parseInt(request.getParameter("id_concesionario"));
				nombre = request.getParameter("nombre");
				ciudad = request.getParameter("ciudad");
				pais = request.getParameter("pais");
				
				concesionario = new Concesionario();
				concesionario.setId_concesionario(id_concesionario);
				concesionario.setNombre(nombre);
				concesionario.setCiudad(ciudad);
				concesionario.setPais(pais);
				
				concesionarioDAO.update(concesionario);
				acceso = index;
				break;
				
				default:
					break;
		
		}
		
		RequestDispatcher vista  = request.getRequestDispatcher(acceso);
		vista.forward(request,response);
	}


}
