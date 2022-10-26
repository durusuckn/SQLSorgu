--actor ve customer tablolarında bulunan 
--first_name sütunları için tüm verileri sıralayalım.
(
SELECT first_name FROM actor
ORDER BY  first_name)
UNION
(
	SELECT first_name FROM customer
	ORDER BY first_name
);
--actor ve customer tablolarında bulunan first_name sütunları 
--için kesişen verileri sıralayalım.

(
	SELECT first_name FROM actor
	
)
INTERSECT
(
	SELECT first_name FROM customer
);

--actor ve customer tablolarında bulunan first_name sütunları için 
--ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım

(
	SELECT first_name FROM actor
	
)
EXCEPT
(
	SELECT first_name FROM customer
);

--İlk 3 sorguyu tekrar eden veriler için de yapalım.
--actor ve customer tablolarında bulunan 
--first_name sütunları için tüm verileri sıralayalım.
(
SELECT first_name FROM actor
ORDER BY  first_name)
UNION ALL
(
	SELECT first_name FROM customer
	ORDER BY first_name
);

(
	SELECT first_name FROM actor
	
)
INTERSECT ALL
(
	SELECT first_name FROM customer
);


(
	SELECT first_name FROM actor
	
)
EXCEPT ALL
(
	SELECT first_name FROM customer
);
