create table categoria(
id int primary key auto_increment,
nome varchar(50) not null unique,
descricao varchar(200)
);

create table produto(
id bigint primary key auto_increment,
nome varchar(50) not null unique,
descricao varchar(200),
proco decimal(10,2) not null,
quantidade int null,
categoria_id int not null,
usuario_id bigint not null,
data_hora_criacao datetime default current_timestamp,
constraint fk_produto_categoria foreign key(categoria_id) references categoria(id),
constraint fk_produto_usuario foreign key(usuario_id) references usuario(id)
);