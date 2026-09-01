# Cenário — LogiData

## 1. Visão geral

A **LogiData** é uma empresa fictícia especializada na gestão e distribuição de produtos.

A empresa realiza o gerenciamento de pedidos realizados por seus clientes e coordena o processo de entrega por meio de transportadoras parceiras.

O projeto tem como objetivo representar essa operação por meio de um banco de dados relacional, permitindo armazenar, relacionar e consultar as principais informações envolvidas no processo logístico.

---

## 2. Funcionamento da operação

O processo começa com o cadastro dos clientes e dos produtos disponíveis.

Quando um cliente realiza um pedido, o sistema registra as informações relacionadas à solicitação, incluindo o cliente responsável, a data do pedido, seu status e o valor total.

Um pedido pode conter diferentes produtos. Para representar essa relação, os produtos associados ao pedido são registrados na tabela `itens_pedido`, que informa quais produtos fazem parte do pedido, suas quantidades e seus respectivos preços unitários.

Após o processamento do pedido, ele pode seguir para a etapa de entrega.

As entregas são realizadas por transportadoras cadastradas no sistema. Cada entrega possui informações relacionadas ao pedido, à transportadora responsável, ao código de rastreamento, às datas do processo, ao status e ao destino.

---

## 3. Clientes

Os clientes representam as pessoas ou empresas que realizam pedidos na LogiData.

Para cada cliente são armazenadas informações como:

- Identificação;
- Nome ou razão social;
- E-mail;
- Telefone;
- Tipo de cliente;
- Cidade;
- Estado.

Um cliente pode realizar diversos pedidos ao longo do tempo.

---

## 4. Produtos

Os produtos representam os itens disponibilizados para comercialização e transporte pela LogiData.

Para cada produto são armazenadas informações como:

- Identificação;
- Nome;
- Categoria;
- Preço;
- Peso em quilogramas.

Um mesmo produto pode estar presente em diferentes pedidos.

---

## 5. Pedidos

Os pedidos representam as solicitações realizadas pelos clientes.

Cada pedido está relacionado a um cliente e possui informações como:

- Identificação do pedido;
- Cliente responsável;
- Data do pedido;
- Status;
- Valor total.

Um cliente pode possuir vários pedidos.

Um pedido também pode possuir vários produtos, sendo essa relação representada pela tabela `itens_pedido`.

---

## 6. Itens dos pedidos

A tabela `itens_pedido` é responsável por representar os produtos presentes em cada pedido.

Ela funciona como uma entidade intermediária entre `pedidos` e `produtos`.

Para cada item são armazenadas informações como:

- Identificação do item;
- Pedido relacionado;
- Produto relacionado;
- Quantidade;
- Preço unitário praticado no momento do pedido.

Essa estrutura permite que um pedido possua vários produtos e que um mesmo produto esteja presente em diferentes pedidos.

---

## 7. Transportadoras

As transportadoras representam as empresas responsáveis pelo transporte e distribuição dos pedidos.

Para cada transportadora são armazenadas informações como:

- Identificação;
- Nome;
- Telefone;
- E-mail;
- Cidade;
- Estado.

Uma transportadora pode ser responsável por diversas entregas.

---

## 8. Entregas

As entregas representam a etapa de transporte e distribuição dos pedidos.

Cada entrega está relacionada a um pedido e a uma transportadora.

São armazenadas informações como:

- Identificação da entrega;
- Pedido relacionado;
- Transportadora responsável;
- Código de rastreamento;
- Data de envio;
- Data prevista para entrega;
- Data efetiva de entrega;
- Status da entrega;
- Cidade de destino;
- Estado de destino.

Um pedido pode possuir uma ou mais entregas, permitindo representar situações como entregas parciais ou reenvios.

---

## 9. Objetivo da modelagem

A modelagem foi desenvolvida para permitir que a LogiData acompanhe diferentes aspectos da operação, como:

- Cadastro e distribuição dos clientes;
- Produtos comercializados;
- Pedidos realizados;
- Produtos presentes nos pedidos;
- Valores movimentados;
- Transportadoras utilizadas;
- Entregas realizadas;
- Cumprimento dos prazos;
- Distribuição geográfica das entregas;
- Status dos pedidos e entregas.

A estrutura também permite utilizar consultas SQL para gerar informações relevantes para a análise da operação logística.

---

## 10. Escopo do projeto

O projeto contempla a representação das seguintes entidades:

- `clientes`
- `produtos`
- `pedidos`
- `itens_pedido`
- `transportadoras`
- `entregas`

A definição detalhada das regras que orientam o funcionamento dessas entidades está disponível em `regras-negocio.md`.

A estrutura de cada tabela está documentada em `dicionario-dados.md`.

As perguntas que deverão ser respondidas utilizando SQL estão documentadas em `perguntas-negocio.md`.