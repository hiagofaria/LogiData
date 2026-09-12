select count(id_transportadora) as qtd_transportadoras from transportadora;

select transportadora_id, count(id_entrega) as qtd_entregas from entregas group by transportadora_id;

select transportadora_id, count(id_entrega) as qtd_entregas from entregas group by transportadora_id order by qtd_entregas desc limit 1;

select transportadora_id, count(id_entrega) as qtd_entregas from entregas group by transportadora_id order by qtd_entregas asc limit 1;

select transportadora_id, count(id_entrega) as qtd_entregas_concluidas from entregas where status = 'Entregue' group by transportadora_id order by qtd_entregas_concluidas desc limit 1;

select transportadora_id, count(id_entrega) as qtd_entregas_atrasadas from entregas where data_entrega > data_prevista group by transportadora_id order by qtd_entregas_atrasadas desc limit 1;
