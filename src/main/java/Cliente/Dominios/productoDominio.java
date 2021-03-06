package Cliente.Dominios;

import static javax.persistence.GenerationType.AUTO;

import java.io.Serializable;
import javax.persistence.*;


/**
 * Entity implementation class for Entity: productoDominio
 *
 */
@Entity
@Table(name="PRODUCTOS")

public class productoDominio implements Serializable {

	
	private static final long serialVersionUID = 1L;
	

	enum TipoCategoria {
		MOBILIARIO (1, "Mobiliario"),
		VEHICULOS (2, "Vehiculos"),
		MODA_Y_BELLEZA (3, "Moda y belleza" ),
		ELECTRONICA (4, "Electronica"),
		OCIO_DEPORTES (5,"ocio y deportes"),
		OTROS (6," otras categorias")
		;
		
		private final int value;
		private final String descripcion;
		
		TipoCategoria(int value, String descripcion){
			this.value = value;
			this.descripcion = descripcion;
		}

		public String getDescripcion() {
			return this.descripcion;
		}
		
		public static TipoCategoria getCategoria(int categoriaIndex) {
		   for (TipoCategoria c : TipoCategoria.values()) {
		       if (c.value == categoriaIndex) return c;
		   }
		   throw new IllegalArgumentException("Categoría no encontrada.");
		}

		public static TipoCategoria getCategoria(String categoriaNombre) {
		   for (TipoCategoria c : TipoCategoria.values()) {
		       if (c.descripcion.equals(categoriaNombre)) return c;
		   }
		   throw new IllegalArgumentException("Categoría no encontrada.");
		}
	}
	
	@Id
	@GeneratedValue(strategy = AUTO)
	private long id;
	@Column(nullable = false, length = 30)
	private String titulo;
	@Column(nullable = false, length = 30)
	private String categoria;
	@Column(nullable = false, length = 300)
	private String descripcion;
	@Column(nullable = false)
	private String precio;
	@Column(nullable = false, length = 30)
	private String estado;
	/*@Lob
	@Column (name= "imagen")
	private byte[] imagen;*/

	@ManyToOne(optional=false)
	@JoinColumn(name="clienteID", nullable=false)
	private clienteDominio duenoProducto;
	
	
	public productoDominio() {
		super();
	}

	public productoDominio(String titulo, String categoria, String descripcion, String precio, String estado, clienteDominio duenoProducto) {
		super();
		this.titulo = titulo;
		this.categoria = categoria;
		this.descripcion = descripcion;
		this.precio = precio;
		this.estado = estado;
		this.duenoProducto = duenoProducto;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public clienteDominio getDuenoProducto() {
		return duenoProducto;
	}

	public void setDuenoProducto(clienteDominio duenoProducto) {
		this.duenoProducto = duenoProducto;
	}


	

	
		
}
