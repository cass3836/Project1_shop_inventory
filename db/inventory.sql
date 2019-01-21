DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists(
  id SERIAL2 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE albums(
  id SERIAL2 PRIMARY KEY,
  title VARCHAR(255),
  buying_cost FLOAT,
  price FLOAT,
  artist_id INT2 REFERENCES artists(id) ON DELETE CASCADE,
  stock INT
);
