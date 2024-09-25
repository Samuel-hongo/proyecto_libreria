CREATE TABLE "sqlite_sequence" (
	"name"	,
	"seq"	
);
CREATE TABLE "libro" (
	"ID_libro"	INTEGER NOT NULL UNIQUE,
	"titulo"	TEXT NOT NULL,
	"autor"	TEXT NOT NULL,
	"genero"	TEXT NOT NULL,
	PRIMARY KEY("ID_libro" AUTOINCREMENT)
);
CREATE TABLE "detalle_venta" (
	"ID_detalle_venta"	INTEGER NOT NULL UNIQUE,
	"cantidad"	INTEGER NOT NULL,
	"precio_unidad"	INTEGER NOT NULL,
	PRIMARY KEY("ID_detalle_venta" AUTOINCREMENT)
);
CREATE TABLE "editorial" (
	"ID_editorial"	INTEGER NOT NULL UNIQUE,
	"nombre"	TEXT NOT NULL,
	"telefono"	INTEGER NOT NULL,
	"ID_libro"	INTEGER,
	PRIMARY KEY("ID_editorial" AUTOINCREMENT),
	FOREIGN KEY("ID_libro") REFERENCES "libro"("ID_libro")
);
