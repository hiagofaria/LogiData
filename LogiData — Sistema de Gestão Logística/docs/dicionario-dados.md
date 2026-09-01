# Dicionário de Dados — LogiData

## Sobre o documento

Este documento descreve as tabelas, colunas, tipos de dados, chaves e regras utilizadas no banco de dados da LogiData.

O banco é composto por seis tabelas principais:

1. `clientes`
2. `produtos`
3. `pedidos`
4. `itens_pedido`
5. `entregas`
6. `transportadoras`

---

# 1. Tabela: `clientes`

Armazena as informações dos clientes que realizam pedidos na LogiData.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_cliente` | INTEGER | PK | Não | Identificador único do cliente |
| `nome` | VARCHAR(150) | — | Não | Nome do cliente ou razão social |
| `email` | VARCHAR(150) | — | Não | E-mail utilizado para contato |
| `telefone` | VARCHAR(20) | — | Sim | Telefone de contato do cliente |
| `tipo_cliente` | VARCHAR(20) | — | Não | Identifica se o cliente é pessoa física ou empresa |
| `cidade` | VARCHAR(100) | — | Não | Cidade onde o cliente está localizado |
| `estado` | VARCHAR(2) | — | Não | Estado onde o cliente está localizado |

---

# 2. Tabela: `produtos`

Armazena os produtos transportados pela LogiData.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_produto` | INTEGER | PK | Não | Identificador único do produto |
| `nome` | VARCHAR(150) | — | Não | Nome do produto |
| `categoria` | VARCHAR(100) | — | Não | Categoria à qual o produto pertence |
| `preco` | REAL | — | Não | Preço do produto |
| `peso_kg` | REAL | — | Não | Peso do produto em quilogramas |

---

# 3. Tabela: `pedidos`

Armazena os pedidos realizados pelos clientes.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_pedido` | INTEGER | PK | Não | Identificador único do pedido |
| `cliente_id` | INTEGER | FK | Não | Identificador do cliente que realizou o pedido |
| `data_pedido` | DATE | — | Não | Data em que o pedido foi realizado |
| `status` | VARCHAR(30) | — | Não | Situação atual do pedido |
| `valor_total` | REAL | — | Não | Valor total do pedido |

### Chave estrangeira

- `cliente_id` → `clientes.id_cliente`

---

# 4. Tabela: `itens_pedido`

Relaciona os pedidos aos produtos e registra a quantidade de cada produto presente em um pedido.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_item` | INTEGER | PK | Não | Identificador único do item |
| `pedido_id` | INTEGER | FK | Não | Identificador do pedido |
| `produto_id` | INTEGER | FK | Não | Identificador do produto |
| `quantidade` | INTEGER | — | Não | Quantidade do produto no pedido |
| `preco_unitario` | REAL | — | Não | Preço do produto no momento do pedido |

### Chaves estrangeiras

- `pedido_id` → `pedidos.id_pedido`
- `produto_id` → `produtos.id_produto`

---

# 5. Tabela: `entregas`

Armazena as informações relacionadas ao transporte e à entrega dos pedidos.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_entrega` | INTEGER | PK | Não | Identificador único da entrega |
| `pedido_id` | INTEGER | FK | Não | Identificador do pedido relacionado |
| `transportadora_id` | INTEGER | FK | Não | Identificador da transportadora responsável |
| `codigo_rastreio` | VARCHAR(30) | — | Não | Código utilizado para rastrear a entrega |
| `data_envio` | DATE | — | Sim | Data em que o pedido foi enviado |
| `data_prevista` | DATE | — | Não | Data prevista para a entrega |
| `data_entrega` | DATE | — | Sim | Data em que o pedido foi efetivamente entregue |
| `status` | VARCHAR(30) | — | Não | Situação atual da entrega |
| `cidade_destino` | VARCHAR(100) | — | Não | Cidade de destino da entrega |
| `estado_destino` | VARCHAR(2) | — | Não | Estado de destino da entrega |

### Chaves estrangeiras

- `pedido_id` → `pedidos.id_pedido`
- `transportadora_id` → `transportadoras.id_transportadora`

---

# 6. Tabela: `transportadoras`

Armazena as informações das empresas responsáveis pelas entregas.

| Coluna | Tipo de dado | Chave | Nulo | Descrição |
|---|---|---|---|---|
| `id_transportadora` | INTEGER | PK | Não | Identificador único da transportadora |
| `nome` | VARCHAR(150) | — | Não | Nome da transportadora |
| `telefone` | VARCHAR(20) | — | Sim | Telefone de contato da transportadora |
| `email` | VARCHAR(150) | — | Sim | E-mail de contato da transportadora |
| `cidade` | VARCHAR(100) | — | Não | Cidade onde a transportadora está localizada |
| `estado` | VARCHAR(2) | — | Não | Estado onde a transportadora está localizada |

---

# 7. Relacionamentos

## Clientes → Pedidos

Um cliente pode realizar vários pedidos.

**Cardinalidade:** 1:N

`clientes.id_cliente` → `pedidos.cliente_id`

---

## Pedidos → Itens do pedido

Um pedido pode possuir vários itens.

**Cardinalidade:** 1:N

`pedidos.id_pedido` → `itens_pedido.pedido_id`

---

## Produtos → Itens do pedido

Um produto pode aparecer em vários itens de pedidos.

**Cardinalidade:** 1:N

`produtos.id_produto` → `itens_pedido.produto_id`

---

## Pedidos → Entregas

Um pedido pode possuir uma ou mais entregas.

**Cardinalidade:** 1:N

`pedidos.id_pedido` → `entregas.pedido_id`

---

## Transportadoras → Entregas

Uma transportadora pode ser responsável por várias entregas.

**Cardinalidade:** 1:N

`transportadoras.id_transportadora` → `entregas.transportadora_id`

---

# 8. Resumo das tabelas

| Tabela | Função |
|---|---|
| `clientes` | Armazena os clientes da LogiData |
| `produtos` | Armazena os produtos transportados |
| `pedidos` | Registra os pedidos realizados |
| `itens_pedido` | Relaciona pedidos e produtos |
| `entregas` | Registra o processo de entrega |
| `transportadoras` | Armazena as empresas responsáveis pelo transporte |

---

# 9. Convenções utilizadas

- `PK` representa uma chave primária.
- `FK` representa uma chave estrangeira.
- `NOT NULL` representa um campo obrigatório.
- `NULL` representa um campo que pode não possuir informação.
- Os nomes das tabelas e colunas seguem o padrão `snake_case`.
- Identificadores utilizam `INTEGER`.
- Datas utilizam `DATE`.
- Valores numéricos relacionados a preços e pesos utilizam `REAL`.