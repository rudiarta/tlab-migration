
-- +migrate Up
CREATE TABLE IF NOT EXISTS bahan_makanan (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    resep_id INT UNSIGNED,
    name VARCHAR(100) NOT NULL,
    qty INT NOT NULL,
    FOREIGN KEY (resep_id)
        REFERENCES resep (id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);
-- +migrate Down
DROP TABLE IF EXISTS bahan_makanan;
