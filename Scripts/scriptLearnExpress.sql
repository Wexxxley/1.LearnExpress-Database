CREATE SCHEMA LearnExpress;
SET search_path TO LearnExpress;

CREATE TABLE usuario (
    id serial PRIMARY KEY,
    nome varchar(50) not null,
    email varchar(50) UNIQUE,
    senha varchar(20) UNIQUE
);

CREATE TABLE curso (
	id serial PRIMARY KEY,
	titulo varchar (50) not null,
	professor varchar (50) not null,
	descricao text not null,
	horas_totais int not null,
	preco float not null
);

CREATE TABLE Porcent_Conclu_Curso
(
	Porcentagem int,
	idCurso int,
	idUsuario int,
	
	FOREIGN KEY(idCurso) references curso(id),
	FOREIGN KEY(idUsuario) references usuario(id),
	PRIMARY KEY(idCurso, idUsuario)
);

CREATE TABLE pedido (
	id serial PRIMARY KEY,
	idCurso int,
	idUsuario int,
	data date not null,
	
	FOREIGN KEY(idCurso) references curso(id),
	FOREIGN KEY(idUsuario) references usuario(id)
);

CREATE TABLE certificado (
	id serial PRIMARY KEY,
	data_emissao date not null,
	idUsuario int,
	idCurso int,
	
	FOREIGN KEY(idUsuario) references usuario(id),
	FOREIGN KEY(idCurso) references curso(id)
);

CREATE TABLE categoria(
	id serial PRIMARY KEY,
	descricao text
);

CREATE TABLE idCurso_Categoria(
	idCategoria int,
	idCurso int,
	
	FOREIGN KEY(idCategoria) references categoria(id),
	FOREIGN KEY(idCurso) references curso(id),
	PRIMARY KEY(idCategoria, idCurso)
);

CREATE TABLE aula(
	id serial PRIMARY KEY,
	titulo varchar(50) not null,
	descricao text not null,
	duração int not null,
	link varchar(100) unique not null,
	idCurso int,
	
	FOREIGN KEY(idCurso) references curso(id)
);

CREATE TABLE comentario(
	id serial PRIMARY KEY,
	conteudo text not null,
	idAula int,
	idUsuario int,
	
	FOREIGN KEY(idAula) references aula(id),
	FOREIGN KEY(idUsuario) references usuario(id)
);

CREATE TABLE Material_complementar(
	id serial PRIMARY KEY,
	link varchar(100) unique not null,
	Descricao text not null,
	idAula int,
	Tipo VARCHAR(50) not null, -- Pode ser 'Exercicio' ou 'Avaliacao'
	
	FOREIGN KEY(idAula) references aula(id)
);

CREATE TABLE Nota_Material_Complementar(
	Nota int not null,
	idMaterial int,
	idUsuario int,
	
	FOREIGN KEY(idMaterial) references Material_Complementar(id),
	FOREIGN KEY(idUsuario) references usuario(id),
	PRIMARY KEY(idMaterial, idUsuario)
);