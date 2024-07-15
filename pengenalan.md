Sistem basis data (Database management system): Aplikasi untuk memanage data
DBMS biasa berjalan di server (hosting / cloud)
    kita hanya perlu memberi perintah untuk management data, CRUD

Jenis DBMS: Relational Database, Document database, Key-value database

Cara kerja DBMS: Database client mengirim perinah ke -> DBMS, akan menyimpan file di -> Database file
s
DBMS menyimpan data berupa file (Kasus realnya, install dbms di sistem (hosting / cloud) database file juga disimpan di sistem)

    Database client: Aplikasi (Web / desktop) untuk connect ke DBMS dengan mengrim perintah SQL
    Database file: Mayoritas disimpan di file, walaupun ada beberapa db yang disimpan di RAM
    SQL: bahasa yang digunakan untuk mengirim perintah ke DBMS

Masuk ke mysql client: mysql -uroot -p
    Digunakan untuk berkomunikasi dengan mysql server