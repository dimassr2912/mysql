insert table: Memasukkan data
INSERT INTO nama_table(<nama_kolom>) VALUES (); -->

Untuk mengambil data: SELECT * FROM products;

Memasukkan data lebih dari satu 
INSERT INTO nama_table(<nama_kolom>) 
VALUES (....),
(....);

# Memasukkan data
INSERT INTO products(id, name, price, quantity)
VALUES('P0001', 'Mie Ayam', 15000, 100);

INSERT INTO products(id, name, description, price, quantity)
VALUES('P0002', 'Mie Ayam Bakso', 20000, 100),
      ('P0003', 'Mie Ayam Ceker', 20000, 100);