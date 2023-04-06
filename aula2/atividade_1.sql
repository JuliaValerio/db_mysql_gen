-- Crie um banco de dados para um serviço de RH de uma empresa
CREATE DATABASE db_rhsolutions;

-- Crie uma tabela de colaboradores e determine 5 atributo
CREATE TABLE tb_funcionarios (
	id bigint auto_increment,
	nome varchar(255) not null,
    cargo varchar(255) not null,
    salario decimal(6,2) not null,
    cpf int(11),
    idade int(2),
    cidade varchar(50),
	UF varchar(2),
    primary key(id)
);

ALTER TABLE tb_funcionarios MODIFY cpf bigint;

ALTER TABLE tb_funcionarios MODIFY salario decimal(7,2);

-- Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO tb_funcionarios(nome, cargo, salario, cpf, idade, cidade, UF)
values("João Gomes", "Auxiliar", 1450.50, 12345678910, 32, "Água Santa", "SP");
INSERT INTO tb_funcionarios(nome, cargo, salario, cpf, idade, cidade, UF)
values("Marilia Mendonça", "Diretora", 23950.50, 12345678913, 28, "Barueri", "SP");
INSERT INTO tb_funcionarios(nome, cargo, salario, cpf, idade, cidade, UF)
values("Zeca Pagodinho", "Gerente", 5950.50, 12345678916, 30, "Terezopolis", "RJ");
INSERT INTO tb_funcionarios(nome, cargo, salario, cpf, idade, cidade, UF)
values("Avril Lavigne", "Assistente", 1950.50, 12345678919, 30, "Salvador", "BA");
INSERT INTO tb_funcionarios(nome, cargo, salario, cpf, idade, cidade, UF)
values("Bon Jovi", "Analista", 3950.50, 12345678918, 30, "Fortaleza", "CE");

-- vizualiza tabela
SELECT * FROM tb_funcionarios;

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

--  atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_funcionarios SET salario = 5000.10 WHERE id=1;













