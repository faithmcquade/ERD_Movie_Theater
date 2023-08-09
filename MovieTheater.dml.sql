INSERT INTO movies(
    movie_title,
    rating,
    movie_description,
    length_m
) VALUES (
    'Pulp Fiction',
    'R',
    'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
    '2h 33m'
), (
    'Fury',
    'R',
    '2014 American war film written and directed by David Ayer. It stars Brad Pitt, Shia LaBeouf, Logan Lerman, Michael Peña, and Jon Bernthal; all members of an American tank crew fighting in Nazi Germany during the final weeks of the European theater of World War II.',
    '2hr 14m'
), (
    'The Godfather',
    'R',
    'The Godfather is set in the 1940s and takes place entirely within the world of the Corleones, a fictional New York Mafia family.',
    '2hr 55m'
), (
    'A Bronx Tale',
    'R',
    'A boy comes of age in an Italian-American neighborhood in the Bronx.',
    '2hr 2m'
);

UPDATE Movies SET movie_time = NULL WHERE movie_time IS NULL;
UPDATE Movies SET movie_time = TIME '5:00' WHERE movie_title = 'Pulp Fiction';
UPDATE Movies SET movie_time = TIME '6:00' WHERE movie_title = 'Fury';
UPDATE Movies SET movie_time = TIME '7:00' WHERE movie_title = 'The Godfather';
UPDATE Movies SET movie_time = TIME '8:00' WHERE movie_title = 'A Bronx Tale';

INSERT INTO Tickets(
    movie_title,
    movie_time
) VALUES 
    ('Pulp Fiction', TIME '5:00'),
    ('Fury', TIME '6:00'),
    ('The Godfather', TIME '7:00'),
    ('A Bronx Tale', TIME '8:00');

SELECT*
FROM tickets;


INSERT INTO Customers(
    first_name,payment_type
) VALUES 
    ('Faith', 'cash'),
    ('Andrew', 'card'),
    ('Josh', 'gift card');

SELECT*
FROM Customers;

INSERT INTO Concessions(
    menu,
    prices,
    payment_type
) VALUES 
    ('popcorn', 7, 'gift card'),
    ('candy', 6, 'cash'),
    ('soda', 4, 'card');


