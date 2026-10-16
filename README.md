# LogiData — Sistema de Gestão Logística

## Sobre o projeto

O **LogiData** é um projeto de banco de dados relacional desenvolvido como parte dos meus estudos em **Engenharia de Dados**.

O projeto representa uma operação de gestão logística, envolvendo clientes, produtos, pedidos, itens de pedidos, transportadoras e entregas.

Utilizando **SQL** e **SQLite**, o projeto tem como foco a **modelagem e a estruturação de um banco de dados relacional do tipo OLTP**, aplicando conceitos de tabelas, chaves, relacionamentos e integridade dos dados.

## Objetivo

O objetivo do projeto é construir uma estrutura de banco de dados capaz de representar as entidades e os relacionamentos de uma operação logística.

Durante o desenvolvimento, foram aplicados conceitos de:

- Modelagem de dados;
- Bancos de dados relacionais;
- SQL e SQLite;
- Criação e estruturação de tabelas;
- Chaves primárias e estrangeiras;
- Relacionamentos entre tabelas;
- Integridade dos dados;
- Inserção e manipulação de registros;
- Documentação de banco de dados.

## Etapas do projeto

O desenvolvimento do LogiData envolveu as seguintes etapas:

1. Definição do cenário da operação logística;
2. Estabelecimento das regras de negócio;
3. Elaboração do dicionário de dados;
4. Modelagem do banco de dados;
5. Criação das tabelas e dos relacionamentos;
6. Inserção de dados fictícios;
7. Documentação da estrutura do banco.

## Modelo do banco de dados

O modelo abaixo representa as tabelas e os relacionamentos definidos para o banco de dados.

![Modelo do banco de dados](LogiData%20—%20Sistema%20de%20Gestão%20Logística/docs/modelo-banco.png)

## Estrutura do projeto

O projeto está organizado na pasta `LogiData — Sistema de Gestão Logística`.

Seus principais diretórios são:

```text
LogiData — Sistema de Gestão Logística/
├── docs/
│   └── documentação estrutural do projeto
├── database/
│   └── banco de dados SQLite (logidata.db)
└── sql/
    ├── 01_estrutura/
    │   └── criação das tabelas
    └── 02_dados/
        └── inserção dos dados fictícios
```

## Tecnologias utilizadas

- **SQL**
- **SQLite**

## Documentação

A documentação estrutural do projeto está disponível na pasta [`docs/`](LogiData%20—%20Sistema%20de%20Gestão%20Logística/docs):

- [Cenário do projeto](LogiData%20—%20Sistema%20de%20Gestão%20Logística/docs/cenario.md)
- [Regras de negócio](LogiData%20—%20Sistema%20de%20Gestão%20Logística/docs/regras-negocio.md)
- [Dicionário de dados](LogiData%20—%20Sistema%20de%20Gestão%20Logística/docs/dicionario-dados.md)

## Status

**Concluído.**

O projeto contempla a modelagem, a criação e a estruturação de um banco de dados relacional, além da inserção de dados fictícios e da documentação correspondente.

Projeto desenvolvido como parte dos meus estudos em **Engenharia de Dados**, com foco em **SQL**, **SQLite** e **bancos de dados relacionais**.
