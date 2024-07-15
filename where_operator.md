Operator perbandingan:
    =, <> / !=, >, >=, <, <=
SELECT * FROM products WHERE price <= 10000;

AND dan OR operator
    Prioritas adalah AND dulu
SELECT * FROM products WHERE price > 10000 AND category = 'Makanan';

SELECT * FROM products WHERE price > 10000 OR quantity = 200;

SELECT * FROM products WHERE (price >= 15000 OR category = 'Makanan') AND quantity = 100

LIKE: Mencari sebagai data dari string (Tidak disarankan digunakan jika data besar, karena akan lambat)
    LIKE %b: String dengan akhiran b
    LIKE b%: String dengan awalan b
    LIKE %rama%: string berisi rama
    NOT LIKE: Tidak LIKE
SELECT * FROM products WHERE category LIKE 'Mak%';

SELECT * FROM products WHERE name LIKE '%mie%';

NULL operator: 
    IS NULL: Mencari yang null
    IS NOT NULL: Mencari yang tidak null
SELECT * FROM products WHERE description IS NULL;

SELECT * FROM products WHERE description IS NOT NULL

Between operator:
    Untuk alternatif mencari dua perbandingan: price > 20 AND price < 30
SELECT * FROM products WHERE price BETWEEN 10000 AND 20000;

SELECT * FROM products WHERE price NOT BETWEEN 10000 AND 20000

IN operator: Melakukan pencarian kolom dengan beberapa nilai
SELECT * FROM products WHERE category IN ('Makanan', 'Minuman');

SELECT * FROM products WHERE category NOT IN ('Makanan', 'Minuman')
