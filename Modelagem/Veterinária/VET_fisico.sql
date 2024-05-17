-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE Veterinaria;
USE Veterinaria;

CREATE TABLE Dono (
id_dono int PRIMARY KEY AUTO_IMPLEMENT,
telefone varchar(255),
n�mero varchar(255),
bairro varchar(255),
rua varchar(255),
cpf varchar(255),
cep varchar(255),
complemento varchar(255),
RG varchar(255),
nome varchar(255)
);

CREATE TABLE Animal (
esp�cie varchar(50),
nome varchar(50),
id_animal int PRIMARY KEY AUTO_IMPLEMENT,
vacina��o varchar(255),
ra�a varchar(50),
idade int,
porte varchar(255),
id_dono int,
FOREIGN KEY(id_dono) REFERENCES Dono (id_dono)
);

CREATE TABLE Veterin�rio (
id_veterinario int PRIMARY KEY AUTO_IMPLEMENT,
nome varchar(255),
RG varchar(255),
rua varchar(255),
bairro varchar(255),
n�mero varchar(255),
cep varchar(255),
cpf varchar(255),
complemento varchar(255),
telefone varchar(255)
);

CREATE TABLE Consulta (
id_consulta int PRIMARY KEY AUTO_IMPLEMENT,
data varchar(255),
hor�rio varchar(255),
pre�o decimal,
Resultado varchar(255),
id_animal int,
id_veterinario int,
FOREIGN KEY(id_animal) REFERENCES Animal (id_animal),
FOREIGN KEY(id_veterinario) REFERENCES Veterin�rio (id_veterinario)
);

