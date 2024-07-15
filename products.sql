# Melihat semua database
SHOW DATABASES;

# Membuat database
CREATE DATABASE belajar_mysql;

# Memilih database
use belajar_mysql;

# Menghapus database
DROP database belajar_mysql;

# Daftar store engine
SHOW ENGINES;

# Melihat table
SHOW TABLES;

# Membuat table
CREATE TABLE products
(
    name VARCHAR(10) NOT NULL,
    id VARCHAR(10) NOT NULL,
    description TEXT,
    price INT NOT NULL DEFAULT 0,
    quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE = InnoDB;

# Melihat struktur table
DESCRIBE products;
DESC products;
SHOW CREATE TABLE products;

# Mengubah table
ALTER TABLE products
    ADD COLUMN nama TEXT;

ALTER TABLE products
    RENAME COLUMN nama TO nama_column;

ALTER TABLE products
    DROP COLUMN nama_column;

ALTER TABLE products
    MODIFY name VARCHAR(100);

ALTER TABLE products
    MODIFY id VARCHAR(100) FIRST;

# Membuat ulang table
TRUNCATE products;

# Menghapus table
DROP TABLE products;

# Memasukkan data
INSERT INTO products(id, name, price, quantity)
VALUES('P0001', 'Mie Ayam', 15000, 100);

INSERT INTO products(id, name, description, price, quantity)
VALUES('P0002', 'Mie Ayam Bakso', 20000, 100),
      ('P0003', 'Mie Ayam Ceker', 20000, 100);

# Mengambil data
SELECT  * FROM products;
SELECT id, price, quantity FROM products;

# Menambahkan primary key
ALTER TABLE products ADD PRIMARY KEY(id);

# Mencari data
SELECT id, name, quantity, price FROM products WHERE id = 'P0001';

ALTER TABLE products ADD COLUMN category ENUM('Makanan', 'Minuman', 'Lain-lain') AFTER name;

# Update data
UPDATE products SET category = 'Makanan' WHERE id = 'P0001';
UPDATE products SET category = 'Makanan',
                    description = 'Mie Ayam + Ceker'
                WHERE id = 'P0001';

UPDATE products SET price = price + 5000 WHERE id = 'P0004';

# Delete data
DELETE FROM products WHERE id = 'P0005';

# Alias kolom
SELECT id AS kode,
       name AS nama,
       category AS kategori,
       description AS deskripsi,
       price AS harga,
       quantity AS stok,
       created_at AS "kapan dibuat"
FROM products;

# Alias untuk table
SELECT p.id AS kode,
       p.name AS nama,
       p.category AS kategori,
       p.description AS deskripsi,
       p.price AS harga,
       p.quantity AS stok,
       p.created_at AS "kapan dibuat"
FROM products AS p;

# WHERE Operator
SELECT * FROM products WHERE price <= 10000;

SELECT * FROM products WHERE price > 10000 AND category = 'Makanan';

SELECT * FROM products WHERE price > 10000 OR quantity = 200;

SELECT * FROM products WHERE (price >= 15000 OR category = 'Makanan') AND quantity = 100;

SELECT * FROM products WHERE category LIKE 'Mak%';

SELECT * FROM products WHERE name LIKE '%mie%';

SELECT * FROM products WHERE description IS NULL;

SELECT * FROM products WHERE description IS NOT NULL;

SELECT * FROM products WHERE price BETWEEN 10000 AND 20000;

SELECT * FROM products WHERE price NOT BETWEEN 10000 AND 20000;

SELECT * FROM products WHERE category IN ('Makanan', 'Minuman');

SELECT * FROM products WHERE category NOT IN ('Makanan', 'Minuman');

# ORDER by Clause
SELECT id, name, category, price FROM products ORDER BY category;

SELECT id, name, category, price FROM products ORDER BY category ASC, price DESC;

# Limit
SELECT * FROM products ORDER BY price LIMIT 3;

SELECT * FROM products ORDER BY price LIMIT 0, 2; # 2: skip, 2: limit Digunakan untuk paging di web

# Distinct
SELECT DISTINCT category FROM products;

# Numeric function
SELECT 10 ,10 , 10 * 10 AS Hasil;

SELECT id, name, price, price DIV 1000 AS 'Prince in K' FROM products;

SELECT id, COS(price), SIN(price), TAN(price) FROM products;

SELECT id, name, price FROM products WHERE price DIV 1000 > 15;