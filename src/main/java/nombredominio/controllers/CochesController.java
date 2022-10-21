package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import nombredominio.models.Coche;
import nombredominio.modelsDAO.CocheDAO;

import java.io.IOException;
import java.util.ArrayList;

public class CochesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String acceso, action;

	Coche coche;
	CocheDAO cocheDAO = new CocheDAO();

	String nombre, marca, precio;

	String index = "coches/index.jsp";
	String create = "coches/create.jsp";
	String edit = "coches/edit.jsp";

	ArrayList<Coche> coches;

	int id_coche;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		acceso = "";
		action = request.getParameter("action");

		switch (action) {
		case "index":
			coches = cocheDAO.all();
			request.setAttribute("coc", coches);
			acceso = index;
			break;

		case "create":
			acceso = create;
			break;

		case "edit":
			id_coche = Integer.parseInt(request.getParameter("id_coche"));

			request.setAttribute("coc", cocheDAO.find(id_coche));
			acceso = edit;

			break;

		case "delete":
			id_coche = Integer.parseInt(request.getParameter("id_coche"));
			cocheDAO.delete(id_coche);
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

		acceso = "";
		action = request.getParameter("action");
		
		switch(action) {
			case "create":
				nombre = request.getParameter("nombre");
				marca = request.getParameter("marca");
				precio = request.getParameter("precio");
				
				coche = new Coche();
				coche.setNombre(nombre);
				coche.setMarca(marca);
				coche.setPrecio(precio);
				
				cocheDAO.save(coche);
				
				acceso = index;
				break;
			
			case "update":
				id_coche = Integer.parseInt(request.getParameter("id_coche"));
				nombre = request.getParameter("nombre");
				marca = request.getParameter("marca");
				precio = request.getParameter("precio");
				
				coche = new Coche();
				coche.setId_coche(id_coche);
				coche.setNombre(nombre);
				coche.setMarca(marca);
				coche.setPrecio(precio);
				
				cocheDAO.update(coche);
				acceso = index;
				break;
				
				default:
					break;
		
		}
		
		RequestDispatcher vista  = request.getRequestDispatcher(acceso);
		vista.forward(request,response);
	}

}
