CREATE DATABASE experience;
USE experience;

CREATE TABLE empresa(
id int(20) auto_increment,
publicacion_id int(20) not null,
nombre varchar(30)  not null,
direccion varchar(30) not null,
ruc varchar(30) not null,
departamento varchar(30) not null,
CONSTRAINT pk_empresa PRIMARY KEY(id),
CONSTRAINT fk_empresa_publicacion FOREIGN KEY(publicacion_id) REFERENCES publicacion(id)
)

CREATE TABLE publicacion(
id int(20) auto_increment,
titulo varchar(200) not null,
descripcion varchar(200) not null,
publicacion varchar(200) not null, 
categoria varchar (200),
fecha datetime,
CONSTRAINT pk_publicacion PRIMARY KEY(id)
)


CREATE TABLE usuarios (
id int(20) auto_increment, 
nombre varchar(20)  null,
usuario varchar(20) not null,
correo varchar(50) not null,
pass varchar(200) not null,
rol varchar (20) not null,
CONSTRAINT pk_usuarios PRIMARY KEY(id),
CONSTRAINT uq_email UNIQUE(correo)
)
