package nombredominio.models;

public class Usuario {

	private int id_usuario;
	private String nombre;
	private String email;
	private String password;


	public Usuario(int id_usuario, String nombre, String email, String password) {
		this.id_usuario = id_usuario;
		this.nombre = nombre;
		this.email = email;
		this.password = password;
	}

	public Usuario() {

	}
	


	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}