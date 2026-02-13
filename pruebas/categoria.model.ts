export class Categoria {
  private idCategoria: number;
  private categoria: string;
  private descripcion: string;

  constructor(
    idCategoria: number,
    categoria: string,
    descripcion: string
  ) {
    this.idCategoria = idCategoria;
    this.categoria = categoria;
    this.descripcion = descripcion;
  }

  getCategoria(): string {
    return this.categoria;
  }

  setCategoria(categoria: string): void {
    this.categoria = categoria;
  }
}
