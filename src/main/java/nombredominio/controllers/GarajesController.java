package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import nombredominio.models.Coche;
import nombredominio.models.Garaje;
import nombredominio.modelsDAO.GarajeDAO;

import java.io.IOException;
import java.util.ArrayList;

public class GarajesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String acceso,action;
	
	Garaje garaje;
	GarajeDAO garajeDAO = new GarajeDAO();
	
	String capacidad, sitiosOcupados;
	
	String index = "garajes/index.jsp";
	String create = "garajes/create.jsp";
	String edit = "garajes/edit.jsp";
	
	ArrayList<Garaje> garajes;
	
	int id_garaje;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		acceso = "";
		action = request.getParameter("action");
		
		switch (action) {
		case "index":
			garajes = garajeDAO.all();
			request.setAttribute("gar", garajes);
			acceso = index;
			break;

		case "create":
			acceso = create;
			break;

		case "edit":
			id_garaje = Integer.parseInt(request.getParameter("id_garaje"));

			request.setAttribute("gar", garajeDAO.find(id_garaje));
			acceso = edit;

			break;

		case "delete":
			id_garaje = Integer.parseInt(request.getParameter("id_garaje"));
			garajeDAO.delete(id_garaje);
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
				capacidad = request.getParameter("marca");
				sitiosOcupados = request.getParameter("sitiosOcupados");
				
				garaje = new Garaje();
				garaje.setCapacidad(capacidad);
				garaje.setSitiosOcupados(sitiosOcupados);
				
				garajeDAO.save(garaje);
				
				acceso = index;
				break;
			
			case "update":
				id_garaje = Integer.parseInt(request.getParameter("id_garaje"));
				capacidad = request.getParameter("capacidad");
				sitiosOcupados = request.getParameter("sitiosOcupados");
				
				garaje = new Garaje();
				garaje.setId_garaje(id_garaje);
				garaje.setCapacidad(capacidad);
				garaje.setSitiosOcupados(sitiosOcupados);
				
				garajeDAO.update(garaje);
				acceso = index;
				break;
				
				default:
					break;
		
		}
		
		RequestDispatcher vista  = request.getRequestDispatcher(acceso);
		vista.forward(request,response);
	}

}
