select count(id_pedido) as qtd_pedidos from pedidos;

select sum(valor_total) as valor_total_dos_pedidos from pedidos;

select avg(valor_total) as valor_medio_pedidos from pedidos;

select max(valor_total) as maior_valor from pedidos;

select min(valor_total) as menor_valor from pedidos;

select status, count(status) as qtd_pedidos from pedidos group by status;

select c.nome, count(p.id_pedido) as qtd_pedidos from clientes c inner join pedidos p on c.id_cliente = p.cliente_id group by c.id_cliente, c.nome order by qtd_pedidos desc;

select c.nome, sum(p.valor_total) as valor_total_movimentado from clientes c inner join pedidos p on c.id_cliente = p.cliente_id group by c.id_cliente, c.nome order by valor_total_movimentado desc;

select strftime('%Y-%m', data_pedido) as periodo, count(id_pedido) as qtd_pedidos from pedidos group by periodo order by qtd_pedidos desc;

select * from pedidos order by valor_total desc limit 5;
