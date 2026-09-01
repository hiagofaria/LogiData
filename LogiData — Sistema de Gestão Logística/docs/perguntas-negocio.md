\# Perguntas de Negócio — LogiData



\## Sobre o documento



Este documento reúne as perguntas de negócio que irão orientar o desenvolvimento das consultas SQL do projeto LogiData.



As perguntas foram definidas com base no cenário da empresa, nas regras de negócio e na estrutura do banco de dados.



O objetivo é utilizar SQL para transformar os dados armazenados em informações relevantes sobre a operação logística.



\---



\# 1. Clientes



\### 1.1



Quantos clientes estão cadastrados no sistema?



\### 1.2



Como os clientes estão distribuídos entre os estados?



\### 1.3



Quais cidades possuem a maior quantidade de clientes?



\### 1.4



Quais clientes realizaram a maior quantidade de pedidos?



\### 1.5



Quais clientes movimentaram os maiores valores em pedidos?



\### 1.6



Quais clientes ainda não realizaram nenhum pedido?



\### 1.7



Qual é a distribuição de clientes entre pessoa física e empresa?



\---



\# 2. Produtos



\### 2.1



Quantos produtos estão cadastrados?



\### 2.2



Quantos produtos existem em cada categoria?



\### 2.3



Quais produtos possuem os maiores preços?



\### 2.4



Quais produtos possuem os menores preços?



\### 2.5



Quais produtos foram solicitados na maior quantidade de unidades?



\### 2.6



Quais produtos aparecem na maior quantidade de pedidos?



\### 2.7



Quais produtos movimentaram os maiores valores?



\### 2.8



Quais produtos possuem maior peso?



\### 2.9



Qual é o peso total dos produtos presentes nos pedidos?



\---



\# 3. Pedidos



\### 3.1



Quantos pedidos foram realizados?



\### 3.2



Qual é o valor total dos pedidos?



\### 3.3



Qual é o valor médio dos pedidos?



\### 3.4



Qual foi o pedido de maior valor?



\### 3.5



Qual foi o pedido de menor valor?



\### 3.6



Como os pedidos estão distribuídos por status?



\### 3.7



Quais clientes realizaram a maior quantidade de pedidos?



\### 3.8



Quais clientes movimentaram os maiores valores?



\### 3.9



Em quais períodos foi registrado o maior volume de pedidos?



\### 3.10



Quais pedidos possuem os maiores valores totais?



\---



\# 4. Itens dos pedidos



\### 4.1



Qual foi a quantidade total de unidades solicitadas de cada produto?



\### 4.2



Quais produtos aparecem na maior quantidade de pedidos?



\### 4.3



Quais produtos possuem o maior volume de unidades solicitadas?



\### 4.4



Quais produtos movimentaram os maiores valores?



\### 4.5



Quais pedidos possuem a maior quantidade de itens?



\### 4.6



Qual foi o valor total movimentado pelos itens dos pedidos?



\### 4.7



Qual é a quantidade média de produtos por pedido?



\---



\# 5. Transportadoras



\### 5.1



Quantas transportadoras estão cadastradas?



\### 5.2



Quantas entregas cada transportadora realizou?



\### 5.3



Qual transportadora realizou a maior quantidade de entregas?



\### 5.4



Qual transportadora realizou a menor quantidade de entregas?



\### 5.5



Qual transportadora possui a maior quantidade de entregas concluídas?



\### 5.6



Qual transportadora possui a maior quantidade de entregas atrasadas?



\### 5.7



Como as entregas estão distribuídas entre as transportadoras?



\---



\# 6. Entregas



\### 6.1



Quantas entregas estão cadastradas?



\### 6.2



Como as entregas estão distribuídas por status?



\### 6.3



Quantas entregas foram concluídas?



\### 6.4



Quantas entregas estão em transporte?



\### 6.5



Quantas entregas estão atrasadas?



\### 6.6



Quais cidades possuem a maior quantidade de entregas?



\### 6.7



Quais estados possuem a maior quantidade de entregas?



\### 6.8



Quais transportadoras possuem a maior quantidade de entregas?



\### 6.9



Quais entregas foram concluídas dentro do prazo?



\### 6.10



Quais entregas foram concluídas após a data prevista?



\### 6.11



Qual é o tempo médio entre o envio e a entrega?



\### 6.12



Quais destinos concentram o maior volume de entregas?



\### 6.13



Quais entregas ainda não possuem uma data efetiva de entrega?



\---



\# 7. Análises integradas



Além das consultas individuais por entidade, o projeto também poderá realizar análises envolvendo diferentes tabelas.



\### 7.1



Quais clientes realizaram mais pedidos e qual foi o valor total movimentado por eles?



\### 7.2



Quais produtos estão associados aos pedidos de maior valor?



\### 7.3



Quais transportadoras apresentam maior volume de entregas atrasadas em relação ao total de entregas realizadas?



\### 7.4



Quais estados concentram simultaneamente maior quantidade de clientes e entregas?



\### 7.5



Quais períodos apresentaram maior quantidade de pedidos e entregas?



\### 7.6



Quais produtos representam maior movimentação financeira considerando a quantidade solicitada e o preço unitário?



\### 7.7



Quais clientes possuem pedidos em diferentes status?



\### 7.8



Quais transportadoras possuem entregas destinadas a diferentes estados?



\---



\# 8. Objetivo das consultas



As perguntas deste documento serão utilizadas como referência para o desenvolvimento dos scripts SQL.



Cada consulta deverá estar relacionada a uma ou mais perguntas de negócio e utilizar os relacionamentos existentes no banco para obter as informações necessárias.



Os scripts responsáveis pelas consultas serão armazenados em:



`sql/03\_consultas/`



As análises mais elaboradas serão armazenadas em:



`sql/04\_analises/`

