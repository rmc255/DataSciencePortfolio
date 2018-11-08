USE [Pets]
GO

-- Code to see the two tables and compare data.
SELECT *
FROM [dbo].[Pets]
SELECT *
FROM [dbo].[Owners]


-- Left Join with only pets name and owner name.
SELECT [Pets].[Name], [Owners].[Name] as [Owner Name]  
FROM [dbo].[Pets]
LEFT JOIN [dbo].[Owners]
ON [Pets].OwnerId = [Owners].OwnerId

-- Left Join with all columns.P
SELECT *  
FROM [dbo].[Pets]
LEFT JOIN [dbo].[Owners]
ON [Pets].OwnerId = [Owners].OwnerId

-- Left Join where First Letter of pets name matches first letter of Owners Name

SELECT A.[Name], B.[Name] as [Owner Name]  
FROM [dbo].[Pets] AS A
LEFT JOIN [dbo].[Owners] AS B
ON A.OwnerId = B.OwnerId
WHERE LEFT(A.[Name], 1) = LEFT(B.[Name],1)


-- Matching pets and owners with a right join

SELECT A.[Name] AS PetName, B.[Name] as [Owner Name]  
FROM [dbo].[Owners] as B
RIGHT JOIN [dbo].[Pets] AS A
ON A.OwnerId = B.OwnerId
