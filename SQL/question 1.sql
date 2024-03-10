
use dev;

CREATE TABLE runner (
    id INT ,
    name VARCHAR(255)
);

CREATE TABLE race (
    id INT,
    event VARCHAR(255),
    winner_id INT
);

INSERT INTO runner (id, name) VALUES
(1, 'Runner1'),
(2, 'Runner2'),
(3, 'Runner3'),
(4, 'Runner4'),
(5, 'Runner5');

select * from runners;

INSERT INTO race (id, event, winner_id) VALUES
(1, 'Race1', 2),
(2, 'Race2', 3),
(3, 'Race3', 2),
(4, 'Race4', null);


select * from race;


SELECT * FROM runner WHERE id NOT IN (SELECT winner_id FROM race);
