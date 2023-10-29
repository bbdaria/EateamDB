CREATE DATABASE EateamDB;

CREATE TABLE faculty(
facultyId TINYINT PRIMARY KEY NOT NULL,
facultyName VARCHAR(255)
);

CREATE TABLE users(

userId INT PRIMARY KEY NOT NULL,
userType TINYINT NOT NULL, 
name VARCHAR(255) NOT NULL,
mail VARCHAR(255) NOT NULL,
phoneNumber VARCHAR(255) NOT NULL,
birthDate DATE NOT NULL,
gender TINYINT NOT NULL,
password VARCHAR(255) NOT NULL,
isAvailable TINYINT NOT NULL, 
faculty TINYINT NOT NULL,
FOREIGN KEY (faculty) REFERENCES faculty(facultyId));

CREATE TABLE blacklistedUsers(
actionId INT PRIMARY KEY NOT NULL,
blockerId INT NOT NULL,
FOREIGN KEY (blockerId) REFERENCES users(userId),
blockeeId INT NOT NULL,
FOREIGN KEY (blockeeId) REFERENCES users(userId)
);

CREATE TABLE meetings(
meetingId INT PRIMARY KEY NOT NULL,
member1 INT NOT NULL,
FOREIGN KEY (member1) REFERENCES users(userId),
member2 INT NOT NULL,
FOREIGN KEY (member2) REFERENCES users(userId),
member3 INT,
FOREIGN KEY (member3) REFERENCES users(userId),
member4 INT,
FOREIGN KEY (member4) REFERENCES users(userId),
member5 INT,
FOREIGN KEY (member5) REFERENCES users(userId),
location VARCHAR(255) NOT NULL,
meetingDate DATE NOT NULL,
 -- rating TINYINT,???????
meetingTime TIME NOT NULL
)



