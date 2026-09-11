select c.nome, count(p.id_pedido) as qtd_pedidos, sum(p.valor_total) as valor_total from clientes c inner join pedidos p on c.id_cliente = p.cliente_id group by c.id_cliente, c.nome order by valor_total desc;

select p.nome, sum(ip.quantidade) as qtd_unidades from produtos p inner join itens_pedido ip on p.id_produto = ip.produto_id group by p.id_produto, p.nome order by qtd_unidades desc;

select p.nome, count(distinct ip.pedido_id) as qtd_pedidos from produtos p inner join itens_pedido ip on p.id_produto = ip.produto_id group by p.id_produto, p.nome order by qtd_pedidos desc;

select p.nome, sum(ip.quantidade * ip.preco_unitario) as valor_total from produtos p inner join itens_pedido ip on p.id_produto = ip.produto_id group by p.id_produto, p.nome order by valor_total desc;

select p.nome, sum(ip.quantidade * p.peso_kg) as peso_total_kg from produtos p inner join itens_pedido ip on p.id_produto = ip.produto_id group by p.id_produto, p.nome order by peso_total_kg desc;

select c.nome, count(p.id_pedido) as qtd_pedidos from clientes c inner join pedidos p on c.id_cliente = p.cliente_id group by c.id_cliente, c.nome order by qtd_pedidos desc;

select c.nome, sum(p.valor_total) as valor_total from clientes c inner join pedidos p on c.id_cliente = p.cliente_id group by c.id_cliente, c.nome order by valor_total desc;

select strftime('%Y-%m', data_pedido) as periodo, count(id_pedido) as qtd_pedidos from pedidos group by periodo order by qtd_pedidos desc;

select p.id_pedido, sum(ip.quantidade) as qtd_itens from pedidos p inner join itens_pedido ip on p.id_pedido = ip.pedido_id group by p.id_pedido order by qtd_itens desc;

select t.nome, count(e.id_entrega) as qtd_entregas from transportadoras t inner join entregas e on t.id_transportadora = e.transportadora_id group by t.id_transportadora, t.nome order by qtd_entregas desc limit 1;

select t.nome, count(e.id_entrega) as qtd_entregas from transportadoras t inner join entregas e on t.id_transportadora = e.transportadora_id group by t.id_transportadora, t.nome order by qtd_entregas asc limit 1;

select avg(julianday(e.data_entrega) - julianday(e.data_envio)) as tempo_medio_entrega from entregas e where e.data_envio is not null and e.data_entrega is not null;

select cidade_destino, count(id_entrega) as qtd_entregas from entregas group by cidade_destino order by qtd_entregas desc;

select p.id_pedido, p.valor_total, pr.nome as produto, ip.quantidade, ip.preco_unitario from pedidos p inner join itens_pedido ip on p.id_pedido = ip.pedido_id inner join produtos pr on ip.produto_id = pr.id_produto where p.valor_total = (select max(valor_total) from pedidos);

select t.nome, count(e.id_entrega) as qtd_entregas, sum(case when e.data_entrega > e.data_prevista then 1 else 0 end) as qtd_atrasadas, round(cast(sum(case when e.data_entrega > e.data_prevista then 1 else 0 end) as float) / count(e.id_entrega) * 100, 2) as percentual_atrasos from transportadoras t inner join entregas e on t.id_transportadora = e.transportadora_id group by t.id_transportadora, t.nome order by percentual_atrasos desc;

select c.estado, count(distinct c.id_cliente) as qtd_clientes, count(distinct e.id_entrega) as qtd_entregas from clientes c left join pedidos p on c.id_cliente = p.cliente_id left join entregas e on p.id_pedido = e.pedido_id group by c.estado order by qtd_clientes desc, qtd_entregas desc;

select strftime('%Y-%m', p.data_pedido) as periodo, count(distinct p.id_pedido) as qtd_pedidos, count(distinct e.id_entrega) as qtd_entregas from pedidos p left join entregas e on p.id_pedido = e.pedido_id group by periodo order by qtd_pedidos desc, qtd_entregas desc;

select p.nome, sum(ip.quantidade) as qtd_unidades, sum(ip.quantidade * ip.preco_unitario) as valor_total from produtos p inner join itens_pedido ip on p.id_produto = ip.produto_id group by p.id_produto, p.nome order by valor_total desc;

select c.nome, count(distinct p.status) as qtd_status from clientes c inner join pedidos p on c.id_cliente = p.cliente_id group by c.id_cliente, c.nome having qtd_status > 1;

select t.nome, count(distinct e.estado_destino) as qtd_estados from transportadoras t inner join entregas e on t.id_transportadora = e.transportadora_id group by t.id_transportadora, t.nome having qtd_estados > 1;