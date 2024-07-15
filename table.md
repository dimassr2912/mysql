Storage engines: Melakukan pengolahan data
    Yang paling populer adalah InnoDB
    SHOW ENGINES: untuk melihat engines yang ada di mysql

Melihat table:
SHOW DATABALES; 

Membuat table:
CREATE TABLE barang 
(
    id  INT,
    nama VARCHAR(100),
    harga INT,
    jumlah INT 
)  Engine = InnoDB

Melihat struktur table:
DESCRIBE <nama_table>
DESC <nama_table>
SHOW CREATE TABLE <nama_table>: Melihat dalam syntax

Mengubah table:
ALTER TABLE barang
    ADD COLUMN <nama_kolom> TEXT,
    DROP COLUMN <nama_kolom>,
    MODIFY nama VARCHAR(200),
    MODIFY nama AFTER deskripsi,
    MODIFY nama FIRST;

Null: Tidak memberi nilai pada kolom
    Jika tidak boleh Null: id INT NOT NULL
Atau ALTER TABLE barang
    MODIFY id INT NOT NULL

Bisa memberikan nilai default: .... DEFAULT <nilai>
    Untuk timestamp, nilai defaultnya: CURRENT_TIMESTAMP

Membuat ulang table tanpa menghapus table: TRUNCATE <nama_table>

Menghapus table: DROP TABLE <nama_table>