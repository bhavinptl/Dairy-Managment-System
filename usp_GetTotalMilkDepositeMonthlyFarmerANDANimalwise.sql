-- Use test_2

--12	SP-Get the DairyName, FarmerName, TotalDeposit done for a month by a farmer AnimalId wise 

CREATE PROCEDURE usp_GetTotalMilkDepositeMonthlyFarmerANDANimalwise
    @farmerID INT,
    @AnimalID INT
AS
BEGIN
    SELECT
        B.DairyName,
        C.Farmer_Name,
        MONTH(A.DepositDateTime) AS Total_monthly_deposite,
        SUM(A.MilkQuantityInLitre) AS TOTAL_MILK_DEPOSIT
    FROM 
        FarmerMilkDeposit A
    INNER JOIN 
        DairyMaster B ON A.DairyId = B.ID
    INNER JOIN 
        MemberMaster C ON A.FarmerId = C.ID
    INNER JOIN 
        MilkFatRate D ON A.MilkFatRateId = D.Id
    GROUP BY 
        B.DairyName, C.Farmer_Name, MONTH(A.DepositDateTime), D.AnimalId, A.FarmerId
    HAVING 
        A.FarmerId = @farmerID AND D.AnimalId = @AnimalID;
END;


EXEC usp_GetTotalMilkDepositeMonthlyFarmerANDANimalwise 30, 2;
