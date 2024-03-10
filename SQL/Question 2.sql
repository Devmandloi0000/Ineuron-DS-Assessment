use dev;
CREATE TABLE test_a (
    id INT
);

INSERT INTO test_a (id) VALUES
(10),
(20),
(30),
(40),
(50);

CREATE TABLE test_b (
    id INT 
);

INSERT INTO test_b (id) VALUES
(10),
(30),
(50);


SELECT a.id
FROM test_a a
LEFT JOIN test_b b ON a.id = b.id
WHERE b.id IS NULL;

