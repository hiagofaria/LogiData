SELECT produto_id, SUM(quantidade) AS qtd_total_unidades FROM itens_pedido GROUP BY produto_id;

SELECT produto_id, COUNT(DISTINCT pedido_id) AS qtd_pedidos FROM itens_pedido GROUP BY produto_id ORDER BY qtd_pedidos DESC;

SELECT produto_id, SUM(quantidade) AS qtd_unidades FROM itens_pedido GROUP BY produto_id ORDER BY qtd_unidades DESC;

SELECT pedido_id, SUM(quantidade) AS qtd_itens FROM itens_pedido GROUP BY pedido_id ORDER BY qtd_itens DESC;

SELECT SUM(quantidade * preco_unitario) AS valor_total_itens FROM itens_pedido;

SELECT AVG(quantidade) AS quantidade_media_produtos FROM itens_pedido;