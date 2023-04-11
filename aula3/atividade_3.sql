CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(100)
);

CREATE TABLE tb_produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(100),
  valor DECIMAL(10,2),
  estoque INT,
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Medicamentos', 'Produtos destinados à saúde'),
('Cosméticos', 'Produtos para cuidados pessoais'),
('Higiene', 'Produtos de limpeza pessoal'),
('Suplementos', 'Produtos para suplementação alimentar'),
('Infantil', 'Produtos para crianças');

INSERT INTO tb_produtos (nome, descricao, valor, estoque, categoria_id) VALUES
('Dorflex', 'Analgésico', 10.50, 50, 1),
('Hipoglós', 'Pomada para assaduras', 8.90, 20, 2),
('Sabonete Lux', 'Sabonete hidratante', 3.50, 100, 3),
('Multivitamínico Centrum', 'Suplemento vitamínico', 50.00, 10, 4),
('Fralda Huggies', 'Fralda para bebês', 30.00, 30, 5),
('Nivea Creme', 'Creme hidratante', 15.00, 70, 2),
('Shampoo Johnsons', 'Shampoo infantil', 12.50, 40, 5),
('Soro Fisiológico', 'Solução para limpeza nasal', 5.00, 80, 1);

-- SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

-- SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT p.*, c.nome AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
SELECT p.*, c.nome AS categoria FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';
