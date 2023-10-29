CREATE DATABASE EateamDB;

CREATE TABLE userTypes(
typeId TINYINT PRIMARY KEY NOT NULL,
typeName VARCHAR(255) NOT NULL
);

CREATE TABLE faculty(
facultyId TINYINT PRIMARY KEY NOT NULL,
facultyName VARCHAR(255) NOT NULL
);

CREATE TABLE users(

userId INT PRIMARY KEY NOT NULL,
userType TINYINT NOT NULL, 
FOREIGN KEY (userType) REFERENCES userTypes(typeId),
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
location VARCHAR(255) NOT NULL,
meetingDate DATE NOT NULL,
meetingTime TIME NOT NULL
);

CREATE TABLE memberRating(
meetingId INT NOT NULL,
FOREIGN KEY(meetingId) REFERENCES meetings(meetingId),
userId INT NOT NULL,
FOREIGN KEY(userId) REFERENCES users(userId),
rating TINYINT 
);





