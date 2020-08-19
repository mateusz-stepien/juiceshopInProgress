

insert into product (description, name) values ('Sok jabłkowy 100% stanowi świetną alternatywę dla słodzonych cukrem napojów owocowych. Świeży, naturalny smak z powodzeniem zastąpi każdy syntetyczny dodatek. Słodki sok z pewnością zasmakuje również dzieciom. To doskonały dodatek do obiadu albo element śniadania lub podwieczorku. Jest lekkostrawny i niskokaloryczny, dlatego nadaje się także dla osób na diecie odchudzającej.','Sok jabłkowy');
insert into product (description, name) values ('Sok Jabłkowo (70%)-wiśniowy (30%), naturalnie mętny,otrzymany w wyniku tłoczenia miazgi jabłkowej, bez udziału enzymów, filtrowany, pasteryzowany, bez dodatku jakichkolwiek substancji dodatkowych, rozlewany na gorąco w atmosferze azotu i pakowany w systemie bag in box.','Sok jabłkowo-wiśniowy');
insert into product (description, name) values ('Sok Jabłkowo (70%)-wiśniowy (30%), naturalnie mętny,otrzymany w wyniku tłoczenia miazgi jabłkowej, bez udziału enzymów, filtrowany, pasteryzowany, bez dodatku jakichkolwiek substancji dodatkowych, rozlewany na gorąco w atmosferze azotu i pakowany w systemie bag in box.','Sok jabłkowo-wiśniowy');
insert into product (description, name) values ('Sok Jabłkowo (50%)-marchwiowy (50%), naturalnie mętny,otrzymany w wyniku tłoczenia miazgi jabłkowej, bez udziału enzymów, filtrowany, pasteryzowany, bez dodatku jakichkolwiek substancji dodatkowych, rozlewany na gorąco w atmosferze azotu i pakowany w systemie bag in box.','Jabłkowo-marchwiowy');
insert into product (description, name) values ('Sok Jabłkowo (50%)-marchwiowy (50%), naturalnie mętny,otrzymany w wyniku tłoczenia miazgi jabłkowej, bez udziału enzymów, filtrowany, pasteryzowany, bez dodatku jakichkolwiek substancji dodatkowych, rozlewany na gorąco w atmosferze azotu i pakowany w systemie bag in box.','Jabłkowo-marchwiowy');

insert into box (name, description) values ('Karton 3l','Bag-in-box to opakowanie złożone z miękkiego, plastikowego pojemnika umieszczonego wewnątrz tekturowego pudełka z nadrukiem. System ten daje olbrzymie możliwości każdemu, kto produkuje, transportuje i sprzedaje produkty płynne i produkty luzem. ');
insert into box (name, description) values ('Karton 5l', 'Bag-in-box to opakowanie złożone z miękkiego, plastikowego pojemnika umieszczonego wewnątrz tekturowego pudełka z nadrukiem. System ten daje olbrzymie możliwości każdemu, kto produkuje, transportuje i sprzedaje produkty płynne i produkty luzem. ');
insert into box (name, description) values ('Butelka 0,5l','Butelka szklana SOCZEK 500 ml z metalową zakrętką.');

UPDATE product SET price = "10", box_id = 1 WHERE id = 1;
UPDATE product SET price = "15", box_id = 2 WHERE id = 2;
UPDATE product SET price = "18", box_id = 3 WHERE id = 3;
UPDATE product SET price = "18", box_id = 1 WHERE id = 5;
UPDATE product SET price = "18", box_id = 1 WHERE id = 4;

INSERT INTO `role` (`id`, `name`) VALUES (NULL, 'ROLE_USER');
INSERT INTO `role` (`id`, `name`) VALUES (NULL, 'ROLE_ADMIN');

insert into user (city, email, first_name, flat_number, last_name, phone_number, post_code, street, username,password, enabled) values ('Warszwa', 'mail@mateuszstepien.pl','Mateusz', '100', 'Stępień', '534688957','02-699','Pieskowa Skała','admin','$2a$10$fe/5liQqFUlNZHhkht6Dp.ENzKlcQ7UbUhkUiZoIArTRujgWm9GKe',1);
insert into user (city, email, first_name, flat_number, last_name, phone_number, post_code, street, username,password, enabled) values ('Zamosc', 'mail@adamstepien.com','Adam', '43', 'Stępień', '612345987','00-156','Zamkowa','user1', '$2a$10$fe/5liQqFUlNZHhkht6Dp.ENzKlcQ7UbUhkUiZoIArTRujgWm9GKe', 1);
insert into user (city, email, first_name, flat_number, last_name, phone_number, post_code, street, username,password, enabled) values ('Katowice', 'mail@fifi.com','Filip', '50', 'Kowalczyk', '123456789','00-123','Pyszna','user2', '$2a$10$fe/5liQqFUlNZHhkht6Dp.ENzKlcQ7UbUhkUiZoIArTRujgWm9GKe', 1);
insert into user (city, email, first_name, flat_number, last_name, phone_number, post_code, street, username,password, enabled) values ('Poznań', 'pyra@fgmail.com','Łukasz', '70', 'Marzec', '456789123','60-123','Marcinkowskiego','user3','$2a$10$fe/5liQqFUlNZHhkht6Dp.ENzKlcQ7UbUhkUiZoIArTRujgWm9GKe', 1);

insert into user_role (user_id, role_id) VALUES (1,2);
insert into user_role (user_id, role_id) VALUES (2,1);
insert into user_role (user_id, role_id) VALUES (3,1);
insert into user_role (user_id, role_id) VALUES (4,1);