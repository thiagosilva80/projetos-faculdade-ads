USE db_sistema_pedidos;

SELECT * FROM tbl_produto;
SELECT * FROM tbl_cor;
SELECT * FROM tbl_produto_cor;
SELECT * FROM tbl_cliente;
SELECT * FROM tbl_pedido;
SELECT * FROM tbl_pedido_produto;

SELECT tbl_cliente.nome, tbl_cliente.cpf,
	   tbl_pedido.numero_pedido, tbl_pedido.data_compra, tbl_pedido.valor,
       tbl_produto.nome_produto , tbl_produto.descricao
FROM tbl_cliente 
INNER JOIN tbl_pedido
	ON  tbl_cliente.id = tbl_pedido.id_cliente
INNER JOIN tbl_pedido_produto
	ON tbl_pedido.id = tbl_pedido_produto.id_pedido
INNER JOIN tbl_produto
	ON tbl_produto.id_produto = tbl_pedido_produto.id_produto
    ;
