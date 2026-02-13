export class Factura {
  private idFactura: number;
  private numFactura: string;
  private fecha: Date;
  private totalNeto: number;
  private iva: number;
  private total: number;
  private idCliente: number;

  constructor(
    idFactura: number,
    numFactura: string,
    fecha: Date,
    totalNeto: number,
    iva: number,
    total: number,
    idCliente: number
  ) {
    this.idFactura = idFactura;
    this.numFactura = numFactura;
    this.fecha = fecha;
    this.totalNeto = totalNeto;
    this.iva = iva;
    this.total = total;
    this.idCliente = idCliente;
  }

  calcularTotal(): void {
    this.total = this.totalNeto + this.iva;
  }
}
