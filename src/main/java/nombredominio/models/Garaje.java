package nombredominio.models;

public class Garaje{
	
	private int id_garaje;
	private String capacidad;
	private String sitiosOcupados;
	
	public Garaje() {
		
	}

	public Garaje(int id_garaje, String capacidad, String sitiosOcupados) {
		this.id_garaje = id_garaje;
		this.capacidad = capacidad;
		this.sitiosOcupados = sitiosOcupados;
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
	
}