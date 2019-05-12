-- Практическое задание, Тема №5
-- Задание 1
SELECT 
	p.name
FROM 
	users AS c 
JOIN 
	orders AS p 
WHERE 
	c.id = p.buyer_id AND c.counts > 1;

 
-- Задание 2
SELECT 
	p.name,
	p.price,
	c.name
FROM 
	catalogs AS c 
JOIN 
	products AS p 
WHERE 
	c.id = p.catalog_id;


-- Практическое задание, Тема №6
-- Задание 1

START TRANSACTION;
INSERT INTO shop.users VALUES (SELECT * FROM shop.users WHERE shop.users.user_id = 1);
COMMIT;

-- Задание 2 2.	Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
CREATE OR REPLACE VIEW vvv (name, catalog_name) AS (SELECT p.name, c.name FROM catalogs AS c JOIN products AS p WHERE c.id = p.id);