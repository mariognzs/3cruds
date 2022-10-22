package nombredominio.models;

public class Garaje{
	
	private int id_garaje;
	private String capacidad;
	private String sitiosOcupados;
	private String usuario_id;
	private String coche_id;
	
	public Garaje() {
		
	}

	public Garaje(int id_garaje, String capacidad, String sitiosOcupados, String usuario_id, String coche_id) {
		this.id_garaje = id_garaje;
		this.capacidad = capacidad;
		this.sitiosOcupados = sitiosOcupados;
		this.usuario_id = usuario_id;
		this.coche_id = coche_id;
	}

	public int getId_garaje() {
		return id_garaje;
	}

	public void setId_garaje(int id_garaje) {
		this.id_garaje = id_garaje;
	}

	public String getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(String capacidad) {
		this.capacidad = capacidad;
	}

	public String getSitiosOcupados() {
		return sitiosOcupados;
	}

	public void setSitiosOcupados(String sitiosOcupados) {
		this.sitiosOcupados = sitiosOcupados;
	}

	public String getUsuario_id() {
		return usuario_id;
	}

	public void setUsuario_id(String usuario_id) {
		this.usuario_id = usuario_id;
	}

	public String getCoche_id() {
		return coche_id;
	}

	public void setCoche_id(String coche_id) {
		this.coche_id = coche_id;
	}

	
	
}