
-- +migrate Up
CREATE TABLE IF NOT EXISTS resep_kategori (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
-- +migrate Down
DROP TABLE IF EXISTS resep_kategori;
