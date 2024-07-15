# Auto increment
CREATE TABLE Admin(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULLPT Integra Indocabinet (Integra Group) Tbk,
    last_name VARCHAR(100) NOT NULl,
    PRIMARY KEY(id)
)ENGINE = InnoDB;

DESC Admin;

INSERT INTO Admin(first_name, last_name) VALUES("Dimas", "Ramadhansyah");
INSERT INTO Admin(first_name, last_name) VALUES("Ira", "Putri");
SELECT * FROM Admin;

SELECT LAST_INSERT_ID() # Untuk melihat id yang terakhir