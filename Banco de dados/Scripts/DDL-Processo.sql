CREATE DATABASE Processo2rp;
GO

USE Processo2rp;
GO

CREATE TABLE TipoUsuario(
	IdTipo INT PRIMARY KEY IDENTITY(1,1),
	TipoUser VARCHAR(40),
);
GO

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY(1,1),
	IdTipo INT FOREIGN KEY REFERENCES TipoUsuario(IdTipo),
	Nome VARCHAR(50),
	Senha VARCHAR(100),
	Email VARCHAR(30),
	Status bit,
);
GO