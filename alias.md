Alias: Jika ingin mengubah nama kolom / nama table ketika melakukan SELECT data

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