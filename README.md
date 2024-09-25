# proyecto_libreria
repositorio que contiene la lógica del modelo relacional y la base de datos del proyecto
Modelo Relacional para una Biblioteca
Integrantes/Autor
Daniel Felipe Agudelo Molina - Docente 🤓

Libro(Book)
book_id(PK) Primary Key / LLave Primaria (Número)
book_title: Título del libro (Texto)
book_author_id (FK): Foreign Key /Llave foranea Identificador del autor (Alfanumerico)
book_publisher_id (FK): Identificador del editor (Alfanumerico)
book_year_published: Año de publicación (Texto o número según necesidad)
book_genre: Género del libro.(Texto)
Autor(Author)
author_id (PK): Identificador único del autor (Número o alfanumerico)
author_name: Nombre del autor (Texto)
author_birthdate: Fecha de nacimiento del autor (Fecha o Texto)
Editor(Publisher)
publisher_id (PK): Identificador único del editor (Número o alfanumerico)
publisher_name: Nombre del editor (Texto)
publisher_address: Dirección del editor (Texto o alfanumerico )
Miembro(Member)
member_id (PK): Identificador único del miembro o usuario (Número o alfanumerico)
member_name: Nombre del miembro (Texto)
member_address: Dirección del miembro (Texto o alfanumerico )
member_phone: Telefono del miembro (Texto o alfanumerico)
member_email: Dirección de correo del miembro (Texto o alfanumerico )
Préstamo(Loan)
loan_id (PK): Identificador único del préstamo (Número o alfanumerico)
loan_book_id (FK): Número desde la entidad libro
loan_member_id (FK): Identificador único del miembro o usuario (Número o alfanumerico)
loan_date:(Fecha o Texto)
loan_return_date:(Fecha o Texto)
Relaciones 🧷Un libro puede tener un solo autor, pero un autor puede escribir muchos libros (Relación uno a muchos entre Autor y Libro).

🧷Un libro puede ser publicado por un solo editor, pero un editor puede publicar muchos libros (Relación uno a muchos entre Editor y Libro).

🧷Un miembro puede pedir prestados muchos libros, y un libro puede ser prestado a muchos miembros a lo largo del tiempo (Relación muchos a muchos entre Libro y Miembro, implementada mediante la entidad Préstamo).
