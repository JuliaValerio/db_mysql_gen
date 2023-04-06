-- query para criar db;
CREATE DATABASE db_quitanda;

-- query para deletar db;
DROP DATABASE db_quitanda;

-- query para usar db;
USE db_quitanda;

-- query para criar tabelas
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal(2,2) not null,
    primary key(id)
);

-- vizualiza tabela
SELECT * FROM tb_produtos;

-- popular tabela
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("Manga", 250, 9.40);

-- desabilitar segurança do sql


-- atualizar colunas da tabela
UPDATE tb_produtos SET preco = 5.0 WHERE id=1;

-- deletar itens da tabela
DELETE FROM tb_produtos WHERE id = 2 or id= 7;
