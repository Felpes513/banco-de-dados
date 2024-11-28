Create Database Senai;

use senai;

-- Criando a Tabela principal

Create Table cliente(
CPF int not null primary key,
Nome varchar(80),
Sobrenome varchar(80),
Telefone_celular Text Null,
Endereco text not null,
numero int not null,
bairro text not null,
data_nascimento date not null
);
/*Adicionando uma tabela chamada “carro” fazendo uma ligação 1-N 
com a tabela “cliente”, ou seja, 1 cliente pode possuir N*/

Create table carro(
codigo int not null auto_increment,
marca text null,
modelo text null,
ano int null,
cliente_cpf int Not null,
primary key(codigo),
constraint fk_carro_cliente1
foreign key(cliente_cpf)
references cliente(cpf)
);
/* Comando Alter table:
Utilizado para alterar os campos de uma tabela já montada. É possível atualizar um campo (CHANGE), remover (DROP) ou
adicionar (ADD).*/

alter table carro drop modelo;
-- remove a coluna 'modelo' da tabela carro

alter table carro add modelo text null after marca;
-- adiciona o campo 'modelo' novamente a tabela carro

alter table carro change ano anoFabricacao int not null;
-- atualiza o campo "ano" mudando o nome para "anoFabricacao"


-- Como utlizar o Select

select * from cliente
where idade = 18;

/* Este exemplo usa o banco World
A regra do select é select (nome do dado Ex: ID) + from (nome da tabela Ex: city)
Segue o exemplo
*/
use world;

select ID from city;

drop database gestao_venda1;