DELETE FROM health_facilities WHERE id=5;

DELETE FROM employee WHERE phone_number='0740173934';

DELETE FROM employee WHERE employee_id IN 
(
	SELECT employee_id FROM atractions WHERE id=
	(
		SELECT id FROM atractions WHERE name='Muzeul Național de Artă'
	)
);

DELETE FROM atractions
WHERE start_date>='2023-05-01' AND end_date<='2023-05-06';