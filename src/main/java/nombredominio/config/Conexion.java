package nombredominio.config;

import java.sql.*;


public class Conexion {

	private Connection conection;
	
	public Conexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conection = DriverManager.getConnection("jdbc:mysql://localhost:3306/garajes_empresa", "admin", "admin");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		return conection;
	}
	
	public Connection desconectar() {
		conection = null;
		return conection;
	}
}