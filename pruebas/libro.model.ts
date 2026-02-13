export class Libro {
  private idLibro: number;
  private titulo: string;
  private editorial: string;
  private numPaginas: number;
  private edicion: string;
  private idioma: string;
  private fechaPublicacion: Date;
  private descripcion: string;
  private tipoPasta: string;
  private isbn: string;
  private numEjemplares: number;
  private portada: string;
  private presentacion: string;
  private precio: number;
  private idCategoria: number;
  private idAutor: number;

  constructor(
    idLibro: number,
    titulo: string,
    editorial: string,
    numPaginas: number,
    edicion: string,
    idioma: string,
    fechaPublicacion: Date,
    descripcion: string,
    tipoPasta: string,
    isbn: string,
    numEjemplares: number,
    portada: string,
    presentacion: string,
    precio: number,
    idCategoria: number,
    idAutor: number
  ) {
    this.idLibro = idLibro;
    this.titulo = titulo;
    this.editorial = editorial;
    this.numPaginas = numPaginas;
    this.edicion = edicion;
    this.idioma = idioma;
    this.fechaPublicacion = fechaPublicacion;
    this.descripcion = descripcion;
    this.tipoPasta = tipoPasta;
    this.isbn = isbn;
    this.numEjemplares = numEjemplares;
    this.portada = portada;
    this.presentacion = presentacion;
    this.precio = precio;
    this.idCategoria = idCategoria;
    this.idAutor = idAutor;
  }

  getIdLibro(): number {
    return this.idLibro;
  }

  setIdLibro(idLibro: number): void {
    this.idLibro = idLibro;
  }

  getTitulo(): string {
    return this.titulo;
  }

  setTitulo(titulo: string): void {
    this.titulo = titulo;
  }

  getPrecio(): number {
    return this.precio;
  }

  setPrecio(precio: number): void {
    this.precio = precio;
  }
}
