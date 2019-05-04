-- Практическое задание, Тема №3
-- Задание 1

UPDATE users SET created_at = NOW(), updated_at = NOW();
 
-- Задание 2

UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'), updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i') FROM users;
ALTER TABLE users CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

-- Задание 3

SELECT * FROM products ORDER BY IF (value > 0, 0, 1), value;

-- Практическое задание, Тема №4
-- Задание 1

SELECT AVG(users);

-- Задание 2

SELECT COUNT(*), WEEKDAY(birthday_at) AS weekday FROM users GROUP BY weekday;

-- Задание 3

SELECT EXP(SUM(LOG(value)))