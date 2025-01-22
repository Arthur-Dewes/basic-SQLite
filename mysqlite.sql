CREATE TABLE student (
    id INTEGER PRIMARY KEY,         -- Índice único
    name TEXT UNIQUE,               -- Sem repetição
    grade INTEGER NOT NULL,         -- Valor obrigatório
    age INTEGER DEFAULT 10          -- Valor padrão
);

CREATE TABLE cars (
    id INTEGER PRIMARY KEY,
    model TEXT,
    color TEXT,
    year INTEGER
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    name TEXT,
    year INTEGER
);

CREATE TABLE contacts (
    id INTEGER PRIMARY KEY,
    name TEXT,
    birth_date TEXT
);

CREATE TABLE contact_details (
    id INTEGER PRIMARY KEY,
    city TEXT
);

CREATE TABLE records (
    id INTEGER PRIMARY KEY,
    address TEXT
);

CREATE TABLE library (
    id INTEGER PRIMARY KEY,
    title TEXT,
    pub_year INTEGER
);

-- Existem duas maneiras de inserir dados: direta (ordem das colunas) ou nomeando as colunas.
INSERT INTO student VALUES (1, 'John Doe', 90, 15);

INSERT INTO cars (model, color, year) VALUES ('Model S', 'blue', 2020);
INSERT INTO movies (name, year) VALUES ('The Matrix', 1999);
INSERT INTO contacts (name, birth_date) VALUES ('Alice', '1990-05-15');
INSERT INTO contact_details (city) VALUES ('New York');
INSERT INTO records (address) VALUES ('123 Main St');
INSERT INTO library (title, pub_year) VALUES ('Python Basics', 2017);

-- Adicionar uma nova coluna à tabela existente.
ALTER TABLE student ADD COLUMN email TEXT;

-- Atualizar um registro existente com o comando UPDATE.
UPDATE student 
SET email = 'john.doe@example.com' 
WHERE name = 'John Doe';

-- Excluir registros com base em uma condição.
DELETE FROM cars 
WHERE color = 'blue';

-- Buscar modelos de carros azuis fabricados após 2014.
SELECT model 
FROM cars 
WHERE color = 'blue' AND year > 2014;

-- Renomear o campo "name" para "movie_title" na consulta.
SELECT name AS 'movie_title' 
FROM movies;

-- Ordenar contatos pela data de nascimento em ordem decrescente.
SELECT name 
FROM contacts 
ORDER BY birth_date DESC; -- DESC ou ASC

-- Buscar cidades únicas (sem duplicatas).
SELECT DISTINCT city 
FROM contact_details;

-- Buscar filmes lançados entre 1980 e 1990.
SELECT * 
FROM movies 
WHERE year BETWEEN 1980 AND 1990;

-- Buscar endereços que não estão vazios (não nulos).
SELECT address 
FROM records 
WHERE address IS NOT NULL;

-- Buscar livros publicados em 2017.
SELECT title 
FROM library 
WHERE pub_year = 2017;

-- Limitar a quantidade de resultados a 5 registros.
SELECT * 
FROM movies 
LIMIT 5;


