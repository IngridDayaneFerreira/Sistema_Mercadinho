CREATE TABLE produto (
    ID INT NOT NULL AUTO_INCREMENT,
    codigo INT NOT NULL,
    tp_unidade_medida_ID INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    gramatura INT NOT NULL
);

CREATE TABLE tp_unidade_medida (
    ID INT NOT NULL,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE estoque (
    ID INT NOT NULL AUTO_INCREMENT,
    produto_codigo INT NOT NULL,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE entradas_mercadorias (
    ID INT NOT NULL AUTO_INCREMENT,
    produto_codigo INT NOT NULL,
    tp_aquisicao_ID INT NOT NULL,
    qtd_itens INT NOT NULL,
    preco_compra INT NOT NULL,
    preco_venda INT NOT NULL
);

CREATE TABLE tp_aquisicao (
    ID INT NOT NULL,
    nome VARCHAR (255) NOT NULL
);

CREATE TABLE vendas (
    ID INT NOT NULL AUTO_INCREMENT,
    produto_codigo INT NOT NULL,
    tp_saida_ID INT NOT NULL,
    tp_pagamento_ID INT NOT NULL,
    qtd_itens INT NOT NULL
);

CREATE TABLE tp_saida (
    ID INT NOT NULL,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE tp_pagamento (
    ID INT NOT NULL,
    nome VARCHAR(255) NOT NULL
);