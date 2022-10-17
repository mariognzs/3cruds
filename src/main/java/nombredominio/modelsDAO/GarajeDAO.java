package nombredominio.modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import nombredominio.config.Conexion;
import nombredominio.models.Coche;
import nombredominio.models.Garaje;

public class GarajeDAO{
	
	private Conexion conexion = new Conexion();
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	private Garaje garaje = new Garaje();
	
	private ArrayList<Garaje> garajes = new ArrayList<Garaje>();
	
	public boolean crear() {
		return true;
	}
	
	public boolean eliminar() {
		return true;
	}
	
	public boolean actualizar() {
		return true;
	}
	
	public Garaje buscarGaraje(int id) {
		String sql = "Select * from garajes where id = " + id;
	
		
		try {
			
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				garaje.setId(rs.getInt("id"));
				garaje.setNombre(rs.getString("nombre"));
				garaje.setCapacidad(rs.getInt("capacidad"));
				garaje.setSitiosOcupados(rs.getInt("sitiosOcupados"));
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	
	
		
	
	}
	
	public ArrayList<Garaje> getGaraje(){
		return null;
	}
	
}