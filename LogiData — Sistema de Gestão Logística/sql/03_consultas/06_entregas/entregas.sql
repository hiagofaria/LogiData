select count(id_entrega) as qtd_cadastros_entregas from entregas;


SELECT status, count (status) from entregas group by status;


SELECT count(id_entrega) from entregas where status = 'Entregue';


SELECT count(id_entrega) from entregas where status = 'Em trânsito';


SELECT count (id_entrega) AS qtd_entregas_atrasadas from entregas where data_entrega > data_prevista;


SELECT cidade_destino, COUNT (cidade_destino) as cidade_com_maiores_quantidades_de_entregas from entregas GROUP by cidade_destino;


SELECT estado_destino, COUNT (estado_destino) as estados_com_maiores_quantidades_de_entregas from entregas GROUP by estado_destino;


SELECT transportadora_id, count(id_entrega) AS qtd_entregas from entregas group by transportadora_id order by qtd_entregas DESC;


SELECT * from entregas where status = 'concluída' and data_entrega <= data_prevista;


SELECT * from entregas where status = 'concluída' and data_entrega > data_prevista;


SELECT * from entregas where data_entrega is null;