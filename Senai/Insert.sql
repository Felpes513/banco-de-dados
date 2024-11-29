-- Entendendo o Insert into

use senai;

ALTER TABLE cliente MODIFY COLUMN CPF VARCHAR(11);

insert into cliente (CPF, Nome, Sobrenome, Telefone_celular, Endereco, numero, bairro, data_nascimento)
values (37021261802, 'Felipe', 'Souza Moreira', 934409921, 'Rua Antônio Seixas Leite Rbeiro',
15, 'Jardim Alvorada', 20031022);

-- verifique os novos valores com o comando select
select * from clientee