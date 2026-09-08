SELECT UPPER(DeveloperName)
FROM Developers;

SELECT LOWER(DeveloperName)
FROM Developers;

SELECT LENGTH(AppName)
FROM Apps;

SELECT CategoryName,LENGTH(CategoryName) 
From Categories;

SELECT CURRENT_DATE(),CURRENT_TIME();

SELECT ROUND(Rating,0) FROM Apps;

SELECT AppName,LEFT(AppName,5)  As First_5_Characteristics
FROM Apps;

SELECT CONCAT(DeveloperName,' ',Country) 
FROM Developers;

SELECT ROUND(Rating,0) 
FROM Apps;

SELECT CEIL(Price)
FROM Apps;

SELECT DeveloperName,FoundedYear
FROM Developers;

SELECT CONVERT(Downloads,CHAR)
FROM Apps;

SELECT UPPER(AppName),Rating
FROM Apps;

SELECT LEFT(CategoryName,3) As First_3_Characters
FROM Categories;

SELECT PRICE-200 AS 200_difference
FROM Apps;

SELECT DeveloperName,LENGTH(DeveloperName)
FROM Developers;

SELECT CURRENT_DATE(),CURRENT_TIMESTAMP();

SELECT CAST(DeveloperID as CHAR)
FROM Apps;

SELECT CONVERT(DeveloperID,CHAR)
FROM Apps;

