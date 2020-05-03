/* Таблица фотографий */
USE gallery;
CREATE TABLE gallery (
	id smallint unsigned not null auto_increment,		    # id фотографии
	url varchar(255) not null,								# url
	size integer unsigned not null,							# размер
	name varchar(255) not null,								# наименование
	description varchar(1024),								# описание
	views smallint,											# количество просмотров
	constraint pk_id primary key (id)               # первичный ключ
);

/* Таблица новостей */
CREATE TABLE `gallery_news` (
  `id` smallint(5) unsigned not null auto_increment,        # id новости
  `title` varchar(255) not null,                            # Заголовок
  `content` text,                                           # Содержание новости
  `date` timestamp not null default current_timestamp       # Дата
  constraint pk_id primary key (id)               # первичный ключ
) ENGINE=InnoDB default charset=utf8;                       # Кодировка
