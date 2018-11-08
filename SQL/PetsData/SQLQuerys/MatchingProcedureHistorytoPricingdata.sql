USE [Pets]
GO

-- LOOKING AT THE TABLES IN QUESTION | IDENTIFYING THE KEYS TO PRODUCE QUERY
SELECT *
FROM [dbo].[ProceduresHistory]

SELECT *
FROM [dbo].[ProceduresDetails]

--CREATING A CUSTOM QUERY TO LEFT JOIN DESCRIPTION AND PRICE TO HISTORY
SELECT A.PetID, ProcedureDate, A.ProcedureType, A.ProcedureSubCode, Description, Price
FROM [dbo].[ProceduresHistory] as A
LEFT JOIN [dbo].[ProceduresDetails] AS B
ON A.ProcedureType=B.ProcedureType AND A.ProcedureSubCode = B.ProcedureSubCode