# SQL

Esta pasta reúne os scripts SQL desenvolvidos para o projeto **LogiData — Sistema de Gestão Logística**.

Os scripts estão organizados de acordo com as principais etapas do desenvolvimento do banco de dados: estruturação e inserção de dados.

## Organização

```text
sql/
├── README.md
├── 01_estrutura/
│   └── criar_tabelas.sql
└── 02_dados/
    └── inserir_dados.sql
```

## Etapas

### 01 — Estrutura

A pasta `01_estrutura` contém o script responsável pela criação das tabelas do banco de dados.

Nesta etapa são definidos:

- tabelas;
- campos;
- tipos de dados;
- chaves primárias;
- chaves estrangeiras;
- relacionamentos.

O script é `criar_tabelas.sql`.

### 02 — Dados

A pasta `02_dados` contém o script responsável pela inserção dos dados fictícios utilizados no projeto.

O script é `inserir_dados.sql`.

Os dados inseridos representam diferentes situações da operação logística modelada pelo banco.

## Ordem de execução

```text
01_estrutura  →  02_dados
```

Primeiro, as tabelas devem ser criadas. Em seguida, os dados são inseridos.

## Tecnologias

Os scripts foram desenvolvidos utilizando:

- SQL
- SQLite

## Conceitos utilizados

Durante o desenvolvimento dos scripts foram aplicados conceitos de:

- criação de tabelas;
- tipos de dados;
- chaves primárias;
- chaves estrangeiras;
- relacionamentos;
- inserção e manipulação de dados.

## Documentação

A documentação estrutural do projeto está disponível na pasta [`../docs`](../docs).

O banco de dados SQLite utilizado no projeto está disponível em [`../database`](../database).
