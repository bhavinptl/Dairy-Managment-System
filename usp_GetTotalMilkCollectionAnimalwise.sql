-- Use_test_2

--7	SP-Get the list of DairyName, TotalMilkCollection for a day, animal wise (Input Parameter - DepositDay, AnimalId)				


CREATE PROCEDURE usp_GetTotalMilkCollectionAnimalwise
(
    @Date Datetime,
    @Animal_ID Int
)
AS
BEGIN
    SELECT 
        B.DairyName,
        SUM(A.MilkQuantityInLitre) AS total_milk_collection,
        A.DepositDateTime,
        CASE 
            WHEN C.AnimalId = 1 THEN 'Cow'
            WHEN C.AnimalId = 2 THEN 'Buffelo'
            ELSE 'unknown'
        END AS animal
    FROM 
        FarmerMilkDeposit A 
    INNER JOIN 
        DairyMaster B ON A.DairyId = B.ID
    INNER JOIN 
        MilkFatRate C ON A.MilkFatRateId = C.Id
    GROUP BY 
        B.DairyName, A.DepositDateTime, C.AnimalId
    HAVING 
        A.DepositDateTime = @Date AND C.AnimalId = @Animal_ID
END;


Execute usp_GetTotalMilkCollectionAnimalwise '2023-01-03',2