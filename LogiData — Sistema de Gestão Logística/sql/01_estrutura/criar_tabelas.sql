CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    tipo_cliente VARCHAR(30) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL
);


create table produtos(
id_produto int PRIMARY key,
nome varchar (250) not null,
categoria varchar (250) not null,
preco float not null,
peso_kg float not NULL
);


create table pedidos(
id_pedido int PRIMARY key,
cliente_id int,
data_pedido date not null,
status varchar (30) not null,
valor_total float not NULL,
  
FOREIGN key (cliente_id) REFERENCES clientes(id_cliente)
);


create table itens_pedido(
id_item int PRIMARY key,
pedido_id int,
produto_id int,
quantidade int not null,
preco_unitario float not NULL,
  
FOREIGN key (pedido_id) REFERENCES pedidos(id_pedido),
FOREIGN key (produto_id) references produtos(id_produto)
);


create table transportadora(
id_transportadora int PRIMARY key,
nome varchar (250) not null,
telefone varchar (150) not null,
email varchar (150) not null,
cidade varchar (250) not null,
estado varchar (250) not NULL
);


create table entregas(
id_entrega int PRIMARY key,
pedido_id int,
transportadora_id int,
codigo_rastreio varchar (90) not null,
data_envio date null,
data_prevista date not null,
data_entrega date null,
status varchar (30) not null,
cidade_destino varchar (100) not null,
estado_destino varchar (100) not null,
  
FOREIGN key (pedido_id) REFERENCES pedidos(id_pedido),
FOREIGN key (transportadora_id) REFERENCES transportadora(id_transportadora)
);


