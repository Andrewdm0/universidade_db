create database universidade_db;

use universidade_db;

create table ALUNO(
	id int auto_increment not null,
    nome varchar(50) not null,
    idade int not null,
    cpf varchar(11) not null,
    endereco varchar(60) not null,
    primary key(id)
);

create table PROFESSOR(
	id int auto_increment not null,
    nome varchar(50) not null,
    idade int not null,
    salario int not null,
    area enum('Tecnologia','Biologia','Filosofia'),
    primary key(id)
);

create table CURSO(
	id int auto_increment not null,
    nome varchar(50) not null,
    carga_horaria int not null,
    area enum('Tecnologia','Biologia','Filosofia'),
    primary key(id)
);

create table MATRICULA(
	id int auto_increment not null,
    aluno_id int,
    professor_id int,
    curso_id int,
    primary key(id),
    foreign key(aluno_id) references ALUNO(id),
    foreign key(professor_id) references PROFESSOR(id),
    foreign key(curso_id) references CURSO(id)
);
