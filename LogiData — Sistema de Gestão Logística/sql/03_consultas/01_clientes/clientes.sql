select count(id_cliente) as qtd_cadastros from clientes;

select estado, count(*) as quantidade_clientes from clientes group by estado;

select cidade, count(*) as qtd_clientes from clientes group by cidade order by qtd_clientes desc;

select c.nome, count(p.id_pedido) as qtd_pedidos from clientes c inner join pedidos p on c.id_cliente = p.cliente_id group by c.id_cliente, c.nome order by qtd_pedidos desc;

select clientes.nome from clientes left join pedidos on clientes.id_cliente = pedidos.cliente_id where pedidos.id_pedido is null;

select tipo_cliente, count(*) as qtd_tipo_de_cliente from clientes group by tipo_cliente;
