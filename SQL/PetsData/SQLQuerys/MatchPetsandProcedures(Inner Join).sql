USE [Pets]
GO

-- VIEW OF RESPECTIVE TABLES PRIOR TO QUERIES
SELECT * 
FROM [dbo].[Pets]

SELECT *
FROM [dbo].[ProceduresHistory]

-- MATCHING PROCEDURES TO PETS VIA PETID KEY USING AN INNER JOIN

SELECT *
FROM [dbo].[Pets] AS A
INNER JOIN [dbo].[ProceduresHistory] AS B
ON A.PetID = B.PetID

-- MATCHING PROCEDURES TO PETS VIA PETID KEY USING A FULL JOIN

SELECT *
FROM [dbo].[Pets] AS A
FULL OUTER JOIN [dbo].[ProceduresHistory] AS B
ON A.PetID = B.PetID