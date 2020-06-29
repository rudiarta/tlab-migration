
-- +migrate Up
ALTER TABLE bahan_makanan
CHANGE COLUMN name description TEXT NOT NULL;
ALTER TABLE bahan_makanan
DROP COLUMN qty;
-- +migrate Down
