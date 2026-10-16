/*CREATE DATABASE sistema_estoque;*/
USE sistema_estoque;

CREATE TABLE tbl_usuario (
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nome_usuario VARCHAR (100),
email_usuario VARCHAR (100),
senha_usuario VARCHAR (8)
);

CREATE TABLE tbl_produtos (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
codigo_produto VARCHAR(20),
nome_produto VARCHAR (100),
categoria_id INT,
fornecedor_id INT,
quantidade_produto INT,
preco_compra_produto DECIMAL(10,2),
preco_venda_produto DECIMAL(10,2),
data_cadastro_produto DATE
);

CREATE TABLE tbl_categoorias(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR (100) NOT NULL
);

CREATE TABLE tbl_fornecedores (
id_fornecedores INT AUTO_INCREMENT PRIMARY KEY,
nome_fornecedores VARCHAR(100) NOT NULL,
telefone_fornecedores VARCHAR(50),
email_fornecedores VARCHAR(100),
cnpj_fornecedores VARCHAR(18) UNIQUE,
endereco VARCHAR(150)
);

CREATE TABLE tbl_movimentacoes(
id_movimentacoes INT AUTO_INCREMENT PRIMARY KEY,
produtos_id INT,
tipo_movimentacoes VARCHAR(100),
quanidade_movimentacoes INT,
usuario_id INT,
data_movimentecoes DATE
);

ALTER TABLE tbl_produtos
ADD CONSTRAINT fk_categoria
FOREIGN KEY (categoria_id)
REFERENCES tbl_categoorias(id_categoria);

ALTER TABLE tbl_produtos
ADD CONSTRAINT fk_fornecedor
FOREIGN KEY (fornecedor_id)
REFERENCES tbl_fornecedores(id_fornecedores);


