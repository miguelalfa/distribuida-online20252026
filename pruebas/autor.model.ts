export class Autor {
  private idAutor: number;
  private nombre: string;
  private apellido: string;
  private pais: string;
  private direccion: string;
  private telefono: string;
  private correo: string;

  constructor(
    idAutor: number,
    nombre: string,
    apellido: string,
    pais: string,
    direccion: string,
    telefono: string,
    correo: string
  ) {
    this.idAutor = idAutor;
    this.nombre = nombre;
    this.apellido = apellido;
    this.pais = pais;
    this.direccion = direccion;
    this.telefono = telefono;
    this.correo = correo;
  }

  getNombreCompleto(): string {
    return `${this.nombre} ${this.apellido}`;
  }
}
