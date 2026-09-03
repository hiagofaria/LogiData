SELECT COUNT(id_pedido) as qtd_pedidos from pedidos;


SELECT sum(valor_total) as valor_total_dos_pedidos from pedidos;


SELECT avg(valor_total) as valor_medio_pedidos from pedidos;


select max(valor_total) as maior_valor from pedidos;


select min(valor_total) as menor_valor from pedidos;


select status, count(status) from pedidos group by status;


SELECT * from pedidos order by valor_total desc limit 5;
