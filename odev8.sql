CREATE TABLE employee(
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
birthday DATE,
email VARCHAR(100)
);
insert into employee (id, name, email, birthday) values (1, 'Ber Lamy', 'blamy0@businessweek.com', '2008-05-01')
...

SET name='DURU SU CAKAN',
birthday='1998-08-04',
email='cakandurusu@gmail.com'
WHERE id=1
RETURNING *

UPDATE employee 
SET name='Emrah Serbes',
birthday='1988-04-03',
email='emrahserbes@gmail.com'
WHERE id=5
RETURNING *

UPDATE employee 
SET name='Nil Kara',
email='nilkara@gmail.com'
WHERE id=5
RETURNING *

UPDATE employee 
SET
birthday='1988-09-03',
email='cakandurusu@gmail.com'
WHERE id=8
RETURNING *

UPDATE employee 
SET
birthday='1988-12-03',
email='hellu@gmail.com'
WHERE id=9
RETURNING *

DELETE FROM employee
WHERE id=10;

DELETE FROM employee
WHERE name="DURU SU CAKAN"

DELETE FROM employee
WHERE birthday=1986-08-03

DELETE FROM employee
WHERE email='cakandurusu@gmail.com'

DELETE FROM employee
WHERE id=1
