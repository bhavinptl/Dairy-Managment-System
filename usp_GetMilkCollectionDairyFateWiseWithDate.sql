-- Use test_2
-- 9 SP-Get the list of DairyName, Fat wise total collection of milk for a date range.

CREATE PROCEDURE usp_GetMilkCollectionDairyFateWiseWithDate
(
    @Date Datetime
)
AS
BEGIN
    SELECT 
        B.DairyName,
        C.MilkFateId,
        SUM(A.MilkQuantityInLitre) AS Total_Collection,
        A.DepositDateTime
    FROM 
        FarmerMilkDeposit A 
    INNER JOIN 
        DairyMaster B ON A.DairyId = B.ID
    INNER JOIN 
        MilkFatRate C ON A.MilkFatRateId = C.Id
    GROUP BY 
        B.DairyName,
        C.MilkFateId,
        A.DepositDateTime
    HAVING 
        A.DepositDateTime = @Date 
    ORDER BY 
        B.DairyName;
END;


Execute usp_GetMilkCollectionDairyFateWiseWithDate '2023-01-01'