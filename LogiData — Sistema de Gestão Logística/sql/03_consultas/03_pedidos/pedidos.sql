SELECT COUNT(id_pedido) as qtd_pedidos from pedidos;


SELECT sum(valor_total) as valor_total_dos_pedidos from pedidos;


SELECT avg(valor_total) as valor_medio_pedidos from pedidos;


SELECT * from pedidos ORDER by valor_total desc limit 1;


SELECT * from pedidos ORDER by valor_total asc limit 1;


select status, count(status) from pedidos group by status;


SELECT * from pedidos order by valor_total desc limit 5;