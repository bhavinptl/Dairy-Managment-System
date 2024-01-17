-- Use test_2

-- 8 Search_Total_milk_collection_animal_wise


CREATE PROCEDURE usp_GetTotalMilkCollectionOnlyAnimalWise
(
	@Animal_ID Int
)
AS
BEGIN
Select 
	Sum(A.MilkQuantityInLitre) as total_milk_collection,
	Case when B.AnimalId=1 then 'Cow'
	        When B.AnimalId=2 then 'Buffelo'
			Else 'unknown'
	  End AS animal
from FarmerMilkDeposit A 
  			   Inner Join MilkFatRate B
			   On A.MilkFatRateId=B.Id
			   Group by B.AnimalId
			   Having  B.AnimalId=@Animal_ID
END;	

Execute usp_GetTotalMilkCollectionOnlyAnimalWise 2
Execute usp_GetTotalMilkCollectionOnlyAnimalWise 1