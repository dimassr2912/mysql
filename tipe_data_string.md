Tipe data string: 
   CHAR 
        CHAR(4) maka penggunaan memori akan 4 bytes
        Berapapun isinya, akan memakai 4 bytes
   VARCHAR 
        VARCHAR(4) maka penggunaan memori akan 5 bytes, 1 untuk tambahan informasi
        Lebih fleksibel, jika diset 4, tetapi isinya cuma 1, maka akan 2 bytes
    TEXT (Fix ukurannya)
        TINYTEXT
        TEXT
        MEDIUMTEXT
        LONGTEXT
    ENUM: Ditentukan pilihannya
        ENUM('Pria', 'Wanita'), selain itu akan ditolak