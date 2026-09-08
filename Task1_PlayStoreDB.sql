-- CREATE DATABASE PlayStoreDB;
USE PlayStoreDB;

CREATE TABLE Developers
(
   DeveloperID INT PRIMARY KEY,
   DeveloperName VARCHAR(60) NOT NULL,
   Country VARCHAR(30),
   FoundedYear INT
   ); 

CREATE TABLE Publishers
(         
   PublisherID INT PRIMARY KEY,
   PublisherName VARCHAR(60),
   Headoffice VARCHAR(40),
   SupportEmail VARCHAR(60)
   );

CREATE TABLE Categories
(
   CategoryID INT PRIMARY KEY,
   CategoryName VARCHAR(40),
   MinimumAge INT
);
CREATE TABLE Apps
(
	AppID INT PRIMARY KEY,
    AppName VARCHAR(60),
    DeveloperID INT,
    PublisherID INT,
    CategoryID INT,
    Rating DECIMAL(2,1),
    Downloads INT,
    Price DECIMAL(6,2)
);

INSERT INTO Developers
VALUES
(101, 'Google LLC ','USA' ,1998),
(102 ,'Meta Platforms' ,'USA',2004),
(104 ,'Canva Pty Ltd', 'Australia', 2012),
(103,' Spotify AB', 'Sweden' ,2006),
(105 ,'BYJU''S' ,'India',2011);



INSERT INTO Publishers
VALUES
(201,'Google Play',' California','support@google.com'),
(202 ,'Samsung Galaxy Store ','Seoul','support@samsung.com'),
(203,'Huawei AppGallery','Shenzhen','support@huawei.com'),
(204,'Amazon Appstore','Seattle','support@amazon.com');

INSERT INTO Categories
VALUES
(301,'Education', 3),
(302,'Productivity',3),
(303,'Music',12),
(304,'Social',13),
(305,'Gaming',16);

INSERT INTO Apps
VALUES
(1001,'GoogleClassroom',101 ,201 ,301 ,4.6 ,500000000,0),
(1002,'GoogleKeep', 101, 201 ,302 ,4.5, 1000000000,0),
(1003, 'Instagram ',102 ,201 ,304, 4.4, 5000000000, 0),
(1004,'Spotify',103 ,201, 303, 4.5 ,1000000000,0),
(1005,'Canva', 104 ,201, 302 ,4.7 ,500000000, 0),
(1006 ,'BYJUS Learning',105 ,201, 301 ,4.3 ,100000000, 0),
(1007 ,'CandyCrush', 102 ,204 ,305 ,4.6, 1000000000,0),
(1008,' Temple Run',104, 203, 305 ,4.2 ,500000000, 0);

ALTER TABLE Apps
MODIFY Downloads BIGINT;

SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps; 

DESC Apps;

INSERT INTO Developers
VALUES
(106,'OPENAI','USA',2026);

SELECT * FROM Developers;

INSERT INTO Categories
VALUES
(306,'Artificial Intelligence',12);

SElECT * FROM Categories;

INSERT INTO Apps
VALUES
(1009,'ChatGPT',106,201,306,4.8,100000000,0);

SELECT * FROM Apps;

UPDATE Apps 
SET Rating=4.5
WHERE  AppID=1008;

SELECT * FROM Apps;

DELETE FROM Developers
WHERE DeveloperID=105;

SELECT * FROM Developers;

UPDATE Publishers
SET SupportEmail = 'support@galaxystore.com'
WHERE PublisherID=202;

SELECT * FROM Publishers;

INSERT INTO Apps
VALUES
(1010, 'Microsoft Teams', 106, 201, 301, 4.5, 500000000, 0),
(1011, 'AI Notes', 106, 201, 306, 4.4, 10000000, 99);

DELETE FROM Categories
WHERE CategoryID=202;


SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps;










   
   