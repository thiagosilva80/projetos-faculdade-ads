USE db_sistema_pedidos;

#inserir dados em uma tabela
INSERT INTO tbl_cor (nome_cor) VALUES ('Branco');

INSERT INTO tbl_produto (nome_produto, descricao, valor_compra_produto, valor_venda_produto, qtde_produto) VALUES
('Teclado', 'Teclado gamer', '300', '380', '250');

#seleciona todos os registro em uma tabela
SELECT * FROM tbl_cor;
SELECT * FROM tbl_produto;

#atualiza valores dentro de uma tabela (NÃO ESQUECER DE COLOCAR O CRITÉRIO DE BUSCA)
UPDATE tbl_produto SET descricao = 'Teclado com fio' WHERE id_produto = 1;