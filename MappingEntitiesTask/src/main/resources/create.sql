CREATE database ligaDB;
use ligaDB;

CREATE TABLE items (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    title VARCHAR (20)
)
;
CREATE TABLE characters (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    name VARCHAR (20),
    value INT (20)
)
;
CREATE TABLE item_character (
    item_id INT,
    FOREIGN KEY (item_id)
        REFERENCES items(id)
        ON DELETE CASCADE,
        character_id INT,
    FOREIGN KEY (character_id)
        REFERENCES characters(id)
        ON DELETE CASCADE
)
;