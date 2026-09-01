SELECT count(id_cliente) as qtd_cadastros from clientes;


SELECT estado, COUNT(*) AS quantidade_clientes FROM clientes GROUP BY estado;


SELECT cidade, count (*) as qtd_clientes from clientes GROUP by cidade ORDER by qtd_clientes desc;


SELECT clientes.nome FROM clientes
LEFT JOIN pedidos
ON clientes.id_cliente = pedidos.cliente_id
WHERE pedidos.id_pedido IS NULL;


SELECT tipo_cliente, COUNT(*) AS qtd_tipo_de_cliente FROM clientes GROUP BY tipo_cliente;