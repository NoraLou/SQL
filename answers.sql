-- Problem 1
SELECT * from salespeople

-- Problem 2
SELECT* FROM salespeople WHERE region = 'Northwest';

-- Problem 3
SELECT email FROM salespeople WHERE region = 'Southwest';

-- Problem 4
SELECT givenname,surname,email FROM salespeople WHERE region = 'Northwest';

-- Problem 5
SELECT common_name FROM melons WHERE price > 5;

-- Problem 6
SELECT melon_type, common_name FROM melons WHERE price >= 5 and melon_type = 'Watermelon'

-- Problem 7
SELECT common_name FROM melons WHERE common_name LIKE 'C%';

-- Problem 8
SELECT common_name FROM melons WHERE common_name LIKE '%Golden%'

-- Problem 9
SELECT DISTINCT region FROM salespeople;

-- Problem 10
SELECT email FROM salespeople WHERE region = 'Northwest' or region ='Southwest';

-- Problem 11
SELECT email FROM salespeople WHERE region IN ('Northwest', 'Southwest');

-- Problem 12
SELECT email, givenname, surname FROM salespeople WHERE surname LIKE 'M%' and region IN ('Northwest', 'Southwest');

-- Problem 13
SELECT melon_type, common_name, price, price*0.735693 AS Euros from melons;

-- Problem 14
SELECT COUNT(*) FROM customers;

-- Problem 15
SELECT COUNT(*) FROM orders WHERE shipto_state = 'CA';

-- Problem 16
SELECT sum(order_total) FROM orders;

-- Problem 17
SELECT AVG(order_total) FROM orders;

-- Problem 18
SELECT MIN(order_total) from orders;

-- Problem 19
SELECT id FROM customers WHERE email ='phyllis@demizz.edu';

-- Problem 20
SELECT id, status, order_total FROM orders WHERE customer_id = '100'

-- Problem 21
SELECT id, status, order_total FROM orders WHERE customer_id = (SELECT id FROM customers WHERE email = 'phyllis@demizz.edu');

-- Problem 22
SELECT id, status, order_total FROM orders WHERE customer_id = (SELECT id FROM customers WHERE email = 'phyllis@demizz.edu');

-- Problem 23
SELECT* FROM order_items WHERE order_id = '2725';

-- Problem 24
SELECT common_name, melon_type, quantity, unit_price, total_price FROM melons JOIN order_items ON (order_items.melon_id = melons.id) WHERE order_id = 2725;

-- Problem 25
SELECT SUM(order_total) FROM orders WHERE salesperson_id IS NULL;

-- Problem 26
SELECT givenname, surname, SUM(order_total), SUM(order_total) *.15 AS Commision FROM salespeople JOIN orders ON (salespeople.id = orders.salesperson_id) GROUP BY salespeople.id;

