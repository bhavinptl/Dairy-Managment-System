-- Use test_2


-- 11	SP-Get DairyName, FarmerName, fat wise TotalDeposit in a month for a farmer for the current year (Input Parameter - Month, FarmerId)						

CREATE PROCEDURE usp_GetTotalDepositeFarmerwiseMonthly
(
    @month INT,
    @farmer_ID INT
)
AS 
BEGIN
    SELECT 
        B.DairyName,
        C.Farmer_Name,
        CASE 
            WHEN D.MilkFateId = 1 THEN 3.25
            WHEN D.MilkFateId = 2 THEN 2
            WHEN D.MilkFateId = 3 THEN 1
            WHEN D.MilkFateId = 4 THEN 0.5
            ELSE 'Unknown'
        END AS MILK_FATE,
        SUM(A.MilkQuantityInLitre) AS Total_milk_Deposite,
        MONTH(A.DepositDateTime) AS Month_Number
    FROM 
        FarmerMilkDeposit A
    INNER JOIN 
        DairyMaster B ON A.DairyId = B.ID
    INNER JOIN 
        MemberMaster C ON A.FarmerId = C.ID
    INNER JOIN 
        MilkFatRate D ON A.MilkFatRateId = D.Id
    GROUP BY 
        B.DairyName,
        C.Farmer_Name,
        MONTH(A.DepositDateTime),
        D.MilkFateId,
        A.FarmerId
    HAVING 
        MONTH(A.DepositDateTime) = @Month AND 
        A.FarmerId = @farmer_ID;
END;


EXEC usp_GetTotalDepositeFarmerwiseMonthly 5, 20;
