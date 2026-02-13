export class FacturaDetalle {
  private idFacturaDetalle: number;
  private cantidad: number;
  private subtotal: number;
  private idFactura: number;
  private idLibro: number;

  constructor(
    idFacturaDetalle: number,
    cantidad: number,
    subtotal: number,
    idFactura: number,
    idLibro: number
  ) {
    this.idFacturaDetalle = idFacturaDetalle;
    this.cantidad = cantidad;
    this.subtotal = subtotal;
    this.idFactura = idFactura;
    this.idLibro = idLibro;
  }

  getIdFacturaDetalle(): number {
    return this.idFacturaDetalle;
  }

  setIdFacturaDetalle(id: number): void {
    this.idFacturaDetalle = id;
  }

  getCantidad(): number {
    return this.cantidad;
  }

  setCantidad(cantidad: number): void {
    this.cantidad = cantidad;
  }

  getSubtotal(): number {
    return this.subtotal;
  }

  setSubtotal(subtotal: number): void {
    this.subtotal = subtotal;
  }
}
