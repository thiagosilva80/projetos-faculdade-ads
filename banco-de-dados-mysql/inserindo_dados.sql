USE db_sistema_pedidos;

#inserir dados em uma tabela
INSERT INTO tbl_cor (nome_cor) VALUES ('Amarelo');

INSERT INTO tbl_produto (nome_produto, descricao, valor_compra_produto, valor_venda_produto, qtde_produto) VALUES
('Teclado', 'Teclado gamer', '300', '380', '250'),
('Mouse', 'Mouse com fio', '200', '280', '200');


USE db_sistema_pedidos;

#Inserir dados na tabela cliente
INSERT INTO tbl_cliente (nome, cpf, rg) VALUES
('Joao Silva', '12345678901', '123456789'),
('Maria Santos', '98765432100', '987654321'),
('Pedro Oliveira', '45678912300', '456789123');


#Inserir dados na tabela telefone
INSERT INTO tbl_telefone (numero, id_cliente) VALUES
('11999999999', 1),
('11988888888', 2),
('11977777777', 3);


#Inserir dados na tabela endereco
INSERT INTO tbl_endereco (logradouro, bairro, cep, cidade, estado, pais, id_cliente) VALUES
('Rua das Flores', 'Centro', '06750000', 'Taboao da Serra', 'SP', 'Brasil', 1),
('Rua Brasil', 'Jardim Maria', '05550000', 'Sao Paulo', 'SP', 'Brasil', 2),
('Avenida Paulista', 'Bela Vista', '01311000', 'Sao Paulo', 'SP', 'Brasil', 3);


#Inserir dados na tabela email
INSERT INTO tbl_email (email, id_cliente) VALUES
('joao@email.com', 1),
('maria@email.com', 2),
('pedro@email.com', 3);


#Inserir dados na tabela pedido
INSERT INTO tbl_pedido (numero_pedido, data_compra, data_entrega, valor, id_cliente) VALUES
(1001, '2026-10-19', '2026-10-25', 380, 1),
(1002, '2026-10-19', '2026-10-26', 280, 2),
(1003, '2026-10-19', '2026-10-27', 760, 3);


#Inserir dados na tabela pedido_produto
INSERT INTO tbl_pedido_produto (qtde_comprada, id_pedido, id_produto) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1);


#Inserir dados na tabela produto_cor
INSERT INTO tbl_produto_cor (id_produto, id_cor) VALUES
(1, 1),
(2, 1);



INSERT INTO tbl_produto_cor (id_produto, id_cor)  VALUES (1,2);


#seleciona todos os registro em uma tabela
SELECT * FROM tbl_cor;
SELECT * FROM tbl_produto;
SELECT * FROM tbl_produto_cor;

#atualiza valores dentro de uma tabela (NÃO ESQUECER DE COLOCAR O CRITÉRIO DE BUSCA)
UPDATE tbl_produto SET descricao = 'Teclado com fio' WHERE id_produto = 1;