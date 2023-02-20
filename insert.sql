--INSERT DATA INTO TABLE AFTER CREATE
INSERT INTO neighborhood(name) VALUES
					('Cetate'),
					('Calea Sagului'),
					('Iosefin'),
					('Fabric'),
					('Mehala'),
					('Circumvalatiunii'),
					('Modern'),
					('Calea Martirilor'),
					('Elisabetin'),
					('Braytim');
					
INSERT INTO employee(first_name, last_name, adress, phone_number, sex, age, email_address)
VALUES
	('Popescu','Andrei','Bulevardul Vasile Parvan, nr.4','0740173956','M','26','p.andrei@yahoo.com'),
	('Ionescu','Maria','Bulevardul Corneliu Coposu, nr.30','0740173934','F','40','i.maria@gmail.com'),
	('Pop','Mihai','Bulevardul Vasile Parvan, nr.25','0740176745','M','30','mihai.p@yahoo.com'),
	('Gliga','Elena','Bulevardul Corneliu Coposu, nr.22','0740172345','F','31','gliga.elena@gmail.com');

INSERT INTO members(first_name, last_name, origin_country, age, email_address)
VALUES
	('Smith','Ruth','UK','26','smith.r@yahoo.com'),
	('Moore','Greta','Germany','40','greta.moore@yahoo.com'),
	('Toth','Tunde','Hungary','20','tunde.t@gmail.com'),
	('Zielonka','Igor','Poland','25','igor.zie@gmail.com'),
	('Mencia','Ilaria','Italy','57','ilaria.m@yahoo.com');

INSERT INTO parks(name, neighborhood_id, employee_id)
VALUES
	('Parcul Rozelor','1','4'),
	('Parcul Copiilor','1','2'),
	('Parcul Regina Maria','3','3'),
	('Parcul Andrei Mocioni','5','2'),
	('Parcul Catedralei','5','1'),
	('Parcul Central Anton von Scudier','4','1'),
	('Parcul Civic','2','3'),
	('Parcul Botanic','3','4');
	
INSERT INTO water_fountains(adress, neighborhood_id, employee_id)
VALUES
	('Calea Bogdăneștilor 2','3','4'),
	('Strada Coriolan Brediceanu 1','1','3'),
	('Strada Gheorghe Baritiu 4','3','3'),
	('Strada Garofiței 4','5','2'),
	('Strada Drubeta 99','5','1'),
	('Aleea F. C. Ripensia 7','4','2'),
	('Strada Foișor 2','2','3'),
	('Piața Traian 4','3','4');
	
INSERT INTO health_facilities(name, adress, type, neighborhood_id, employee_id)
VALUES
	('Spitalul Clinic Județean de Urgență "Pius Brînzeu" Timișoara','Bulevardul Liviu Rebreanu 156','hospital','2','4'),
	('Spitalul Clinic Municipal de Urgență Timisoara','Strada Gheorghe Dima 5','hospital','1','3'),
	('Spitalul Militar de Urgență Dr. Victor Popescu','Strada Gheorghe Lazăr 7','hospital','3','2'),
	('Spitalul Clinic de Urgență pentru Copii Louis Țurcanu Timișoara','Strada Doctor Iosif Nemoianu 2','hospital','1','1'),
	('Regina Maria','Strada Aristide Demetriade 1','private clinic','3','1'),
	('Centrul Medical Dr. Pirjol','Str. Mareșal Constantin Prezan 83',' private clinic','2','1');

INSERT INTO atraction_type (type) VALUES
					('Art'),
					('Museum'),
					('Food'),
					('Music'),
					('Sporting events'),
					('Statues and Monuments'),
					('Tours'),
					('Performances/Entertainment');
					
INSERT INTO atractions(name, adress, neighborhood_id, atraction_type, start_date, end_date, employee_id)
VALUES
	('Muzeul Național de Artă','Piața Unirii 1','1','2','2023-01-01','2024-01-01','1'),
	('Muzeul Național al Banatului (Bastion)','Strada Martin Luther 4','5','2','2023-05-01','2023-05-06','3'),
	('Muzeul Satului Bănățean','Strada Avram Imbroane 1','4','2','2023-04-01','2023-04-09','2'),
	('Catedrala Mitropolitană Ortodoxă','Bulevardul Regele Ferdinand I','6','2','2023-01-01','2024-01-01','1'),
	('Opera Națională Română ','Piața Victoriei','4','2','2023-01-01','2024-01-01','4'),
	('Galeria Jecza','Calea Martirilor 1989 51/52','6','2','2023-03-01','2023-03-03','2');				

INSERT INTO atraction_rating_employee(rating, employee_id, atraction_id)
VALUES
	('9','4','1'),
	('10','1','2'),
	('8','2','4'),
	('7','3','3'),
	('9','4','5'),
	('10','2','6'),
	('6','4','2'),
	('9','3','1');

INSERT INTO atraction_rating_members(rating, members_id, atraction_id)
VALUES
	('9','4','1'),
	('10','1','2'),
	('8','2','4'),
	('7','3','3'),
	('9','2','5'),
	('10','2','6'),
	('6','5','2'),
	('9','5','1');
							
SELECT * FROM atraction_rating_members;