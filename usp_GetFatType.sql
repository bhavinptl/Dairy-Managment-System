-- use test_2

-- 5	SP-Get list of deposits for a day for a dairy (DairyName, FarmerName, FarmerMobile, Quantity, RateFortTheDate, Animal, DepositeDateTime - Order by Farmer, Animal, FatType) - Input - date , DairyId.									
-- Select * from farmermilkdeposit

CREATE PROCEDURE usp_GetFatType
(
    @Date Datetime,
	@Dairy_ID Int
)
AS
BEGIN

		Select 
			  B.DairyName,
			  C.Farmer_Name,
			  C.Mobile,
			  A.MilkQuantityInLitre,
			  D.RatePerLitre,
			  Case when D.AnimalId=1 then 'Cow'
					When D.AnimalId=2 then 'Buffelo'
					Else 'unknown'
			  End AS animal,
			  A.DepositDateTime
		From farmermilkdeposit A
			 inner join DairyMaster B
			 on A.DairyId=B.ID
			 Inner join MemberMaster C
			 On A.FarmerId=C.ID
			 Inner join MilkFatRate D
			 on A.MilkFatRateId=d.Id
		Where A.DairyId=@Dairy_ID AND A.DepositDateTime = @Date

END;


EXECUTE usp_GetFatType '2023-01-03', 1; 
