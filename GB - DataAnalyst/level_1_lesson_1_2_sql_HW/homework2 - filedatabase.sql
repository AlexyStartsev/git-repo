DROP TABLE IF EXISTS files;
CREATE TABLE files (
filed_id SERIAL PRIMARY KEY,
user_id INT UNSIGNED COMMENT "ID владельца",
filename TEXT COMMENT "Имя файла",
type_id TINYINT UNSIGNED COMMENT "Id типа файла",
filepath TEXT COMMENT "Путь к файлу",
description TEXT COMMENT "Описание файла",
tags INT UNSIGNED COMMENT "Тег файла",
created_at DATETIME DEFALUT CURRENT_TIMESTAMP,
updated_at DATETIME DEFALUT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
KEY index_of_file_id(filed_id)
)COMMENT "БД файлов";

DROP TABLE IF EXIST users;
CREATE TABLE users (
user_id SERIAL PRIMARY KEY,
user_name TEXT COMMENT "Имя владельца",
created_at DATETIME DEFALUT CURRENT_TIMESTAMP,
updated_at DATETIME DEFALUT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
KEY index_of_user_id(user_id)
) COMMENT "БД пользователей";

DROP TABLE IF EXIST filetypes;
CREATE TABLE filetypes (
filetype_id SERIAL PRIMARY KEY,
filetype_name TEXT COMMENT "Имя типа файла",
created_at DATETIME DEFALUT CURRENT_TIMESTAMP,
updated_at DATETIME DEFALUT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
KEY index_of_filetype_id(filetype_id)
) COMMENT "БД типов файлов";


DROP TABLE IF EXIST tags;
CREATE TABLE tags (
tag_id SERIAL PRIMARY KEY,
tag_name TEXT COMMENT "Название тега",
created_at DATETIME DEFALUT CURRENT_TIMESTAMP,
updated_at DATETIME DEFALUT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
KEY index_of_tag_id(tag_id)
) COMMENT "БД типов файлов";