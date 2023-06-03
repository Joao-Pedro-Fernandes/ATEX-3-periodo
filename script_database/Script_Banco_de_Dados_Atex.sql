CREATE SCHEMA trabalho;

use trabalho;

create table responsavel (
	id_responsavel int auto_increment,
    nome varchar(50) not null,
    email varchar(50),
	telefone varchar(15),
    primary key(id_responsavel)
);


create table crianca (
	id_crianca int auto_increment,
    nome varchar(50) not null,
    idade int not null,
    possui_celular_proprio bool,
    acesso_internet bool,
    tempo_uso_diario int not null,
    recebe_monitoramento bool,
    id_responsavel int,
    primary key(id_crianca),
    foreign key(id_responsavel) references responsavel (id_responsavel)
);

create table jogo_rede_social (
    id int auto_increment,
    nome varchar(50) not null,
    dominio varchar(150) not null,
    tipo varchar(11),
    primary key(id)
);

create table crianca_jogo_rede_social (
    id_jogo_rede_social int,
    id_crianca int,
    foreign key (id_jogo_rede_social) references jogo_rede_social (id),
    foreign key (id_crianca) references crianca (id_crianca)
);

create table outro_jogo_rede_social (
    id int auto_increment,
    nome varchar(50)not null,
    id_crianca int not null,
    tipo varchar(11) not null,
    primary key(id),
    foreign key(id_crianca) references crianca (id_crianca)
);
