package nombredominio.controllers;

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
       
	String acceso,action;
	
	Coche coche;
	CocheDAO cocheDAO = new CocheDAO();
	
	String nombre,email,password;
	
	String index = "coches/index.jsp";
	String create = "coches/create.jsp";
	String edit = "coches/edit.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
