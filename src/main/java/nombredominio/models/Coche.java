package nombredominio.models;

public class Coche{
	
	private int id;
	private String nombre;
	private String marca;
	private int precio;
	
	public Coche(){
		
	}

	public Coche(int id, String nombre, String marca, int precio) {
		this.id = id;
		this.nombre = nombre;
		this.marca = marca;
		this.precio = precio;
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

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}
	
	
	
}