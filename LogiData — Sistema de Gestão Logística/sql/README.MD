# SQL

Esta pasta reúne os scripts SQL desenvolvidos para o projeto **LogiData — Sistema de Gestão Logística**.

Os scripts estão organizados de acordo com as principais etapas do desenvolvimento do banco de dados: estruturação, inserção de dados, consultas e análises.

## Organização

```text
sql/
│
├── README.md
│
├── 01_estrutura/
│   ├── README.md
│   └── criar_tabelas.sql
│
├── 02_dados/
│   ├── README.md
│   └── inserir_dados.sql
│
├── 03_consultas/
│   ├── README.md
│   ├── 01_clientes/
│   ├── 02_produtos/
│   ├── 03_pedidos/
│   ├── 04_itens_dos_pedidos/
│   ├── 05_transportadoras/
│   └── 06_entregas/
│
└── 04_analises/
    ├── README.md
    └── analises.sql
```

## Etapas

### 01 — Estrutura

A pasta [`01_estrutura`](01_estrutura) contém os scripts responsáveis pela criação das tabelas do banco de dados.

Nesta etapa são definidos:

* tabelas;
* campos;
* tipos de dados;
* chaves primárias;
* chaves estrangeiras;
* relacionamentos.

O script principal é [`criar_tabelas.sql`](01_estrutura/criar_tabelas.sql).

### 02 — Dados

A pasta [`02_dados`](02_dados) contém o script responsável pela inserção dos dados fictícios utilizados no projeto.

O script principal é [`inserir_dados.sql`](02_dados/inserir_dados.sql).

Os dados inseridos permitem representar diferentes situações da operação logística e servem de base para as consultas e análises.

### 03 — Consultas

A pasta [`03_consultas`](03_consultas) reúne as consultas SQL desenvolvidas para responder às perguntas de negócio do projeto.

As consultas estão organizadas por entidade:

* Clientes;
* Produtos;
* Pedidos;
* Itens dos pedidos;
* Transportadoras;
* Entregas.

Cada entidade possui sua própria pasta e arquivo SQL.

### 04 — Análises

A pasta [`04_analises`](04_analises) contém as análises integradas desenvolvidas a partir dos dados do banco.

As consultas dessa etapa relacionam informações de diferentes tabelas para responder perguntas de negócio mais abrangentes.

O script principal é [`analises.sql`](04_analises/analises.sql).

## Ordem de execução

Os scripts seguem uma sequência lógica:

```text
01_estrutura
      ↓
02_dados
      ↓
03_consultas
      ↓
04_analises
```

Primeiro, as tabelas devem ser criadas. Em seguida, os dados são inseridos. Depois disso, podem ser executadas as consultas e, por fim, as análises integradas.

## Tecnologias

Os scripts foram desenvolvidos utilizando:

* **SQL**
* **SQLite**

## Conceitos utilizados

Durante o desenvolvimento dos scripts foram aplicados conceitos de:

* criação e alteração de tabelas;
* tipos de dados;
* chaves primárias;
* chaves estrangeiras;
* relacionamentos;
* inserção e manipulação de dados;
* filtros;
* ordenação;
* agrupamento;
* funções de agregação;
* funções de texto;
* funções de data;
* funções numéricas;
* conversão de tipos;
* expressões condicionais;
* tratamento de valores nulos;
* junções entre tabelas;
* subconsultas.

## Documentação

A documentação geral do projeto está disponível na pasta [`../docs`](../docs).

As perguntas de negócio utilizadas como base para as consultas estão disponíveis em [`../docs/perguntas-negocio.md`](../docs/perguntas-negocio.md).

O banco de dados SQLite utilizado no projeto está disponível em [`../database`](../database).
