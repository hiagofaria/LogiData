# LogiData — Sistema de Gestão Logística

## Sobre o projeto

O **LogiData** é um projeto de banco de dados relacional desenvolvido para representar o funcionamento de um sistema de gestão logística.

O projeto simula uma empresa responsável pelo gerenciamento de clientes, produtos, pedidos e entregas, além do acompanhamento das transportadoras responsáveis pela distribuição dos pedidos.

A solução utiliza **SQL e SQLite** para estruturar, armazenar, consultar e analisar os dados de uma operação logística.

O projeto foi desenvolvido como parte dos meus estudos em **Engenharia de Dados**, com o objetivo de aplicar na prática conceitos de bancos de dados relacionais, modelagem de dados e SQL em um cenário baseado em uma necessidade de negócio.

---

## Objetivo

O objetivo do LogiData é desenvolver uma estrutura de banco de dados capaz de representar uma operação logística e permitir a realização de consultas e análises sobre os dados gerados pela operação.

O projeto aplica conceitos de:

* Modelagem de dados;
* Bancos de dados relacionais;
* SQL;
* SQLite;
* Estruturação de tabelas;
* Chaves e relacionamentos;
* Integridade dos dados;
* Manipulação de registros;
* Consultas;
* Análise de dados;
* Resolução de perguntas de negócio.

Para conhecer o contexto completo utilizado no projeto, consulte o [cenário da operação](docs/cenario.md).

---

## Documentação do projeto

A documentação foi organizada para separar cada aspecto do projeto e facilitar sua compreensão.

### Cenário

O [cenário do projeto](docs/cenario.md) apresenta o contexto da empresa fictícia, o funcionamento da operação logística e as entidades envolvidas.

### Regras de negócio

As [regras de negócio](docs/regras-negocio.md) definem as condições utilizadas para representar o funcionamento da operação e os relacionamentos entre as entidades.

### Dicionário de dados

O [dicionário de dados](docs/dicionario-dados.md) apresenta as tabelas utilizadas no banco, seus campos, tipos de dados, chaves, restrições e relacionamentos.

### Perguntas de negócio

As [perguntas de negócio](docs/perguntas-negocio.md) apresentam as questões utilizadas como base para o desenvolvimento das consultas SQL e das análises do projeto.

---

## Modelo do banco de dados

O modelo abaixo representa visualmente a estrutura do banco de dados e os relacionamentos existentes entre suas tabelas.

![Modelo do banco de dados](docs/modelo-banco.png)

O banco de dados é composto pelas seguintes entidades:

* `clientes`
* `produtos`
* `pedidos`
* `itens_pedido`
* `transportadora`
* `entregas`

A descrição completa de cada tabela pode ser consultada no [dicionário de dados](docs/dicionario-dados.md).

---

## Dados

O projeto utiliza dados fictícios desenvolvidos especificamente para representar diferentes situações de uma operação logística.

A base possui:

| Tabela           | Quantidade de registros |
| ---------------- | ----------------------: |
| `clientes`       |                      70 |
| `produtos`       |                      30 |
| `pedidos`        |                      70 |
| `itens_pedido`   |                     180 |
| `transportadora` |                       6 |
| `entregas`       |                      85 |

Os scripts responsáveis pela inserção dos dados estão organizados em [`sql/02_dados`](sql/02_dados).

O banco de dados SQLite está armazenado em [`database`](database).

---

## Consultas SQL

As consultas SQL foram desenvolvidas para explorar os dados e responder às perguntas de negócio definidas para o projeto.

Os scripts estão organizados em [`sql/03_consultas`](sql/03_consultas), separados de acordo com as principais entidades do banco:

* Clientes;
* Produtos;
* Pedidos;
* Itens dos pedidos;
* Transportadoras;
* Entregas.

As perguntas que orientam essas consultas estão disponíveis em [`docs/perguntas-negocio.md`](docs/perguntas-negocio.md).

---

## Análises

As análises integram informações de diferentes tabelas para obter uma visão mais abrangente da operação logística.

Entre os pontos analisados estão:

* quantidade de pedidos e valor movimentado por cliente;
* produtos associados aos pedidos de maior valor;
* volume de entregas atrasadas por transportadora;
* relação entre clientes e entregas por estado;
* comparação entre pedidos e entregas por período;
* movimentação financeira dos produtos;
* clientes com pedidos em diferentes status;
* transportadoras com entregas destinadas a diferentes estados.

Os scripts relacionados às análises estão organizados em [`sql/04_analises`](sql/04_analises).

