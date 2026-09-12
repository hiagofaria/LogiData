# LogiData — Sistema de Gestão Logística

## Sobre o projeto

O **LogiData** é um projeto de banco de dados relacional desenvolvido como parte dos meus estudos em **Engenharia de Dados**.

O projeto simula uma operação de gestão logística, envolvendo clientes, produtos, pedidos, itens de pedidos, transportadoras e entregas.

A solução utiliza **SQL e SQLite** para estruturar, armazenar, consultar e analisar dados a partir de um cenário de negócio.

---

## Objetivo

O objetivo do projeto é aplicar na prática conceitos relacionados a:

- Bancos de dados relacionais;
- Modelagem de dados;
- SQL;
- SQLite;
- Estruturação de tabelas;
- Chaves primárias e estrangeiras;
- Relacionamentos;
- Integridade dos dados;
- Consultas SQL;
- Análise de dados;
- Perguntas de negócio.

---

## O projeto

O desenvolvimento do LogiData passou pelas seguintes etapas:

1. Definição do cenário;
2. Definição das regras de negócio;
3. Criação do dicionário de dados;
4. Definição das perguntas de negócio;
5. Modelagem do banco;
6. Criação das tabelas;
7. Inserção dos dados;
8. Desenvolvimento das consultas SQL;
9. Desenvolvimento das análises;
10. Documentação do projeto.

---

## Modelo do banco de dados

Abaixo está o modelo visual utilizado para representar as tabelas e seus relacionamentos:

![Modelo do banco de dados](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/modelo-banco.png)

---

## Estrutura do projeto

O projeto completo está organizado dentro da pasta:

[`LogiData — Sistema de Gestão Logística`](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica)

Dentro dela estão:

- `docs/` — documentação do projeto;
- `database/` — banco de dados SQLite;
- `sql/` — scripts de estrutura, dados, consultas e análises.

---

## Dados

A base utiliza dados fictícios criados especificamente para representar a operação logística.

| Tabela | Registros |
|---|---:|
| `clientes` | 70 |
| `produtos` | 30 |
| `pedidos` | 70 |
| `itens_pedido` | 180 |
| `transportadora` | 6 |
| `entregas` | 85 |

---

## Consultas e análises

O projeto possui consultas SQL organizadas por entidade:

- Clientes;
- Produtos;
- Pedidos;
- Itens dos pedidos;
- Transportadoras;
- Entregas.

Também foram desenvolvidas análises integradas envolvendo diferentes entidades do banco.

---

## Tecnologias utilizadas

- **SQL**
- **SQLite**

---

## Documentação

A documentação completa está disponível dentro da pasta do projeto:

[`Documentação do LogiData`](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs)

Nela estão disponíveis:

- [Cenário](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/cenario.md)
- [Regras de negócio](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/regras-negocio.md)
- [Dicionário de dados](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/dicionario-dados.md)
- [Perguntas de negócio](./LogiData%20%E2%80%94%20Sistema%20de%20Gest%C3%A3o%20Log%C3%ADstica/docs/perguntas-negocio.md)

---

## Status

**Concluído.**

O projeto foi desenvolvido desde a definição do cenário até a estruturação do banco, inserção dos dados, consultas, análises e documentação.
