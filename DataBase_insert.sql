INSERT INTO `diplom`.`InfActor`(idInfActor, firstname, lastname, adress, tel, e_mail) VALUES(1, "Дмитрий", "Буханкин", "с. Бутенки", "0986427020", "pidor@yandex.ru");
INSERT INTO `diplom`.`InfActor`(idInfActor, firstname, lastname, adress, tel, e_mail) VALUES(2, "Алексей", "Будько", "с. Бутенки", "0986427021", "pidor1@yandex.ru");
INSERT INTO `diplom`.`InfActor`(idInfActor, firstname, lastname, adress, tel, e_mail) VALUES(3, "Дмитрий", "Буханкин", "с. Бутенки", "0986427020", "pidor2@yandex.ru");
INSERT INTO `diplom`.`InfActor`(idInfActor, firstname, lastname, adress, tel, e_mail) VALUES(4, "Дмитрий", "Буханкин", "с. Бутенки", "0986427020", "pidor3@yandex.ru");
INSERT INTO `diplom`.`InfActor`(idInfActor, firstname, lastname, adress, tel, e_mail) VALUES(5, "Дмитрий", "Буханкин", "с. Бутенки", "0986427020", "pidor4@yandex.ru");

INSERT INTO `diplom`.`logpass`(id_logPass,login,password,ref_infActor) VALUES(1,"admin","admin", 1) ;
INSERT INTO `diplom`.`logpass`(id_logPass,login,password,ref_infActor) VALUES(2,"user1","user1", 2) ;
INSERT INTO `diplom`.`logpass`(id_logPass,login,password,ref_infActor) VALUES(3,"user2","user2", 3) ;
INSERT INTO `diplom`.`logpass`(id_logPass,login,password,ref_infActor) VALUES(4,"user3","user3", 4) ;

SELECT * FROM `diplom`.`logpass`;

insert into `diplom`.`color` (id_color, name_color) values(1,"Бежевый");
insert into `diplom`.`color` (id_color, name_color) values(2,"Белый");
insert into `diplom`.`color` (id_color, name_color) values(3,"Бирюзовый");
insert into `diplom`.`color` (id_color, name_color) values(4,"Бордовый");
insert into `diplom`.`color` (id_color, name_color) values(5,"Голубой");
insert into `diplom`.`color` (id_color, name_color) values(6,"Желтый");
insert into `diplom`.`color` (id_color, name_color) values(7,"Зеленый");
insert into `diplom`.`color` (id_color, name_color) values(8,"Золотистый");
insert into `diplom`.`color` (id_color, name_color) values(9,"Кораловый");
insert into `diplom`.`color` (id_color, name_color) values(10,"Коричневый");
insert into `diplom`.`color` (id_color, name_color) values(11,"Кофейный");
insert into `diplom`.`color` (id_color, name_color) values(12,"Красный");
insert into `diplom`.`color` (id_color, name_color) values(13,"Лиловый");
insert into `diplom`.`color` (id_color, name_color) values(14,"Молочный");
insert into `diplom`.`color` (id_color, name_color) values(15,"Оранжевый");
insert into `diplom`.`color` (id_color, name_color) values(16,"Персиковый");
insert into `diplom`.`color` (id_color, name_color) values(17,"Песочный");
insert into `diplom`.`color` (id_color, name_color) values(18,"Розовый");
insert into `diplom`.`color` (id_color, name_color) values(19,"Салатовый");
insert into `diplom`.`color` (id_color, name_color) values(20,"Серебристый");
insert into `diplom`.`color` (id_color, name_color) values(21,"Серый");
insert into `diplom`.`color` (id_color, name_color) values(22,"Синий");
insert into `diplom`.`color` (id_color, name_color) values(23,"Сиреневый");
insert into `diplom`.`color` (id_color, name_color) values(24,"Фиолетовый");
insert into `diplom`.`color` (id_color, name_color) values(25,"Черный");
insert into `diplom`.`color` (id_color, name_color) values(26,"Комбинированый");

SELECT * FROM `diplom`.`color`;

insert into `diplom`.`genre` (id_genre, name_genre) values(1,"Бальные");
insert into `diplom`.`genre` (id_genre, name_genre) values(2,"Времена года");
insert into `diplom`.`genre` (id_genre, name_genre) values(3,"Зверюшки");
insert into `diplom`.`genre` (id_genre, name_genre) values(4,"Национальные");
insert into `diplom`.`genre` (id_genre, name_genre) values(5,"Професии");
insert into `diplom`.`genre` (id_genre, name_genre) values(6,"Сказочные");

SELECT * FROM `diplom`.`genre`;

insert into `diplom`.`place` (id_place, adress_place) values(1, 000001);
insert into `diplom`.`place` (id_place, adress_place) values(2, 000002);
insert into `diplom`.`place` (id_place, adress_place) values(3, 000003);
insert into `diplom`.`place` (id_place, adress_place) values(4, 000004);
insert into `diplom`.`place` (id_place, adress_place) values(5, 000005);
insert into `diplom`.`place` (id_place, adress_place) values(6, 000006);
insert into `diplom`.`place` (id_place, adress_place) values(7, 000007);

SELECT * FROM `diplom`.`place`;

insert into `diplom`.`size` (id_size, size) values(1, "1-1.5 года");
insert into `diplom`.`size` (id_size, size) values(2, "1.5-2 года");
insert into `diplom`.`size` (id_size, size) values(3, "2-2.5 года");
insert into `diplom`.`size` (id_size, size) values(4, "2.5-3 года");
insert into `diplom`.`size` (id_size, size) values(5, "4-5 лет");
insert into `diplom`.`size` (id_size, size) values(6, "5 лет");
insert into `diplom`.`size` (id_size, size) values(7, "6 лет");
insert into `diplom`.`size` (id_size, size) values(8, "7 лет");
insert into `diplom`.`size` (id_size, size) values(9, "8 лет");
insert into `diplom`.`size` (id_size, size) values(10, "9-10 лет");
insert into `diplom`.`size` (id_size, size) values(11, "11-12 лет");
insert into `diplom`.`size` (id_size, size) values(12, "13-14 лет");
insert into `diplom`.`size` (id_size, size) values(13, "15-16 лет");


SELECT * FROM `diplom`.`size`;

insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(1, "Пышное", 1);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(2, "Греческое", 1);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(3, "Весна", 2);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(4, "Лето", 2);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(5, "Осень", 2);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(6, "Зима", 2);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(7, "Птица", 3);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(8, "Кошка", 3);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(9, "Собака", 3);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(10, "Грызун", 3);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(11, "Рыба", 3);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(12, "Насекомое", 3);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(13, "Евразия", 4);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(14, "Америка", 4);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(15, "Африка", 4);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(16, "Австралия", 4);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(17, "Медик", 5);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(18, "Летчик", 5);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(19, "Моряк", 5);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(20, "Гангстер", 5);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(21, "Клоун", 5);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(22, "Маг", 6);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(23, "Чудище", 6);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(24, "Принц(еса)", 6);
insert into `diplom`.`subgenre` (id_subGenre, name_subGenre, ref_genre) values(25, "Герой", 6);

SELECT * FROM `diplom`.`subgenre`;

insert into `diplom`.`type` (id_type, name_type) values(1, "Мальчик");
insert into `diplom`.`type` (id_type, name_type) values(2, "Девочка");

SELECT * FROM `diplom`.`type`;

SELECT * FROM `diplom`.`dress`;
SELECT * FROM `diplom`.`order`;
