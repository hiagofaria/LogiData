# Regras de negócio

## Clientes

* Cada cliente possui um identificador único.
* Um cliente pode realizar vários pedidos.
* Um pedido pertence a um único cliente.
* O cliente é classificado como pessoa física ou empresa.
* Cada cliente possui cidade e estado cadastrados.

## Produtos

* Cada produto possui um identificador único.
* Cada produto pertence a uma categoria.
* Cada produto possui um preço.
* Cada produto possui um peso em quilogramas.
* Um produto pode aparecer em vários itens de pedidos.

## Pedidos

* Cada pedido possui um identificador único.
* Cada pedido pertence a um único cliente.
* Um cliente pode realizar vários pedidos.
* Cada pedido possui uma data de realização.
* Cada pedido possui um valor total.
* Os pedidos podem apresentar os seguintes status:

  * `Processando`
  * `Em transporte`
  * `Enviado`
  * `Entregue`
  * `Cancelado`

## Itens dos pedidos

* Cada item possui um identificador único.
* Cada item está relacionado a um único pedido.
* Cada item está relacionado a um único produto.
* Um pedido pode possuir vários itens.
* Um produto pode aparecer em vários pedidos.
* Cada item possui uma quantidade solicitada.
* Cada item possui um preço unitário registrado no momento do pedido.

## Transportadora

* Cada transportadora possui um identificador único.
* Uma transportadora pode realizar várias entregas.
* Cada entrega está associada a uma única transportadora.
* A transportadora possui nome, telefone, e-mail, cidade e estado cadastrados.

## Entregas

* Cada entrega possui um identificador único.
* Cada entrega está relacionada a um único pedido.
* Cada entrega está associada a uma única transportadora.
* Cada entrega possui um código de rastreio.
* Cada entrega possui uma data de envio, quando o pedido é enviado.
* Cada entrega possui uma data prevista de entrega.
* A data efetiva de entrega pode não estar preenchida quando a entrega ainda não foi concluída.
* As entregas podem apresentar os seguintes status:

  * `Em trânsito`
  * `Entregue`
  * `Cancelada`
* Uma entrega é considerada atrasada quando a data efetiva de entrega é posterior à data prevista.
* Entregas que ainda não possuem data efetiva não são consideradas concluídas.

## Relacionamentos

* `clientes` se relaciona com `pedidos` por meio de `id_cliente` e `cliente_id`.
* `pedidos` se relaciona com `itens_pedido` por meio de `id_pedido` e `pedido_id`.
* `produtos` se relaciona com `itens_pedido` por meio de `id_produto` e `produto_id`.
* `transportadora` se relaciona com `entregas` por meio de `id_transportadora` e `transportadora_id`.
* `pedidos` se relaciona com `entregas` por meio de `id_pedido` e `pedido_id`.
