# proyecto_libreria
repositorio que contiene la lógica del modelo relacional y la base de datos del proyecto

## Integrantes
Daniel Benitez Monsalve - Sofia Zuleta Echeberri

## libro
      ID_libro (PK) Primary Key / LLave Primaria (Número)
      titulo: Título del libro (Texto)
      autor: Nombre del autor (Texto)
      genero: Género del libro (Texto)
## detalle_venta
      ID_detalle_venta (PK): Identificador único de cada venta (Número)
      cantidad: cantidad de ventas (Número)
      precio_unidad: precio por unidad de libro (Número)
## editorial
      ID_editorial (PK): Identificador único de la editorial (Número)
      nombre: Nombre de la editorial (Texto)
      telefono: Telefono de la editorial (Número)
      ID_libro (FK): Identificador único de cada libro (Número)
## usuario
      ID_usuario (PK): Identificador único del usuario (Número o alfanumerico)
      nombre: Nombre del usuario (Texto)
      email: Correo electronico del usuario (Texto o alfanumerico )
      telefono: Telefono del usuario (Número)
## venta
      ID_venta (PK): Identificador único de la venta (Número)
      fecha:(Fecha o Texto)
      valor_libro: valor total de el o los libros vendidos (Número)

# RELACIONES 
Un usuario puede comprar un libro, pero un libro lo puede tener muchos usuarios (Relación uno a muchos entre usuario y Libro).

Un autor puede hacer un libro, pero muchos libros pueden ser hechos por el mismo autor (Relación uno a muchos entre libro y autor).
