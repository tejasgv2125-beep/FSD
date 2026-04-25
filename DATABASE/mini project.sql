-- MINI PROJECT [instagram]
CREATE DATABASE instagram_db;
USE instagram_db;
CREATE TABLE users(
	user_id INT PRIMARY KEY,
    username VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE posts (
	post_id INT PRIMARY KEY,
    user_id INT,
    content VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE likes(
	like_id INT PRIMARY KEY,
    user_id INT,
	post_id INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
	FOREIGN KEY(post_id) REFERENCES users(user_id)
);

CREATE TABLE followers (
	follower_id INT,
    following_id INT,
    PRIMARY KEY (follower_id, following_id),
    FOREIGN KEY (follower_id) REFERENCES users(user_id),
    FOREIGN KEY (following_id) REFERENCES users(user_id)
);

/*
users -> Instagram Users
posts -> Posts created by users
likes -> who liked which post
followers -> who follows whom
*/ 
 -- Lets insert some data into all the tables
 INSERT INTO users VALUES
 (1,'Tejas G V','Rajajinagar'),
 (2,'Shreya B G','abbigere'),
 (3,'Jhon','yeshwanthpur'),
 (4,'Adam','tolgate');
    
INSERT INTO posts VALUES 
(1,1,'hiii'),
(2,2,'Hai Prends.'),
(3,1,'Heheheee.'),
(4,3,'Jai Anjaneya.');

INSERT INTO likes VALUES
(1,2,1),
(2,3,1),
(3,1,2),
(4,4,1),
(5,2,3);

INSERT INTO followers VALUES
(2,1), -- Varhishta follows Pranav
(3,1), --  Viju Follows Pranab
(4,1), --  Trupthi Follows Pranav
(1,2), -- Pranav Follows varshitha
(3,2); -- Viju Follows Varshitha

SELECT * FROM users;
SELECT * FROM posts;
SELECT * FROM likes;
SELECT * FROM followers;

-- Display all posts with usernames
SELECT u.username, p.content
FROM posts p
JOIN users u ON p.user_id = u.user_id;

-- Show the number of likes on each post
SELECT p.post_id, COUNT(l.likes_id) AS total_likes
FROM posts p
LEFT JOIN likes l ON p.post_id = l.post_id
GROUP BY p.post_id;

--  Find out who follows whom(Self Join)
SELECT u1.username AS follower, u2.username AS following
FROM followers f
JOIN users u1 ON f.follower_id = u1.user_id
JOIN users u2 ON f.following_id = u2.user_id;


/* For Interview Triggers[Loggin data as soon as any operation is perfiormed in SCHEMA],Index[Faster access O(1)],TCL[Commit,RollBack,Savepoint-{Start Transaction}],Window Function,
Normalization Rules-> 1NF,2NF,3NF,BCNF,
Stored Procedure[User Defined Functions][Delimiters --- Begin,end],Views[Virtual Smaller Tables]
cOMAPNIE lIKE ibm tECH MAHINDRRA,TCS-INFOSYSYS[rEGULAR eXPRESIONS]
*/
