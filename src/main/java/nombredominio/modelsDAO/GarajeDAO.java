package nombredominio.modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import nombredominio.config.Conexion;
import nombredominio.models.Garaje;

public class GarajeDAO {

	private Conexion conexion = new Conexion();

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	Statement statement;

	Garaje garaje = new Garaje();

	ArrayList<Garaje> garajes = new ArrayList<Garaje>();

	public Garaje save(Garaje garaje) {
		String sql = "INSERT INTO garajes (capacidad,sitiosOcupados,usuario_id,coche_id) VALUES ('"
				+ garaje.getCapacidad() + "', '" + garaje.getSitiosOcupados() + "', '" + garaje.getUsuario_id() + "','"
				+ garaje.getCoche_id() + "')";

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return garaje;
	}

	public boolean delete(int id_garaje) {
		String sql = "DELETE FROM garajes WHERE id_garaje = " + id_garaje;

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

	public Garaje update(Garaje garaje) {
		String sql = "UPDATE garajes SET capacidad = '" + garaje.getCapacidad() + "', sitiosOcupados = '"
		+ garaje.getSitiosOcupados() + "', usuario_id = '" + garaje.getUsuario_id() + "', coche_id = '" +
				garaje.getCoche_id() + "' WHERE id_garaje=" + garaje.getId_garaje();
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return garaje;

	}

	public Garaje find(int id_garaje) {
		String sql = "Select * from garajes where id_garaje = " + id_garaje;

		try {

			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				garaje.setId_garaje(rs.getInt("id_garaje"));
				garaje.setCapacidad(rs.getString("capacidad"));
				garaje.setSitiosOcupados(rs.getString("sitiosOcupados"));
				garaje.setUsuario_id(rs.getString("usuario_id"));
				garaje.setCoche_id(rs.getString("coche_id"));

				return garaje;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Garaje> getGaraje() {
		String sql = "Select * from garajes";

		try {

			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				garaje = new Garaje();

				garaje.setId_garaje(rs.getInt("id_garaje"));
				garaje.setCapacidad(rs.getString("capacidad"));
				garaje.setSitiosOcupados(rs.getString("precio"));
				garaje.setUsuario_id(rs.getString("usuario_id"));
				garaje.setCoche_id(rs.getString("coche_id"));

				garajes.add(garaje);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return garajes;
	}

	public ArrayList<Garaje> all() {
		String sql = "SELECT * FROM garajes";
		garajes = new ArrayList<Garaje>();

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				garaje = new Garaje();

				garaje.setId_garaje(rs.getInt("id_garaje"));
				garaje.setCapacidad(rs.getString("capacidad"));
				garaje.setSitiosOcupados(rs.getString("sitiosOcupados"));
				garaje.setUsuario_id(rs.getString("usuario_id"));
				garaje.setCoche_id(rs.getString("coche_id"));


				garajes.add(garaje);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return garajes;

	}

}