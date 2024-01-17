-- USE TEST_2

--14 SP-Get All deposits by a farmer for a month and year (DepositDateTime, Quantity, Animal, FatType, RateForTheFatAnddate, IncomeEarned order by date desc, 
--Also return summary of totalDeposit and TotalIncome (two select statement in one SP). Input (Month, Year, Farmer Id)											




CREATE PROCEDURE usp_GetMonthYearFarmerWiseTotalSummary
(
    @Farmer_Id INT = NULL,
    @Month INT = NULL,
    @Year INT = NULL
)
AS 
BEGIN
    SELECT
        MONTH(A.DepositDateTime) AS month_Name,
        YEAR(A.DepositDateTime) AS Year_Name,
        SUM(A.MilkQuantityInLitre) AS Milk_Quantity,
        CASE 
            WHEN B.AnimalId = 1 THEN 'Cow'
            WHEN B.AnimalId = 2 THEN 'Buffelo'
            ELSE 'Unknown'
        END AS animal,
        CASE 
            WHEN B.MilkFateId = 1 THEN 3.25
            WHEN B.MilkFateId = 2 THEN 2
            WHEN B.MilkFateId = 3 THEN 1
            WHEN B.MilkFateId = 4 THEN 0.5
            ELSE 'Unknown'
        END AS MILK_FATE,
        B.RatePerLitre,
        B.RateDay,
        SUM(B.RatePerLitre * A.MilkQuantityInLitre) AS Income_Earned
    FROM 
        FarmerMilkDeposit A
    INNER JOIN 
        MilkFatRate B ON A.MilkFatRateId = B.Id
    GROUP BY 
        MONTH(A.DepositDateTime), B.AnimalId, B.MilkFateId, B.RatePerLitre, B.RateDay, A.DepositDateTime, A.FarmerId
    HAVING 
        A.FarmerId = @Farmer_Id AND YEAR(A.DepositDateTime) = @Year AND MONTH(A.DepositDateTime) = @Month
    ORDER BY 
        RateDay DESC;

    SELECT 
        SUM(A.MilkQuantityInLitre) AS Total_Deposite,
        SUM(B.RatePerLitre * A.MilkQuantityInLitre) AS Total_income 
    FROM 
        FarmerMilkDeposit A
    INNER JOIN 
        MilkFatRate B ON A.MilkFatRateId = B.Id
    WHERE 
        A.FarmerId = @Farmer_Id AND YEAR(A.DepositDateTime) = @Year AND MONTH(A.DepositDateTime) = @Month;

END;


EXECUTE usp_GetMonthYearFarmerWiseTotalSummary 10,7,2023