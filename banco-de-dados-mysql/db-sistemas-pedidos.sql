CREATE DATABASE db_sistema_pedidos;

USE db_sistema_pedidos;

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



USE db_sistema_pedidos;

#Cria a tabela de clientes
CREATE TABLE tbl_cliente (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(18) NOT NULL,
    rg VARCHAR(15) NOT NULL,

    UNIQUE INDEX (id)
);

#Cria a tabela de telefones
CREATE TABLE tbl_telefone (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(15) NOT NULL,
    id_cliente INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
);

#Cria a tabela de endereços
CREATE TABLE tbl_endereco (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(45) NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    cep VARCHAR(45) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    estado VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    id_cliente INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
);

#Cria a tabela de emails
CREATE TABLE tbl_email (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    id_cliente INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
);

#Cria a tabela de pedidos
CREATE TABLE tbl_pedido (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero_pedido INT NOT NULL,
    data_compra DATE NOT NULL,
    data_entrega DATE,
    valor FLOAT NOT NULL,
    id_cliente INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
);

#Cria a tabela relacionando pedidos e produtos
CREATE TABLE tbl_pedido_produto (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    qtde_comprada INT NOT NULL,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_pedido) REFERENCES tbl_pedido(id),
    FOREIGN KEY (id_produto) REFERENCES tbl_produto(id_produto)
);

USE db_sistema_pedidos;

#Cria a tabela de clientes
CREATE TABLE tbl_cliente (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(18) NOT NULL,
    rg VARCHAR(15) NOT NULL,

    UNIQUE INDEX (id)
);

#Cria a tabela de telefones
CREATE TABLE tbl_telefone (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(15) NOT NULL,
    id_cliente INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
);

#Cria a tabela de endereços
CREATE TABLE tbl_endereco (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(45) NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    cep VARCHAR(45) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    estado VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    id_cliente INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
);

#Cria a tabela de emails
CREATE TABLE tbl_email (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    id_cliente INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
);

#Cria a tabela de pedidos
CREATE TABLE tbl_pedido (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero_pedido INT NOT NULL,
    data_compra DATE NOT NULL,
    data_entrega DATE,
    valor FLOAT NOT NULL,
    id_cliente INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
);

#Cria a tabela relacionando pedidos e produtos
CREATE TABLE tbl_pedido_produto (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    qtde_comprada INT NOT NULL,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,

    UNIQUE INDEX (id),

    FOREIGN KEY (id_pedido) REFERENCES tbl_pedido(id),
    FOREIGN KEY (id_produto) REFERENCES tbl_produto(id_produto)
);

