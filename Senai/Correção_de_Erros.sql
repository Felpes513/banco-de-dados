/* Os erros apresentados:
16:05:34	insert into cliente (CPF, Nome, Sobrenome, Telefone_celular, Endereco, numero, bairro, data_nascimento) 
values (37021261802, 'Felipe', 'Souza Moreira', 934409921, 'Rua Antônio Seixas Leite Rbeiro', 15, 'Jardim Alvorada', 22102003)	
Error Code: 1264. Out of range value for column 'CPF' at row 1	0.016 sec


16:09:33	ALTER TABLE cliente MODIFY COLUMN CPF VARCHAR(11)	Error Code: 3780. 
Referencing column 'cliente_cpf' and referenced column 'CPF' in foreign key constraint 'fk_carro_cliente1' are incompatible.	0.046 sec

Para Corrigir.
*/

-- Encontre a chave estrangeira
SHOW CREATE TABLE carro;

-- Remova temporariamente a chave estrangeira
ALTER TABLE carro DROP FOREIGN KEY fk_carro_cliente1;

-- Altere o valor de CPF de Int para varchar(11), e garanta que o tipo de dado na tabela carros seja compativel
ALTER TABLE cliente MODIFY COLUMN CPF VARCHAR(11);
ALTER TABLE carro MODIFY COLUMN cliente_cpf VARCHAR(11);

-- Agora pode recriar a chave estrangeira!
alter table carro add constraint fk_carro_cliente1
foreign key (cliente_cpf) references cliente(CPF);

/*
O erro se dava pelo fato de não conseguir adicionar os valores de CPF já que excedia o limite de caracteres
e o outro erro se dava ao fato de não conseguir mudar o tipo do dado por ser referenciada por uma chave extrangeira.
Agora poderá ser adicionado os valores normalmente!
*/