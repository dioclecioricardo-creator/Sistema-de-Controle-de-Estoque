CREATE DATABASE Bellaluna;

USE Bellaluna;

CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL
);


CREATE TABLE Clientes (
    ID_CLIENTE INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20)
);

CREATE TABLE Produtos (
    Codigo_produto INT PRIMARY KEY,
    Descricao VARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL
);


CREATE TABLE Vendas (
    identificador VARCHAR(100) PRIMARY KEY,
    Data DATE NOT NULL,
    Hora TIME NOT NULL,
    ID_CLIENTE INT,
    Codigo INT,
    FOREIGN KEY (ID_CLIENTE) REFERENCES Clientes(ID_CLIENTE),
    FOREIGN KEY (Codigo) REFERENCES Produtos(Codigo_produto)
);



CREATE TABLE Itens_de_vendas (
    Codigo INT PRIMARY KEY, 
    Identificador VARCHAR(20), 
    Codigo_Produto INT, 
    FOREIGN KEY (Identificador) REFERENCES Vendas(identificador),
    FOREIGN KEY (Codigo_Produto) REFERENCES Produtos(Codigo_produto)
);
