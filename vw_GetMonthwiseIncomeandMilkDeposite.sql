-- Use test_2


-- 15	View-Create view to get list of all farmers, Deposits and IncomeEarned month wise			
-- DROP view  dbo.Monthwise_income_milkDeposite

CREATE VIEW [dbo].[vw_GetMonthwiseIncomeandMilkDeposite]
AS
SELECT  
    C.Farmer_Name,
    SUM(A.MilkQuantityInLitre) AS Total_Deposite,
    SUM(B.RatePerLitre * A.MilkQuantityInLitre) AS Total_income 
FROM 
    FarmerMilkDeposit A
INNER JOIN 
    MilkFatRate B ON A.MilkFatRateId = B.Id
INNER JOIN 
    MemberMaster C ON A.FarmerId = C.ID
GROUP BY 
    C.Farmer_Name;



Select * from [dbo].[vw_GetMonthwiseIncomeandMilkDeposite]