select count(id_produto) as qtd_cadastro_produtos from produtos;

select categoria, count(id_produto) as qtd_produtos from produtos group by categoria;

select max(preco) as maior_preco from produtos;

select min(preco) as menor_preco from produtos;

select pr.id_produto, pr.nome, sum(ip.quantidade) as qtd_unidades from produtos pr inner join itens_pedido ip on pr.id_produto = ip.produto_id group by pr.id_produto, pr.nome order by qtd_unidades desc;

select pr.id_produto, pr.nome, count(distinct ip.pedido_id) as qtd_pedidos from produtos pr inner join itens_pedido ip on pr.id_produto = ip.produto_id group by pr.id_produto, pr.nome order by qtd_pedidos desc;

select pr.id_produto, pr.nome, sum(ip.quantidade * ip.preco_unitario) as valor_total_movimentado from produtos pr inner join itens_pedido ip on pr.id_produto = ip.produto_id group by pr.id_produto, pr.nome order by valor_total_movimentado desc;

select max(peso_kg) as maior_peso from produtos;

select sum(ip.quantidade * pr.peso_kg) as peso_total_kg from itens_pedido ip inner join produtos pr on ip.produto_id = pr.id_produto;
