Operator Arimatika:
    % / MOD, *, +, -, -, /, DIV

# Numeric function
SELECT 10 ,10 , 10 * 10 AS Hasil;

SELECT id, name, price, price DIV 1000 AS 'Prince in K' FROM products;

Matematika function

SELECT id, COS(price), SIN(price), TAN(price) FROM products;

SELECT id, name, price FROM products WHERE price DIV 1000 > 15;

