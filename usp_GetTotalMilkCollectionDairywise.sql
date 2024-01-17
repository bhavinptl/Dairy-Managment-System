-- use test_2

--6	SP-Get the DairyId, Dairy Name, TotalMilkCollection for a day for each dairy(Input parameter - DepositDate)

CREATE PROCEDURE usp_GetTotalMilkCollectionDairywise
   (
   @Date Datetime
   )
AS
BEGIN
    SELECT 
        A.DairyId,
        B.DairyName,
        SUM(A.MilkQuantityInLitre) AS total_milk_collection,
        A.DepositDateTime
    FROM 
        FarmerMilkDeposit A 
    INNER JOIN 
        DairyMaster B ON A.DairyId = B.ID
    GROUP BY 
        A.DairyId, B.DairyName, A.DepositDateTime
    HAVING 
        A.DepositDateTime = @Date;
END;


Drop procedure usp_GetTotalMilkCollectionDairywise 
Execute usp_GetTotalMilkCollectionDairywise '2023-08-01'
Execute usp_GetTotalMilkCollectionDairywise '2023-01-01'
Execute usp_GetTotalMilkCollectionDairywise '2023-12-01'
