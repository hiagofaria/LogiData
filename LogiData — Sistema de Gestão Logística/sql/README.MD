# Scripts SQL — LogiData

## Sobre

Esta pasta contém os scripts SQL utilizados durante o desenvolvimento do projeto LogiData.

Os scripts foram organizados em etapas para separar a criação da estrutura do banco, a inserção dos dados, as consultas e as análises.

---

## Estrutura

A pasta está organizada da seguinte forma:

    sql/
    │
    ├── README.md
    │
    ├── 01_estrutura/
    │
    ├── 02_dados/
    │
    ├── 03_consultas/
    │
    └── 04_analises/

---

## `01_estrutura`

Esta pasta contém os scripts responsáveis pela criação e estruturação do banco de dados.

Os scripts dessa etapa devem implementar a estrutura definida no dicionário de dados localizado em:

`../docs/dicionario-dados.md`

Essa etapa contempla a criação das seis tabelas principais:

- `clientes`
- `produtos`
- `pedidos`
- `itens_pedido`
- `transportadoras`
- `entregas`

---

## `02_dados`

Esta pasta contém os scripts responsáveis pela inserção dos dados fictícios utilizados no projeto.

Os dados devem respeitar as regras de negócio definidas em:

`../docs/regras-negocio.md`

A quantidade e a distribuição dos registros serão planejadas para permitir a realização das consultas e análises propostas no projeto.

---

## `03_consultas`

Esta pasta contém as consultas SQL desenvolvidas para responder às perguntas de negócio.

As perguntas que orientam essa etapa estão documentadas em:

`../docs/perguntas-negocio.md`

As consultas poderão envolver:

- Seleção de dados;
- Filtros;
- Ordenação;
- Agrupamentos;
- Funções de agregação;
- Junções entre tabelas;
- Subconsultas;
- Funções de texto;
- Funções de data;
- Funções numéricas;
- Conversão de tipos;
- Expressões condicionais;
- Tratamento de valores nulos.

---

## `04_analises`

Esta pasta contém consultas destinadas a análises mais elaboradas da operação logística.

O objetivo dessa etapa é utilizar os dados obtidos pelas consultas para gerar informações que possam auxiliar na compreensão da operação.

As análises poderão envolver:

- Desempenho de transportadoras;
- Volume de pedidos;
- Movimentação financeira;
- Distribuição geográfica;
- Cumprimento de prazos;
- Produtos mais solicitados;
- Clientes com maior movimentação;
- Indicadores relacionados às entregas.

---

## Ordem de execução

Os scripts devem ser desenvolvidos seguindo a sequência:

1. `01_estrutura`
2. `02_dados`
3. `03_consultas`
4. `04_analises`

Essa ordem garante que a estrutura do banco seja criada antes da inserção dos dados e que os dados estejam disponíveis antes da execução das consultas e análises.

---

## Documentação relacionada

Para compreender o contexto antes de executar os scripts, consulte:

- `../docs/cenario.md` — Cenário da operação logística.
- `../docs/regras-negocio.md` — Regras de funcionamento do sistema.
- `../docs/dicionario-dados.md` — Estrutura das tabelas e campos.
- `../docs/perguntas-negocio.md` — Perguntas que orientam as consultas.
- `../docs/modelo-banco.png` — Representação visual do banco.

---

## Banco de dados

O projeto utiliza **SQLite**.

O arquivo do banco de dados será armazenado na pasta:

`../database/`