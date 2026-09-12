# Dicionário de Dados — LogiData

## Sobre o documento

Este documento descreve as tabelas, colunas, tipos de dados, chaves e regras utilizadas no banco de dados da LogiData.

O banco é composto por seis tabelas principais:

1. `clientes`
2. `produtos`
3. `pedidos`
4. `itens_pedido`
5. `transportadora`
6. `entregas`

---

# 1. Tabela: `clientes`

Armazena as informações dos clientes que realizam pedidos na LogiData.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_cliente` | INT | PK | Não | Identificador único do cliente |
| `nome` | VARCHAR(100) | — | Não | Nome do cliente ou razão social |
| `email` | VARCHAR(100) | — | Não | E-mail utilizado para contato |
| `telefone` | VARCHAR(20) | — | Sim | Telefone de contato do cliente |
| `tipo_cliente` | VARCHAR(30) | — | Não | Identifica se o cliente é pessoa física ou empresa |
| `cidade` | VARCHAR(100) | — | Não | Cidade onde o cliente está localizado |
| `estado` | VARCHAR(2) | — | Não | Estado onde o cliente está localizado |

---

# 2. Tabela: `produtos`

Armazena os produtos disponibilizados pela LogiData.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_produto` | INT | PK | Não | Identificador único do produto |
| `nome` | VARCHAR(250) | — | Não | Nome do produto |
| `categoria` | VARCHAR(250) | — | Não | Categoria à qual o produto pertence |
| `preco` | FLOAT | — | Não | Preço do produto |
| `peso_kg` | FLOAT | — | Não | Peso do produto em quilogramas |

---

# 3. Tabela: `pedidos`

Armazena os pedidos realizados pelos clientes.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_pedido` | INT | PK | Não | Identificador único do pedido |
| `cliente_id` | INT | FK | Sim | Identificador do cliente que realizou o pedido |
| `data_pedido` | DATE | — | Não | Data em que o pedido foi realizado |
| `status` | VARCHAR(30) | — | Não | Situação atual do pedido |
| `valor_total` | FLOAT | — | Não | Valor total do pedido |

### Chave estrangeira

- `cliente_id` → `clientes.id_cliente`

---

# 4. Tabela: `itens_pedido`

Relaciona os pedidos aos produtos e registra as informações de cada produto presente em um pedido.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_item` | INT | PK | Não | Identificador único do item |
| `pedido_id` | INT | FK | Sim | Identificador do pedido |
| `produto_id` | INT | FK | Sim | Identificador do produto |
| `quantidade` | INT | — | Não | Quantidade do produto no pedido |
| `preco_unitario` | FLOAT | — | Não | Preço do produto no momento do pedido |

### Chaves estrangeiras

- `pedido_id` → `pedidos.id_pedido`
- `produto_id` → `produtos.id_produto`

---

# 5. Tabela: `transportadora`

Armazena as informações das empresas responsáveis pelo transporte dos pedidos.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_transportadora` | INT | PK | Não | Identificador único da transportadora |
| `nome` | VARCHAR(250) | — | Não | Nome da transportadora |
| `telefone` | VARCHAR(150) | — | Não | Telefone de contato da transportadora |
| `email` | VARCHAR(150) | — | Não | E-mail de contato da transportadora |
| `cidade` | VARCHAR(250) | — | Não | Cidade onde a transportadora está localizada |
| `estado` | VARCHAR(250) | — | Não | Estado onde a transportadora está localizada |

---

# 6. Tabela: `entregas`

Armazena as informações relacionadas ao transporte e à entrega dos pedidos.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_entrega` | INT | PK | Não | Identificador único da entrega |
| `pedido_id` | INT | FK | Sim | Identificador do pedido relacionado |
| `transportadora_id` | INT | FK | Sim | Identificador da transportadora responsável |
| `codigo_rastreio` | VARCHAR(90) | — | Não | Código utilizado para rastrear a entrega |
| `data_envio` | DATE | — | Sim | Data em que o pedido foi enviado |
| `data_prevista` | DATE | — | Não | Data prevista para a entrega |
| `data_entrega` | DATE | — | Sim | Data em que o pedido foi efetivamente entregue |
| `status` | VARCHAR(30) | — | Não | Situação atual da entrega |
| `cidade_destino` | VARCHAR(100) | — | Não | Cidade de destino da entrega |
| `estado_destino` | VARCHAR(100) | — | Não | Estado de destino da entrega |

### Chaves estrangeiras

- `pedido_id` → `pedidos.id_pedido`
- `transportadora_id` → `transportadora.id_transportadora`

---

# 7. Relacionamentos

## Clientes → Pedidos

Um cliente pode realizar vários pedidos.

**Cardinalidade:** 1:N

`clientes.id_cliente` → `pedidos.cliente_id`

---

## Pedidos → Itens dos pedidos

Um pedido pode possuir vários itens.

**Cardinalidade:** 1:N

`pedidos.id_pedido` → `itens_pedido.pedido_id`

---

## Produtos → Itens dos pedidos

Um produto pode aparecer em vários itens de pedidos.

**Cardinalidade:** 1:N

`produtos.id_produto` → `itens_pedido.produto_id`

---

## Pedidos → Entregas

Um pedido pode possuir uma ou mais entregas.

**Cardinalidade:** 1:N

`pedidos.id_pedido` → `entregas.pedido_id`

---

## Transportadora → Entregas

Uma transportadora pode ser responsável por várias entregas.

**Cardinalidade:** 1:N

`transportadora.id_transportadora` → `entregas.transportadora_id`

---

# 8. Resumo das tabelas

| Tabela | Função |
|---|---|
| `clientes` | Armazena os clientes da LogiData |
| `produtos` | Armazena os produtos disponibilizados |
| `pedidos` | Registra os pedidos realizados |
| `itens_pedido` | Relaciona pedidos e produtos |
| `transportadora` | Armazena as empresas responsáveis pelo transporte |
| `entregas` | Registra o processo de entrega |

---

# 9. Convenções utilizadas

- `PK` representa uma chave primária.
- `FK` representa uma chave estrangeira.
- `NOT NULL` representa um campo obrigatório.
- `NULL` representa um campo que pode não possuir informação.
- Os nomes das tabelas e colunas seguem o padrão `snake_case`.
- Identificadores utilizam `INT`.
- Datas utilizam `DATE`.
- Valores numéricos relacionados a preços e pesos utilizam `FLOAT`.
