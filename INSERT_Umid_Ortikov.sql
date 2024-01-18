CREATE TABLE film(
	film_id SERIAL PRIMARY KEY,
	title CHAR(255),
	rental_rate DECIMAL(4,2),
	rental_duration INT
	
)
CREATE TABLE actor (
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL
)

CREATE TABLE film_actor (
    film_actor_id SERIAL PRIMARY KEY,
    actor_id INT NOT NULL,
    film_id INT NOT NULL,
    FOREIGN KEY (actor_id) REFERENCES actor(actor_id),
    FOREIGN KEY (film_id) REFERENCES film(film_id)
)

CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY,
    film_id INT NOT NULL,
    store_id INT NOT NULL,
    FOREIGN KEY (film_id) REFERENCES film(film_id)
)

INSERT INTO film (title, rental_rate, rental_duration)
VALUES ('Interstellar', 4.99, 14);

INSERT INTO actor (first_name, last_name)
VALUES ('Matthew', 'McConaughey'),
       ('Anne', 'Hathaway'),
       ('Jessica', 'Chastain');
