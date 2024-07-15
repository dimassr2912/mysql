Limit clause: Membatasi data yang diambil

# Limit
SELECT * FROM products ORDER BY price LIMIT 3;

SELECT * FROM products ORDER BY price LIMIT 0, 2; # 2: skip, 2: limit Digunakan untuk paging di web