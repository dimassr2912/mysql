# Update data
UPDATE products SET category = 'Makanan' WHERE id = 'P0001';
UPDATE products SET category = 'Makanan',
                    description = 'Mie Ayam + Ceker'
                WHERE id = 'P0001';

UPDATE products SET price = price + 5000 WHERE id = 'P0004';