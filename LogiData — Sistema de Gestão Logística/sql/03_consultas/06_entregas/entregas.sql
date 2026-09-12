select count(id_entrega) as qtd_cadastros_entregas from entregas;

select status, count(status) as qtd_entregas from entregas group by status;

select count(id_entrega) as qtd_entregas_concluidas from entregas where status = 'Entregue';

select count(id_entrega) as qtd_entregas_em_transito from entregas where status = 'Em trânsito';

select count(id_entrega) as qtd_entregas_atrasadas from entregas where data_entrega > data_prevista;

select cidade_destino, count(id_entrega) as qtd_entregas from entregas group by cidade_destino order by qtd_entregas desc;

select estado_destino, count(id_entrega) as qtd_entregas from entregas group by estado_destino order by qtd_entregas desc;

select transportadora_id, count(id_entrega) as qtd_entregas from entregas group by transportadora_id order by qtd_entregas desc;

select * from entregas where status = 'Entregue' and data_entrega <= data_prevista;

select * from entregas where status = 'Entregue' and data_entrega > data_prevista;

select avg(julianday(data_entrega) - julianday(data_envio)) as tempo_medio_entrega from entregas where data_entrega is not null and data_envio is not null;

select cidade_destino, count(id_entrega) as qtd_entregas from entregas group by cidade_destino order by qtd_entregas desc;

select * from entregas where data_entrega is null;
