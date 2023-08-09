CREATE TABLE Movies(
    movie_title VARCHAR PRIMARY KEY,
    rating VARCHAR,
    movie_description VARCHAR,
    movie_time TIME,
    length_m VARCHAR
);

CREATE TABLE Tickets(
    ticket_id SERIAL PRIMARY KEY,
    movie_title VARCHAR,
    FOREIGN KEY (movie_title) REFERENCES Movies(movie_title),
    customer_id INTEGER
);

CREATE TABLE Customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    payment_type VARCHAR
);

CREATE TABLE Concessions(
    menu VARCHAR,
    prices INTEGER,
    payment_type VARCHAR PRIMARY KEY
);

ALTER TABLE Tickets
ADD FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);