---

## Estruturação do banco

Os scripts responsáveis pela criação e estruturação das tabelas estão organizados em [`sql/01_estrutura`](sql/01_estrutura).

Essa etapa implementa a estrutura definida no [dicionário de dados](docs/dicionario-dados.md), incluindo tabelas, chaves primárias, chaves estrangeiras e relacionamentos.

---

## Tecnologias utilizadas

* **SQL**
* **SQLite**

---

## Conceitos aplicados

Durante o desenvolvimento do projeto foram aplicados conceitos relacionados a:

* Bancos de dados relacionais;
* Modelagem de dados;
* Criação e alteração de tabelas;
* Tipos de dados;
* Chaves primárias;
* Chaves estrangeiras;
* Relacionamentos;
* Inserção e manipulação de dados;
* Consultas SQL;
* Filtros;
* Ordenação;
* Agrupamento;
* Funções de agregação;
* Funções de texto;
* Funções de data;
* Funções numéricas;
* Conversão de tipos;
* Expressões condicionais;
* Tratamento de valores nulos;
* Junções entre tabelas;
* Subconsultas.

---

## Estrutura do projeto

```text
logidata/
│
├── README.md
│
├── docs/
│   ├── README.md
│   ├── cenario.md
│   ├── regras-negocio.md
│   ├── dicionario-dados.md
│   ├── perguntas-negocio.md
│   └── modelo-banco.png
│
├── database/
│   ├── README.md
│   └── logidata.db
│
└── sql/
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

---

## Organização das pastas

### `docs/`

A pasta [`docs`](docs) contém a documentação responsável por explicar o contexto, as regras, a modelagem e as perguntas que orientam o projeto.

### `database/`

A pasta [`database`](database) contém o banco de dados SQLite utilizado pelo projeto.

### `sql/`

A pasta [`sql`](sql) contém os scripts SQL utilizados para criar a estrutura do banco, inserir os dados, realizar consultas e desenvolver análises.

A organização interna dessa pasta está documentada no [README da pasta SQL](sql/README.md).

### `sql/01_estrutura/`

A pasta [`sql/01_estrutura`](sql/01_estrutura) contém o script relacionado à criação e estruturação do banco.

### `sql/02_dados/`

A pasta [`sql/02_dados`](sql/02_dados) contém o script responsável pela inserção dos dados fictícios utilizados no projeto.

### `sql/03_consultas/`

A pasta [`sql/03_consultas`](sql/03_consultas) contém os scripts utilizados para realizar consultas e responder às perguntas de negócio.

### `sql/04_analises/`

A pasta [`sql/04_analises`](sql/04_analises) contém o script utilizado para desenvolver análises integradas a partir dos dados do banco.

---

## Fluxo de desenvolvimento

O projeto segue uma sequência lógica de desenvolvimento:

```text
Cenário
   ↓
Regras de negócio
   ↓
Dicionário de dados
   ↓
Perguntas de negócio
   ↓
Modelo do banco
   ↓
Estruturação do banco
   ↓
Inserção dos dados
   ↓
Consultas SQL
   ↓
Análises
```

Cada etapa foi desenvolvida com base nas definições estabelecidas nas etapas anteriores.

---

## Documentação rápida

| Documento                                         | Descrição                                      |
| ------------------------------------------------- | ---------------------------------------------- |
| [Cenário](docs/cenario.md)                        | Contexto e funcionamento da operação logística |
| [Regras de negócio](docs/regras-negocio.md)       | Regras utilizadas pelo sistema                 |
| [Dicionário de dados](docs/dicionario-dados.md)   | Estrutura detalhada das tabelas                |
| [Perguntas de negócio](docs/perguntas-negocio.md) | Perguntas que orientam as consultas            |
| [Modelo do banco](docs/modelo-banco.png)          | Representação visual do banco                  |
| [Organização SQL](sql/README.md)                  | Organização dos scripts SQL                    |

---

## Status do projeto

**Concluído.**

O projeto foi desenvolvido passando pelas etapas de documentação, modelagem, criação do banco, inserção dos dados, desenvolvimento das consultas e realização das análises.

---

## Sobre

Este projeto foi desenvolvido como parte da minha formação em **Engenharia de Dados**, com foco no desenvolvimento de habilidades práticas em **SQL, SQLite e bancos de dados relacionais**.

A proposta foi representar um cenário de negócio, estruturar seus dados e utilizar SQL para consultar e analisar informações relacionadas a uma operação de gestão logística.
