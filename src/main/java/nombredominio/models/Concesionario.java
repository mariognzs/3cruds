package nombredominio.models;

public class Concesionario {

	private int id_concesionario;
	private String nombre;
	private String ciudad;
	private String pais;

	public Concesionario() {
		
	}
	
	public Concesionario(int id_concesionario, String nombre, String ciudad, String pais) {
		this.id_concesionario = id_concesionario;
		this.nombre = nombre;
		this.ciudad = ciudad;
		this.pais = pais;
	}

	public int getId_concesionario() {
		return id_concesionario;
	}

	public void setId_concesionario(int id_concesionario) {
		this.id_concesionario = id_concesionario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	
	
	
}
