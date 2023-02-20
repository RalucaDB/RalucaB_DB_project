SELECT * FROM employee;

SELECT first_name AS "Nume angajat", last_name AS "Prenume angajat", phone_number AS "Nr. telefon", NOW() AS "Data raport" FROM employee;

SELECT first_name AS "Nume angajat", last_name AS "Prenume angajat", email_address AS "Contact", NOW() "Data raport" FROM employee;

SELECT first_name "Nume angajat", last_name "Prenume angajat", email_address "Contact", NOW() "Data raport" FROM employee as e;

SELECT first_name, last_name, phone_number "Nr. telefon", NOW() "Data raport", (id*3)/2 as "Id angajat" FROM employee;

--filtrare rezultate cu WHERE

SELECT * FROM employee WHERE id=3;

SELECT first_name, last_name, phone_number FROM employee WHERE id=4;

SELECT first_name, last_name, sex, age FROM employee WHERE id=2;

SELECT * FROM  employee WHERE id in (3,1,4);

SELECT * FROM  employee WHERE id > 3;

SELECT * FROM  employee WHERE id >= 3;

SELECT * FROM  employee WHERE id <= 3;

SELECT * FROM  employee WHERE id=2 AND first_name='Ionescu';

SELECT * FROM  employee WHERE id=1 OR last_name='Mihai';

SELECT * FROM  employee WHERE id !=3 OR first_name='Ionescu';
SELECT * FROM  employee WHERE id <> 3 OR first_name='Ionescu';

SELECT * FROM  employee WHERE id not in (3,2);

SELECT * FROM  employee WHERE last_name in ('Andrei');
SELECT * FROM  employee WHERE last_name not in ('Andrei');

SELECT * FROM  employee WHERE (last_name='Maria' and id>1) or (id=4) AND adress='Bulevardul Corneliu Coposu, nr.22';

SELECT * FROM  employee WHERE last_name LIKE('%r%');

SELECT * FROM  employee WHERE first_name LIKE('P%');

SELECT * FROM  employee WHERE adress LIKE('%Co%');

SELECT first_name "Nume angajat", last_name "Prenume angajat", phone_number "Contact", NOW() "Data raport" FROM employee as e
WHERE first_name='Popescu';

SELECT first_name "Nume angajat", e.last_name "Prenume angajat", phone_number "Contact", NOW() "Data raport" FROM employee as e
WHERE e.last_name='Maria';

SELECT employee.first_name AS "Nume angajat", employee.last_name AS "Prenume angajat", employee.adress AS "Adresa", NOW() AS "Data raport" FROM employee;

SELECT e.first_name AS "Nume angajat", e.last_name AS "Prenume angajat", e.phone_number AS "Nr. telefon", NOW() AS "Data raport" FROM employee as e;

CREATE TABLE IF NOT EXISTS employee_extended AS
SELECT first_name AS "Nume angajat", last_name AS "Prenume angajat", adress AS "Adresa", NOW() AS "Data raport" FROM employee;

CREATE VIEW employee_extended_view AS
SELECT first_name AS "Nume angajat", last_name AS "Prenume angajat", phone_number AS "Nr. telefon", NOW() AS "Data raport" FROM employee;
SELECT * FROM employee_extended_view;

SELECT *, now() as "Acum" FROM  members;

SELECT first_name, origin_country, age FROM
(
	select *, now() as "Acum" FROM  members
) as temp;

SELECT * FROM employee WHERE id IN --STEP 3
(
	SELECT employee_id FROM atractions WHERE id=  --STEP 2
	(
		SELECT id FROM atractions WHERE name='Muzeul Național de Artă' --STEP 1
	)
);


