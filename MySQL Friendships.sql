-- Insert some people..
INSERT INTO users(first_name,last_name,created_at, updated_at)
VALUES('Tom', 'Clark', NOW(), NOW());

INSERT INTO users(first_name,last_name,created_at, updated_at)
VALUES('Sam', 'Smith', NOW(), NOW());

INSERT INTO users(first_name,last_name,created_at, updated_at)
VALUES('Mark', 'Thomas', NOW(), NOW());

INSERT INTO users(first_name,last_name,created_at, updated_at)
VALUES('Bob', 'Cross', NOW(), NOW());

INSERT INTO users(first_name,last_name,created_at, updated_at)
VALUES('Storm', 'Trumpy', NOW(), NOW());

-- Created the friendships: 
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('6', '7', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('6', '4', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('6', '8', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('7', '5', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('7', '3', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('7', '4', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('7', '8', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('8', '4', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('8', '1', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('8', '5', NOW(), NOW());
INSERT INTO friendships(user_id,friend_id,created_at, updated_at)
VALUES('8', '6', NOW(), NOW());

SELECT * FROM friendships;
SELECT * FROM users;
-- ^^ Just to be able to run this and check my tables when needed

SELECT users.id, users.first_name, users.last_name, user2.first_name AS friend_first, user2.last_name AS friend_last FROM users
LEFT JOIN friendships ON friendships.user_id = users.id
LEFT JOIN users as user2 ON user2.id = friendships.friend_id
ORDER BY friend_last;