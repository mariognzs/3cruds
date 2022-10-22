package nombredominio.modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import nombredominio.config.Conexion;
import nombredominio.models.Coche;
import nombredominio.models.Concesionario;

public class ConcesionarioDAO {

	private Conexion conexion = new Conexion();

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	Statement statement;
	
	Concesionario concesionario = new Concesionario();
	
	ArrayList<Concesionario> concesionarios = new ArrayList<Concesionario>();
	
	public Concesionario save(Concesionario concesionario) {
		String sql = "INSERT INTO concesionarios (nombre,ciudad,pais) VALUES ('" + concesionario.getNombre() + "', '"
				+ concesionario.getCiudad() + "', '" + concesionario.getPais() + "')";

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return concesionario;
	}
	
	public boolean delete(int id_concesionario) {
		String sql = "DELETE FROM concesionarios WHERE id_concesionario = " + id_concesionario;

		try {
			conn = conexion.getConnection();
			statement = conn.createStatement();
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return true;
	}
	
	public Concesionario update(Concesionario concesionario) {
		String sql = "UPDATE concesionarios SET nombre = '" + concesionario.getNombre() + "', ciudad = '" + concesionario.getCiudad()
				+ "', pais = '" + concesionario.getPais() + "' WHERE id_concesionario=" + concesionario.getId_concesionario();
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
		return concesionario;

	}
	
	
	public Concesionario find(int id_concesionario) {
		String sql = "Select * from concesionarios where id_concesionario = " + id_concesionario;

		try {

			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				concesionario.setId_concesionario(rs.getInt("id_concesionario"));
				concesionario.setNombre(rs.getString("nombre"));
				concesionario.setCiudad(rs.getString("ciudad"));
				concesionario.setPais(rs.getString("pais"));
				return concesionario;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<Concesionario> getConcesionario() {
		String sql = "Select * from concesionarios";

		try {

			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				concesionario = new Concesionario();

				concesionario.setId_concesionario(rs.getInt("id_concesionario"));
				concesionario.setNombre(rs.getString("nombre"));
				concesionario.setCiudad(rs.getString("ciudad"));
				concesionario.setPais(rs.getString("pais"));

				concesionarios.add(concesionario);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return concesionarios;
	}
	
	public ArrayList<Concesionario> all(){
		String sql = "SELECT * FROM concesionarios";
		concesionarios = new ArrayList<Concesionario>();	
		
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				concesionario = new Concesionario();

				concesionario.setId_concesionario(rs.getInt("id_concesionario"));
				concesionario.setNombre(rs.getString("nombre"));
				concesionario.setCiudad(rs.getString("ciudad"));
				concesionario.setPais(rs.getString("pais"));

				concesionarios.add(concesionario);
			}
			
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	return concesionarios;
	
	}
	
	
}
