# Regras de Negócio — LogiData

## 1. Objetivo

Este documento define as regras utilizadas para representar o funcionamento da operação logística da LogiData.

As regras servem como referência para a modelagem do banco de dados, definição dos relacionamentos, criação das tabelas e desenvolvimento das consultas SQL.

---

## 2. Clientes

- Cada cliente deve possuir um identificador único.
- O identificador do cliente é a chave primária da tabela `clientes`.
- O nome do cliente é obrigatório.
- O e-mail do cliente é obrigatório.
- O telefone do cliente é opcional.
- O tipo de cliente é obrigatório.
- A cidade do cliente é obrigatória.
- O estado do cliente é obrigatório.
- Um cliente pode realizar vários pedidos.
- Um pedido pertence a um único cliente.

---

## 3. Produtos

- Cada produto deve possuir um identificador único.
- O identificador do produto é a chave primária da tabela `produtos`.
- O nome do produto é obrigatório.
- A categoria do produto é obrigatória.
- O preço do produto é obrigatório.
- O peso do produto é obrigatório.
- Um produto pode aparecer em vários itens de pedidos.
- Um item de pedido está relacionado a um único produto.

---

## 4. Pedidos

- Cada pedido deve possuir um identificador único.
- O identificador do pedido é a chave primária da tabela `pedidos`.
- Todo pedido deve estar associado a um cliente existente.
- `cliente_id` é uma chave estrangeira que referencia `clientes.id_cliente`.
- A data do pedido é obrigatória.
- O status do pedido é obrigatório.
- O valor total do pedido é obrigatório.
- Um cliente pode possuir vários pedidos.
- Cada pedido pertence a um único cliente.
- Um pedido pode possuir vários itens.
- Um pedido pode possuir uma ou mais entregas.

---

## 5. Itens dos pedidos

- Cada item de pedido deve possuir um identificador único.
- O identificador do item é a chave primária da tabela `itens_pedido`.
- Todo item deve estar associado a um pedido existente.
- `pedido_id` é uma chave estrangeira que referencia `pedidos.id_pedido`.
- Todo item deve estar associado a um produto existente.
- `produto_id` é uma chave estrangeira que referencia `produtos.id_produto`.
- A quantidade do produto é obrigatória.
- O preço unitário é obrigatório.
- Um pedido pode possuir vários itens.
- Um produto pode aparecer em vários itens de pedidos.

---

## 6. Transportadoras

- Cada transportadora deve possuir um identificador único.
- O identificador da transportadora é a chave primária da tabela `transportadoras`.
- O nome da transportadora é obrigatório.
- O telefone é opcional.
- O e-mail é opcional.
- A cidade é obrigatória.
- O estado é obrigatório.
- Uma transportadora pode ser responsável por várias entregas.
- Cada entrega possui uma única transportadora responsável.

---

## 7. Entregas

- Cada entrega deve possuir um identificador único.
- O identificador da entrega é a chave primária da tabela `entregas`.
- Toda entrega deve estar associada a um pedido existente.
- `pedido_id` é uma chave estrangeira que referencia `pedidos.id_pedido`.
- Toda entrega deve estar associada a uma transportadora existente.
- `transportadora_id` é uma chave estrangeira que referencia `transportadoras.id_transportadora`.
- O código de rastreamento é obrigatório.
- A data de envio é opcional, pois uma entrega pode ainda não ter sido enviada.
- A data prevista para entrega é obrigatória.
- A data efetiva de entrega é opcional, pois uma entrega pode ainda não ter sido concluída.
- O status da entrega é obrigatório.
- A cidade de destino é obrigatória.
- O estado de destino é obrigatório.
- Um pedido pode possuir uma ou mais entregas.
- Uma transportadora pode ser responsável por várias entregas.

---

## 8. Status dos pedidos

Os pedidos podem assumir os seguintes status:

- `Pendente`
- `Em preparação`
- `Enviado`
- `Concluído`
- `Cancelado`

O status representa a situação atual do pedido dentro do processo operacional.

---

## 9. Status das entregas

As entregas podem assumir os seguintes status:

- `Aguardando envio`
- `Em transporte`
- `Saiu para entrega`
- `Entregue`
- `Atrasada`
- `Cancelada`

O status da entrega representa a situação atual do processo de transporte e distribuição.

---

## 10. Datas de entrega

- `data_envio` representa a data em que o pedido foi enviado para transporte.
- `data_prevista` representa a data prevista para conclusão da entrega.
- `data_entrega` representa a data em que a entrega foi efetivamente concluída.
- Uma entrega que ainda não foi concluída pode não possuir `data_entrega`.
- Uma entrega que ainda não foi enviada pode não possuir `data_envio`.

---

## 11. Integridade dos relacionamentos

Os relacionamentos do banco devem respeitar as seguintes referências:

- `pedidos.cliente_id` → `clientes.id_cliente`
- `itens_pedido.pedido_id` → `pedidos.id_pedido`
- `itens_pedido.produto_id` → `produtos.id_produto`
- `entregas.pedido_id` → `pedidos.id_pedido`
- `entregas.transportadora_id` → `transportadoras.id_transportadora`

As chaves estrangeiras devem referenciar registros existentes nas respectivas tabelas.

---

## 12. Convenções

- Os nomes das tabelas e colunas devem utilizar `snake_case`.
- As chaves primárias devem possuir valores únicos.
- As chaves estrangeiras devem utilizar os identificadores das entidades relacionadas.
- Campos essenciais devem ser definidos como `NOT NULL`.
- Campos que podem não possuir informação devem permitir `NULL`.
- Datas devem utilizar o tipo `DATE`.
- Valores numéricos relacionados a preços e pesos devem utilizar `REAL`.
- Identificadores e quantidades devem utilizar `INTEGER`.

---

## 13. Relação entre as entidades

Os relacionamentos principais são:

- `clientes` 1:N `pedidos`
- `pedidos` 1:N `itens_pedido`
- `produtos` 1:N `itens_pedido`
- `pedidos` 1:N `entregas`
- `transportadoras` 1:N `entregas`

O detalhamento estrutural dessas relações está disponível em `dicionario-dados.md` e representado visualmente em `modelo-banco.png`.