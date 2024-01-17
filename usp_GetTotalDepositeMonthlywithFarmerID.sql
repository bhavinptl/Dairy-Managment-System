-- Use test_2

-- 10	SP-Get the list of DairyName, FarmerName, TotalDeposit done for a month of a year  (Input Parameter - Month, Year, FarmerId)					


CREATE PROCEDURE usp_GetTotalDepositeMonthlywithFarmerID
(
    @month int,
	@Year int,
	@Farmer_ID int
)
AS 
BEGIN
    SELECT 
        B.DairyName,
		A.FarmerId,
        C.Farmer_Name,
        SUM(A.MilkQuantityInLitre) AS Total_milk_Deposite,
        MONTH(A.DepositDateTime) AS Month_Number
    FROM 
        FarmerMilkDeposit A
    INNER JOIN 
        DairyMaster B ON A.DairyId = B.ID
    INNER JOIN 
        MemberMaster C ON A.FarmerId = C.ID
    GROUP BY 
        B.DairyName,
        C.Farmer_Name,
        MONTH(A.DepositDateTime),
		Year(A.DepositDateTime),
		A.FarmerId
    HAVING 
        MONTH(A.DepositDateTime) = @month AND 
		Year(A.DepositDateTime)=@Year   AND
		A.FarmerId=@Farmer_ID
END;

Drop procedure usp_GetTotalDepositeMonthlywithFarmerID


Execute usp_GetTotalDepositeMonthlywithFarmerID 12,2023,6