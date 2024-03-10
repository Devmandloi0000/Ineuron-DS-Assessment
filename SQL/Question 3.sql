use dev;

-- Create table users
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(255)
);

-- Insert records into users
INSERT INTO users (user_id, user_name) VALUES
(1, 'John'),
(2, 'John Dea'),
(3, 'Alisa'),
(4, 'Lisa');

-- Create table training_detail
CREATE TABLE training_detail (
    user_training_id INT PRIMARY KEY,
    user_id INT,
    training_id INT,
    training_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Insert sample records into training_detail
INSERT INTO training_detail (user_training_id, user_id, training_id, training_date) VALUES
(1, 1, 101, '2024-03-10'),
(2, 2, 102, '2024-03-10'),
(3, 3, 101, '2024-03-11'),
(4, 4, 103, '2024-03-12'),
(5, 1, 101, '2024-03-10'),
(6, 2, 102, '2024-03-10');


SELECT
    u.user_id,
    u.user_name,
    td.training_id,
    COUNT(*) AS lesson_count,
    MAX(td.training_date) AS most_recent_date
FROM
    users u
JOIN
    training_detail td ON u.user_id = td.user_id
GROUP BY
    u.user_id, u.user_name, td.training_id, td.training_date
HAVING
    lesson_count > 1
ORDER BY
    most_recent_date DESC;

