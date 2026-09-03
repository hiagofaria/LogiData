select count(id_produto) as qtd_cadastro_produtos from produtos;


select categoria, count (id_produto) from produtos GROUP by categoria;


select max(preco) as maior_preco from produtos;


select min(preco) as menor_preco from produtos;


select max(peso_kg) as maior_peso from produtos;
