package nombredominio.models;

public class Garaje{
	
	private int id;
	private String nombre;
	private int capacidad;
	private int sitiosOcupados;
	
	public Garaje() {
		
	}

	public Garaje(int id, String nombre, int capacidad, int sitiosOcupados) {
		this.id = id;
		this.nombre = nombre;
		this.capacidad = capacidad;
		this.sitiosOcupados = sitiosOcupados;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(int capacidad) {
		this.capacidad = capacidad;
	}

	public int getSitiosOcupados() {
		return sitiosOcupados;
	}

	public void setSitiosOcupados(int sitiosOcupados) {
		this.sitiosOcupados = sitiosOcupados;
	}
	
	
	
	
	
}