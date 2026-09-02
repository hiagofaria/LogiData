select count(id_produto) as qtd_cadastro_produtos from produtos;


select categoria, count (id_produto) from produtos GROUP by categoria;


select nome, categoria, preco from produtos order by preco desc limit 5;


select nome, categoria, preco from produtos order by preco asc limit 5;


SELECT nome, categoria, peso_kg from produtos ORDER by peso_kg desc limit 3;