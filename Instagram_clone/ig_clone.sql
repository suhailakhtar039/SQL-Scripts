CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users(username) VALUES
('Blue The Cat'),
('CharlieBrown'),
('ColtSteele');

SELECT * FROM users;

CREATE TABLE photos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    comment_text VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id)
        REFERENCES users (id),
    FOREIGN KEY (photo_id)
        REFERENCES photos (id)
);

CREATE TABLE likes (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id)
        REFERENCES users (id),
    FOREIGN KEY (photo_id)
        REFERENCES photos (id),
    PRIMARY KEY (user_id , photo_id)
);

CREATE TABLE follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id)
        REFERENCES users (id),
    FOREIGN KEY (followee_id)
        REFERENCES userd (id),
	PRIMARY KEY(follower_id, followee_id)
);