-- Use test_2



Select * from Dummy_rate
Select * from MilkFatTypeMaster



insert into MilkFatRate 
Select B.Id,
       A.RateDay,
	   A.RatePerLTR,
	   A.AnimalID,
	   1,
	   A.RateDay,
	   1,
	   A.RateDay,
	   1,
	   ''
From  MilkFatTypeMaster B Cross join Dummy_rate A
Order by A.RateDay

insert into MilkFatRate 
Select B.Id,
       A.RateDay,
	   A.RatePerLTR - 1,
	  2,
	    1,
	   A.RateDay,
	   1,
	   A.RateDay,
	   1,
	   ''
From  MilkFatTypeMaster B Cross join Dummy_rate A





--Delete from MilkFatRate
Select * from MilkfatRate