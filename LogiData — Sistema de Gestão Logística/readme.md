# LogiData — Sistema de Gestão Logística

## Sobre o projeto

O **LogiData** é um projeto de banco de dados relacional desenvolvido como parte dos meus estudos em **Engenharia de Dados**.

O projeto representa uma operação de gestão logística, envolvendo clientes, produtos, pedidos, itens de pedidos, transportadoras e entregas.

Utilizando **SQL e SQLite**, o projeto tem como foco a modelagem e a estruturação de um banco de dados relacional do tipo **OLTP**, aplicando conceitos de tabelas, chaves, relacionamentos e integridade dos dados.

---

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
- Documentação de bancos de dados.

---

## Etapas do projeto

O desenvolvimento do LogiData envolveu as seguintes etapas:

1. Definição do cenário da operação logística;
2. Estabelecimento das regras de negócio;
3. Elaboração do dicionário de dados;
4. Modelagem do banco de dados;
5. Criação das tabelas e dos relacionamentos;
6. Inserção de dados fictícios;
7. Documentação da estrutura do banco.

---

## Modelo do banco de dados

O modelo abaixo representa as tabelas e os relacionamentos definidos para o banco de dados.

![Modelo do banco de dados](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/modelo-banco.png)

---

## Estrutura do projeto

O projeto está organizado na pasta [`LogiData — Sistema de Gestão Logística`](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica).

Seus principais diretórios são:

- `docs/` — documentação do cenário, regras de negócio, dicionário de dados e modelo do banco;
- `database/` — banco de dados SQLite (`logidata.db`);
- `sql/01_estrutura/` — script de criação das tabelas;
- `sql/02_dados/` — script de inserção dos dados fictícios.

---

## Tecnologias utilizadas

- **SQL**
- **SQLite**

---

## Documentação

A documentação estrutural do projeto está disponível na pasta [`docs/`](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs).

- [Cenário do projeto](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/cenario.md)
- [Regras de negócio](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/regras-negocio.md)
- [Dicionário de dados](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/dicionario-dados.md)
- [Modelo do banco de dados](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/modelo-banco.png)

---

## Status

**Concluído.**

O projeto contempla a modelagem, a criação e a estruturação de um banco de dados relacional, além da inserção de dados fictícios e da documentação correspondente.

---

Projeto desenvolvido como parte dos meus estudos em **Engenharia de Dados**, com foco em SQL, SQLite e bancos de dados relacionais.
