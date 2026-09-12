select produto_id, sum(quantidade) as qtd_total_unidades from itens_pedido group by produto_id;

select produto_id, count(distinct pedido_id) as qtd_pedidos from itens_pedido group by produto_id order by qtd_pedidos desc;

select produto_id, sum(quantidade) as qtd_unidades from itens_pedido group by produto_id order by qtd_unidades desc;

select produto_id, sum(quantidade * preco_unitario) as valor_total from itens_pedido group by produto_id order by valor_total desc;

select pedido_id, sum(quantidade) as qtd_itens from itens_pedido group by pedido_id order by qtd_itens desc;

select sum(quantidade * preco_unitario) as valor_total_itens from itens_pedido;

select avg(qtd_produtos) as quantidade_media_produtos_por_pedido from (select pedido_id, sum(quantidade) as qtd_produtos from itens_pedido group by pedido_id);
