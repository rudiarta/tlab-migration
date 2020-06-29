
-- +migrate Up
CREATE TABLE IF NOT EXISTS resep (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    kategori_id INT UNSIGNED NOT NULL,
    name VARCHAR(100) NOT NULL,
    FOREIGN KEY (kategori_id)
        REFERENCES resep_kategori (id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);
-- +migrate Down
DROP TABLE IF EXISTS resep;
