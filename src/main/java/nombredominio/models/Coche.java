package nombredominio.models;

public class Coche{
	
	private int id_coche;
	private String nombre;
	private String marca;
	private String precio;
	
	public Coche(){
		
	}

	public Coche(int id_coche, String nombre, String marca, String precio) {
		this.id_coche = id_coche;
		this.nombre = nombre;
		this.marca = marca;
		this.precio = precio;
	}

	public int getId_coche() {
		return id_coche;
	}


	public void setId_coche(int id_coche) {
		this.id_coche = id_coche;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}
	
	
	
}