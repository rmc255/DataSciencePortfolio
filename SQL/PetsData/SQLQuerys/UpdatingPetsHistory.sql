USE [Pets]
GO

-- LOOKING AT THE TABLES IN QUESTION | IDENTIFYING THE KEYS TO PRODUCE QUERY
SELECT *
FROM [dbo].[Pets]

SELECT *
FROM [dbo].[ProceduresHistory]

SELECT *
FROM [dbo].[ProceduresDetails]

--CREATING A CUSTOM QUERY TO JOIN PETS, DESCRIPTION, AND PRICE TO HISTORY
SELECT *
FROM [dbo].[Pets] as A
INNER JOIN [dbo].[ProceduresHistory] AS B
ON A.PetID =B.PetID
LEFT JOIN [dbo].[ProceduresDetails] AS C
ON B.ProcedureType=C.ProcedureType AND B.ProcedureSubCode = C.ProcedureSubCode