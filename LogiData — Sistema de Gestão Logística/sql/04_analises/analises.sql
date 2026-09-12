select c.nome, count(p.id_pedido) as qtd_pedidos, sum(p.valor_total) as valor_total_movimentado
from clientes c
inner join pedidos p on c.id_cliente = p.cliente_id
group by c.id_cliente, c.nome
order by qtd_pedidos desc, valor_total_movimentado desc;

select p.id_pedido, p.valor_total, pr.nome as produto, ip.quantidade, ip.preco_unitario
from pedidos p
inner join itens_pedido ip on p.id_pedido = ip.pedido_id
inner join produtos pr on ip.produto_id = pr.id_produto
where p.valor_total = (select max(valor_total) from pedidos)
order by p.valor_total desc;

select t.id_transportadora, t.nome, count(e.id_entrega) as qtd_entregas, sum(case when e.data_entrega > e.data_prevista then 1 else 0 end) as qtd_entregas_atrasadas, round(100.0 * sum(case when e.data_entrega > e.data_prevista then 1 else 0 end) / count(e.id_entrega), 2) as percentual_atrasos
from transportadora t
inner join entregas e on t.id_transportadora = e.transportadora_id
group by t.id_transportadora, t.nome
order by percentual_atrasos desc;

select c.estado, count(distinct c.id_cliente) as qtd_clientes, count(distinct e.id_entrega) as qtd_entregas
from clientes c
left join pedidos p on c.id_cliente = p.cliente_id
left join entregas e on p.id_pedido = e.pedido_id
group by c.estado
order by qtd_clientes desc, qtd_entregas desc;

select pedidos_periodo.periodo, qtd_pedidos, qtd_entregas
from (
    select strftime('%Y-%m', data_pedido) as periodo, count(id_pedido) as qtd_pedidos
    from pedidos
    group by periodo
) pedidos_periodo
left join (
    select strftime('%Y-%m', data_envio) as periodo, count(id_entrega) as qtd_entregas
    from entregas
    where data_envio is not null
    group by periodo
) entregas_periodo
on pedidos_periodo.periodo = entregas_periodo.periodo
order by qtd_pedidos desc, qtd_entregas desc;

select pr.id_produto, pr.nome, sum(ip.quantidade) as qtd_unidades, sum(ip.quantidade * ip.preco_unitario) as valor_total_movimentado
from produtos pr
inner join itens_pedido ip on pr.id_produto = ip.produto_id
group by pr.id_produto, pr.nome
order by valor_total_movimentado desc;

select c.nome, count(distinct p.status) as qtd_status_diferentes
from clientes c
inner join pedidos p on c.id_cliente = p.cliente_id
group by c.id_cliente, c.nome
having count(distinct p.status) > 1
order by qtd_status_diferentes desc;

select t.id_transportadora, t.nome, count(distinct e.estado_destino) as qtd_estados_destino
from transportadora t
inner join entregas e on t.id_transportadora = e.transportadora_id
group by t.id_transportadora, t.nome
having count(distinct e.estado_destino) > 1
order by qtd_estados_destino desc;
