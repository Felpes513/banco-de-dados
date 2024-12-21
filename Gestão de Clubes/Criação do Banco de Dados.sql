create database Gestao_de_Clubes;

use Gestao_de_Clubes;

Create table Clubes(
id_Clubes INT primary key not null,
nome varchar(50) not null,
cidade varchar(50) not null,
ano_criacao timestamp not null,
logo blob
);

Create table Jogadores(
id_Jogadores INT primary key not null,
nome varchar(50) not null,
nacionalidade varchar(50) not null,
posicao varchar(50) not null,
foreign key id_Clubes 
);

Create table Ligas(
id_Ligas INT primary key not null,
nome varchar(50) not null,
comeco_temporada timestamp not null,
final_temporada timestamp not null
);

Create table Trofeus(
id_Trofeus INT primary key not null,
nome_trofeu varchar(50) not null,
data_conquista datetime not null,
nome_vencedor varchar(50) not null
);