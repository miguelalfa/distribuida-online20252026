<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Librería</title>
</head>
<body>

  <h1>Sistema Librería</h1>
  <p>Abre la consola del navegador para ver los resultados.</p>

  <script>
    // =======================
    // ENTIDAD CATEGORIA
    // =======================
    class Categoria {
      constructor(idCategoria, categoria, descripcion) {
        this._idCategoria = idCategoria;
        this._categoria = categoria;
        this._descripcion = descripcion;
      }

      getCategoria() {
        return this._categoria;
      }
    }

    // =======================
    // ENTIDAD AUTOR
    // =======================
    class Autor {
      constructor(idAutor, nombre, apellido, pais, direccion, telefono, correo) {
        this._idAutor = idAutor;
        this._nombre = nombre;
        this._apellido = apellido;
        this._pais = pais;
        this._direccion = direccion;
        this._telefono = telefono;
        this._correo = correo;
      }

      getNombreCompleto() {
        return this._nombre + " " + this._apellido;
      }
    }

    // =======================
    // ENTIDAD LIBRO
    // =======================
    class Libro {
      constructor(
        idLibro, titulo, editorial, numPaginas, edicion, idioma,
        fechaPublicacion, descripcion, tipoPasta, isbn,
        numEjemplares, portada, presentacion, precio,
        idCategoria, idAutor
      ) {
        this._idLibro = idLibro;
        this._titulo = titulo;
        this._editorial = editorial;
        this._numPaginas = numPaginas;
        this._edicion = edicion;
        this._idioma = idioma;
        this._fechaPublicacion = fechaPublicacion;
        this._descripcion = descripcion;
        this._tipoPasta = tipoPasta;
        this._isbn = isbn;
        this._numEjemplares = numEjemplares;
        this._portada = portada;
        this._presentacion = presentacion;
        this._precio = precio;
        this._idCategoria = idCategoria;
        this._idAutor = idAutor;
      }

      getTitulo() {
        return this._titulo;
      }

      getPrecio() {
        return this._precio;
      }
    }

    // =======================
    // ENTIDAD FACTURA
    // =======================
    class Factura {
      constructor(idFactura, numFactura, fecha, totalNeto, iva, idCliente) {
        this._idFactura = idFactura;
        this._numFactura = numFactura;
        this._fecha = fecha;
        this._totalNeto = totalNeto;
        this._iva = iva;
        this._total = 0;
        this._idCliente = idCliente;
      }

      calcularTotal() {
        this._total = this._totalNeto + this._iva;
      }

      getTotal() {
        return this._total;
      }
    }

    // =======================
    // ENTIDAD FACTURA DETALLE
    // =======================
    class FacturaDetalle {
      constructor(idFacturaDetalle, cantidad, subtotal, idFactura, idLibro) {
        this._idFacturaDetalle = idFacturaDetalle;
        this._cantidad = cantidad;
        this._subtotal = subtotal;
        this._idFactura = idFactura;
        this._idLibro = idLibro;
      }
    }

    // =======================
    // DATOS REALES (CONSOLA)
    // =======================

    // Categorías
    const categoriaEpica = new Categoria(1, "Literatura épica", "Obras heroicas clásicas");
    const categoriaClasica = new Categoria(2, "Literatura clásica", "Clásicos universales");

    // Autores
    const autorCid = new Autor(1, "Anónimo", "", "España", "-", "-", "-");
    const autorDecameron = new Autor(2, "Giovanni", "Boccaccio", "Italia", "Florencia", "-", "-");

    // Libros
    const libroCid = new Libro(
      1, "El Cid", "Clásicos Universales", 350, "Clásica",
      "Español", "1200-01-01", "Poema épico medieval", "Blanda",
      "ISBN-CID", 5, "cid.jpg", "Físico", 20.00, 1, 1
    );

    const libroDecameron = new Libro(
      2, "El Decameron", "Clásicos Europeos", 500, "Clásica",
      "Español", "1353-01-01", "Colección de cuentos medievales", "Dura",
      "ISBN-DEC", 3, "decameron.jpg", "Físico", 30.00, 2, 2
    );

    // Cliente
    const clienteNombre = "Miguel Jaramillo";

    // Factura
    const totalNeto = libroCid.getPrecio() + libroDecameron.getPrecio();
    const iva = totalNeto * 0.12;

    const factura = new Factura(1, "F-001", new Date(), totalNeto, iva, 1);
    factura.calcularTotal();

    // Factura Detalle
    const detalle1 = new FacturaDetalle(1, 1, libroCid.getPrecio(), 1, 1);
    const detalle2 = new FacturaDetalle(2, 1, libroDecameron.getPrecio(), 1, 2);

    // =======================
    // MOSTRAR EN CONSOLA
    // =======================
    console.log("Cliente:", clienteNombre);

    console.log("Libro 1:", libroCid.getTitulo());
    console.log("Autor:", autorCid.getNombreCompleto());
    console.log("Categoría:", categoriaEpica.getCategoria());

    console.log("Libro 2:", libroDecameron.getTitulo());
    console.log("Autor:", autorDecameron.getNombreCompleto());
    console.log("Categoría:", categoriaClasica.getCategoria());

    console.log("Total Factura:", factura.getTotal());
  </script>

</body>
</html>
