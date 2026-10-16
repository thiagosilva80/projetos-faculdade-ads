/*CREATE DATABASE db_sistema_pedidos;

USE db_sistema_pedidos;*/

CREATE TABLE tbl_cor(
id_cor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_cor VARCHAR(45) NOT NULL,
UNIQUE INDEX(id_cor)
);


CREATE TABLE tbl_produto (
id_produto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR (45) NOT NULL,
descricao TEXT,
valor_compra_produto FLOAT NOT NULL,
valor_venda_produto FLOAT,
qtde_produto INT NOT NULL,

UNIQUE INDEX (id_produto)

);

#Cria uma tabela relacionando outra tabela
CREATE TABLE tbl_produto_cor (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_produto INT NOT NULL,
id_cor INT NOT NULL,


#Cria relacionamento entre tabelas
CONSTRAINT FK_Produto_Produto_Cor
FOREIGN KEY (id_produto)
REFERENCES tbl_produto (id_produto),


CONSTRAINT FK_Cor_produto_Cor
FOREIGN KEY (id_cor)
REFERENCES tbl_cor (id_cor),

UNIQUE INDEX (id)
);

SHOW TABLES;

DESC tbl_produto_cor
