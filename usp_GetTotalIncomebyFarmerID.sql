-- Use test_2


-- 13	SP-Get the list of FarmerName, TotalDepostForMOnth, Month_Year, TotalncomeEarned. 
-- (Input parameter Farmerid, if not passed return all farmer details)	


CREATE PROCEDURE usp_GetTotalIncomebyFarmerID
(
    @Farmer_ID INT
)
AS 
BEGIN 
    SELECT 
        B.Farmer_Name,
		A.FarmerId,
        SUM(A.MilkQuantityInLitre) AS Total_Yearly_deposite,
        YEAR(A.DepositDateTime) AS Year_Name,
        SUM(C.RatePerLitre * A.MilkQuantityInLitre) AS Total_Income_Earned
    FROM 
        FarmerMilkDeposit A
    INNER JOIN 
        MemberMaster B ON A.FarmerId = B.ID
    INNER JOIN 
        MilkFatRate C ON A.MilkFatRateId = C.Id
    GROUP BY 
        B.Farmer_Name, A.FarmerId, YEAR(A.DepositDateTime)
    HAVING 
        A.FarmerId = CASE 
                          WHEN @Farmer_ID != A.FarmerId THEN @Farmer_ID
                          ELSE A.FarmerId
                      END;
END;

EXEC usp_GetTotalIncomebyFarmerID 30;

