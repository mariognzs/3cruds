package nombredominio.modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import nombredominio.config.Conexion;
import nombredominio.models.Coche;
import nombredominio.models.Usuario;

public class CocheDAO {

	private Conexion conexion = new Conexion();

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	Statement statement;

	private Coche coche = new Coche();
	private ArrayList<Coche> coches = new ArrayList<Coche>();

	/*
	 * public boolean crear() { return true; }
	 */

	public Coche save(Coche coche) {
		String sql = "INSERT INTO coches (nombre, marca,precio) VALUES ('" + coche.getNombre() + "', '"
				+ coche.getMarca() + "', '" + coche.getPrecio() + "')";

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return coche;
	}

	public boolean delete(int id_coche) {
		String sql = "DELETE FROM coches WHERE id_coche = " + id_coche;

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

	public Coche update(Coche coche) {
		String sql = "UPDATE coches SET nombre = '" + coche.getNombre() + "', marca = '" + coche.getMarca()
				+ "', precio = '" + coche.getPrecio() + "' WHERE id_coche=" + coche.getId_coche();
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return coche;

	}

	public Coche find(int id_coche) {
		String sql = "Select * from coches where id = " + id_coche;

		try {

			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				coche.setId_coche(rs.getInt("id_coche"));
				coche.setNombre(rs.getString("nombre"));
				coche.setMarca(rs.getString("marca"));
				coche.setPrecio(rs.getInt("precio"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Coche> getCoche() {
		String sql = "Select * from coches";

		try {

			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				coche = new Coche();

				coche.setId_coche(rs.getInt("id_coche"));
				coche.setNombre(rs.getString("nombre"));
				coche.setMarca(rs.getString("marca"));
				coche.setPrecio(rs.getInt("precio"));

				coches.add(coche);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return coches;
	}

	public ArrayList<Coche> all(){
		String sql = "SELECT * FROM coches";
		coches = new ArrayList<Coche>();
		
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				coche = new Coche();
				
				coche.setId_coche(rs.getInt("id_coche"));
				coche.setMarca(rs.getString("nombre"));
				coche.setNombre(rs.getString("email"));
				coche.setPrecio(rs.getInt("precio"));
				
				coches.add(coche);
			}
			
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	return coches;
	
	}
	
}