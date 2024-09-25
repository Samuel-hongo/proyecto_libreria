-- crear base de datos
CREATE DATABASE libreria;

USE libreria;

-- crear tabla libro
CREATE TABLE "libro" (
	"ID_libro"	INTEGER NOT NULL UNIQUE,
	"titulo"	TEXT NOT NULL,
	"autor"	TEXT NOT NULL,
	"genero"	TEXT NOT NULL,
	PRIMARY KEY("ID_libro" AUTOINCREMENT)
);

-- crear tabla detalle_venta
CREATE TABLE "detalle_venta" (
	"ID_detalle_venta"	INTEGER NOT NULL UNIQUE,
	"cantidad"	INTEGER NOT NULL,
	"precio_unidad"	INTEGER NOT NULL,
	PRIMARY KEY("ID_detalle_venta" AUTOINCREMENT)
);

-- crear tabla editorial
CREATE TABLE "editorial" (
	"ID_editorial"	INTEGER NOT NULL UNIQUE,
	"nombre"	TEXT NOT NULL,
	"telefono"	INTEGER NOT NULL,
	"ID_libro"	INTEGER,
	PRIMARY KEY("ID_editorial" AUTOINCREMENT),
	FOREIGN KEY("ID_libro") REFERENCES "libro"("ID_libro")
);

crear tabla usuario
CREATE TABLE "usuario" (
	"ID_usuario"	INTEGER NOT NULL UNIQUE,
	"nombre"	TEXT NOT NULL,
	"email"	TEXT NOT NULL UNIQUE,
	"telefono"	INTEGER UNIQUE,
	PRIMARY KEY("ID_usuario" AUTOINCREMENT)
);

-- crear tabla venta
CREATE TABLE "venta" (
	"ID_venta"	INTEGER NOT NULL UNIQUE,
	"fecha"	TEXT NOT NULL,
	"valor_libro"	INTEGER NOT NULL,
	PRIMARY KEY("ID_venta" AUTOINCREMENT)
);
