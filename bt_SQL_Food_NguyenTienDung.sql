USE myFood

CREATE TABLE user (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE restaurant (
    res_id INT PRIMARY KEY AUTO_INCREMENT,
    res_name VARCHAR(255),
    image VARCHAR(255),
    `desc` VARCHAR(255) #Tại sao phải có dấu ngoặc ?
);

CREATE TABLE food_type (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(255)
);

CREATE TABLE food (
    food_id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(255),
    image VARCHAR(255),
    price FLOAT,
    `desc` VARCHAR(255),
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES food_type(type_id)
);

CREATE TABLE sub_food (
    sub_id INT PRIMARY KEY AUTO_INCREMENT,
    sub_name VARCHAR(255),
    sub_price FLOAT,
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

CREATE TABLE `order` (
    user_id INT,
    food_id INT,
    amount INT,
    code VARCHAR(255),
    arr_sub_id VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

CREATE TABLE rate_res (
    user_id INT,
    res_id INT,
    amount INT,
    date_rate DATETIME,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);

CREATE TABLE like_res (
    user_id INT,
    res_id INT,
    date_like DATETIME,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);

INSERT INTO user (full_name, email, password) VALUES 
('John Doe', 'john@example.com', 'password123'),
('Mikami', 'mikami@example.com', 'password456'),
('Jane Smith', 'jane@example.com', 'securepass');

INSERT INTO restaurant (res_name, image, `desc`) VALUES 
('Pizza Place', 'pizza.jpg', 'Best pizza in town'),
('Hambuger Place', 'hambuger.jpg', 'Best hambuger in city'),
('Sushi Bar', 'sushi.jpg', 'Fresh and delicious sushi');

INSERT INTO food_type (type_name) VALUES 
('Pizza'), 
('Hambuger'), 
('Sushi');

INSERT INTO food (food_name, image, price, `desc`, type_id) VALUES 
('Margherita Pizza', 'margherita.jpg', 10.99, 'Classic Margherita Pizza', 1),
('Pepperoni Pizza', 'pepperoni.jpg', 12.99, 'Pepperoni Pizza', 1),
('Margherita Hambuger', 'margheritor.jpg', 15.99, 'Classic Margherita Hambuger', 2),
('Pepperoni Hambuger', 'pepperoniami.jpg', 17.99, 'Pepperoni Hambuger', 2),
('California Roll', 'california.jpg', 8.99, 'California Sushi Roll', 3),
('Spicy Tuna Roll', 'tuna.jpg', 9.99, 'Spicy Tuna Sushi Roll', 3);

INSERT INTO sub_food (sub_name, sub_price, food_id) VALUES 
('Extra Cheese', 2.00, 1),
('Olives', 1.50, 1),
('Avocado', 1.50, 3),
('Spicy Mayo', 1.00, 4);

INSERT INTO `order` (user_id, food_id, amount, code, arr_sub_id) VALUES 
(1, 1, 2, 'ORD001', '1,2'),
(2, 3, 1, 'ORD002', '3');

INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES 
(1, 1, 5, '2024-05-01 12:00:00'),
(2, 2, 4, '2024-05-02 18:30:00');

INSERT INTO like_res (user_id, res_id, date_like) VALUES 
(1, 1, '2024-05-01 12:05:00'),
(2, 2, '2024-05-02 18:35:00');

INSERT INTO user (full_name, email, password) VALUES 
('Alice Johnson', 'alice@example.com', 'alicepassword'),
('Bob Smith', 'bob@example.com', 'bobpassword'),
('Charlie Brown', 'charlie@example.com', 'charliepassword'),
('David Wilson', 'david@example.com', 'davidpassword'),
('Eva Green', 'eva@example.com', 'evapassword'),
('Frank Moore', 'frank@example.com', 'frankpassword'),
('Grace Lee', 'grace@example.com', 'gracepassword'),
('Henry Miller', 'henry@example.com', 'henrypassword'),
('Ivy Adams', 'ivy@example.com', 'ivypassword'),
('Jack White', 'jack@example.com', 'jackpassword');

INSERT INTO like_res (user_id, res_id, date_like) VALUES 
(1, 1, '2024-05-01 12:05:00'),
(2, 2, '2024-05-02 18:35:00'),
(3, 1, '2024-05-03 14:22:00'),
(4, 2, '2024-05-04 16:45:00'),
(5, 1, '2024-05-05 19:30:00'),
(6, 2, '2024-05-06 11:15:00'),
(7, 1, '2024-05-07 13:25:00'),
(8, 2, '2024-05-08 17:50:00'),
(9, 1, '2024-05-09 14:05:00'),
(10, 2, '2024-05-10 12:45:00'),
(11, 1, '2024-05-11 16:35:00'),
(12, 2, '2024-05-12 19:20:00'),
(13, 1, '2024-05-13 11:10:00'),
(1, 2, '2024-05-14 15:40:00'),
(1, 1, '2024-05-15 14:55:00'),
(1, 2, '2024-05-16 18:30:00'),
(1, 1, '2024-05-17 12:25:00'),
(1, 2, '2024-05-18 11:50:00'),
(1, 1, '2024-05-19 15:35:00'),
(2, 2, '2024-05-20 14:20:00'),
(3, 1, '2024-05-21 16:45:00'),
(2, 2, '2024-05-22 18:10:00'),
(4, 1, '2024-05-23 12:05:00'),
(6, 2, '2024-05-24 19:25:00'),
(2, 1, '2024-05-25 11:35:00'),
(2, 2, '2024-05-26 15:50:00'),
(7, 1, '2024-05-27 14:10:00'),
(8, 2, '2024-05-28 12:40:00'),
(9, 1, '2024-05-29 16:55:00'),
(4, 2, '2024-05-30 17:20:00');

INSERT INTO `order` (user_id, food_id, amount, code, arr_sub_id) VALUES 
(1, 1, 2, 'ORD001', '1,2'),
(2, 2, 1, 'ORD002', '3'),
(3, 3, 3, 'ORD003', '4'),
(4, 4, 1, 'ORD004', '5'),
(5, 1, 2, 'ORD005', '1,2'),
(6, 2, 3, 'ORD006', '3,4'),
(7, 3, 1, 'ORD007', '5'),
(8, 4, 2, 'ORD008', '1'),
(9, 1, 1, 'ORD009', '2'),
(10, 2, 2, 'ORD010', '3'),
(1, 3, 3, 'ORD011', '4'),
(2, 4, 1, 'ORD012', '5'),
(3, 1, 2, 'ORD013', '1,2'),
(4, 2, 3, 'ORD014', '3,4'),
(5, 3, 1, 'ORD015', '5'),
(6, 4, 2, 'ORD016', '1'),
(7, 1, 1, 'ORD017', '2'),
(8, 2, 2, 'ORD018', '3'),
(9, 3, 3, 'ORD019', '4'),
(10, 4, 1, 'ORD020', '5');

INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES 
(1, 1, 5, '2024-05-01 12:00:00'),
(2, 2, 4, '2024-05-02 14:30:00'),
(3, 3, 3, '2024-05-03 16:45:00'),
(4, 1, 5, '2024-05-04 18:20:00'),
(5, 2, 4, '2024-05-05 20:10:00'),
(6, 3, 2, '2024-05-06 11:00:00'),
(7, 1, 5, '2024-05-07 13:15:00'),
(8, 2, 4, '2024-05-08 15:40:00'),
(9, 3, 3, '2024-05-09 17:55:00'),
(10, 1, 5, '2024-05-10 19:30:00');


# Tìm 5 người đã like nhà hàng nhiều nhất.
SELECT user_id, COUNT(*) AS like_count
FROM like_res
GROUP BY user_id
ORDER BY like_count DESC
LIMIT 5;

# Tìm 2 nhà hàng có lượt like nhiều nhất.
SELECT res_id, COUNT(*) AS like_count
FROM like_res
GROUP BY res_id
ORDER BY like_count DESC
LIMIT 2;

# Tìm người đã đặt hàng nhiều nhất.
SELECT user_id, COUNT(*) AS so_lan_order
FROM `order`
GROUP BY user_id
ORDER BY so_lan_order DESC
LIMIT 1;

# Tìm người dùng không hoạt động trong hệ thống
SELECT u.user_id, u.full_name, u.email
FROM user u
LEFT JOIN `order` o ON u.user_id = o.user_id
LEFT JOIN like_res lr ON u.user_id = lr.user_id
LEFT JOIN rate_res rr ON u.user_id = rr.user_id
WHERE o.user_id IS NULL 
  AND lr.user_id IS NULL
  AND rr.user_id IS NULL;



