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
    preco decimal not null,
    primary key(id)
);

-- vizualiza tabela
SELECT * FROM tb_produtos;

-- popular tabela
INSERT INTO tb_produtos(nomeproduto, quantidade, preco) 
values ("tomate",100, 8.00);
INSERT INTO tb_produtos(nomeproduto, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nomeproduto, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nomeproduto, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nomeproduto, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nomeproduto, quantidade, preco) 
values ("pêra",500, 2.99);

-- desabilitar atualização segurança do sql
SET SQL_SAFE_UPDATES = 0;

-- habilitar atualização segurança do sql
SET SQL_SAFE_UPDATES = 1;

-- atualizar colunas da tabela
UPDATE tb_produtos SET preco = 5.0 WHERE id=1;

-- deletar itens da tabela
DELETE FROM tb_produtos WHERE id = 2 or id= 7;

-- deletar todos os itens da tabela (não funciona quando o atualização segura está ativado no MySQL)
DELETE FROM tb_produtos;

-- Modificando a Estrutura da Tabela
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

-- adicionar um novo Atributo/Coluna na Tabela.
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- remove um Atributo/Coluna da tabela
ALTER TABLE tb_produtos DROP descricao;

-- alterar o nome de um Atributo/Coluna da tabela
ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255)