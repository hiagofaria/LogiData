SELECT COUNT(id_transportadora) AS qtd_transportadoras FROM transportadoras;

SELECT transportadora_id, COUNT(id_entrega) AS qtd_entregas FROM entregas GROUP BY transportadora_id;

SELECT transportadora_id, COUNT(id_entrega) AS qtd_entregas FROM entregas GROUP BY transportadora_id ORDER BY qtd_entregas DESC LIMIT 1;

SELECT transportadora_id, COUNT(id_entrega) AS qtd_entregas FROM entregas GROUP BY transportadora_id ORDER BY qtd_entregas ASC LIMIT 1;

SELECT transportadora_id, COUNT(id_entrega) AS qtd_entregas FROM entregas GROUP BY transportadora_id;