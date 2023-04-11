CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id_pizza INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    valor DECIMAL(6,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgadas', 'Pizzas com recheios salgados'),
('Doces', 'Pizzas com recheios doces');

INSERT INTO tb_pizzas (nome, descricao, valor, id_categoria) VALUES
('Calabresa', 'Pizza de calabresa, cebola e mussarela', 45.00, 1),
('Marguerita', 'Pizza de tomate, mussarela e manjericão', 50.00, 1),
('Frango com Catupiry', 'Pizza de frango, catupiry e milho', 55.00, 1),
('Chocolate', 'Pizza de chocolate com morango', 60.00, 2),
('Banana com Canela', 'Pizza de banana com canela e açúcar', 65.00, 2),
('Romeu e Julieta', 'Pizza de goiabada e queijo', 70.00, 2),
('Portuguesa', 'Pizza de presunto, ovo, cebola, mussarela e azeitona', 75.00, 1),
('4 Queijos', 'Pizza de mussarela, provolone, gorgonzola e parmesão', 80.00, 1);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome AS categoria FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.*, tb_categorias.nome AS categoria FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.nome = 'Doces';
