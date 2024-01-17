-- Use test_2

Select A.ID,
      B.MemberId
From MemberMaster A inner join MemberRole B
On A.ID = B.MemberId
where B.RoleId=3


with cte_Farmer_Dairy(Member_Id,DairyID)
AS
(
Select A.ID AS Member_ID,
      B.DairyId
From MemberMaster A inner join MemberRole B
On A.ID = B.MemberId
where B.RoleId=3
)
Select A.Member_Id as Farmer_ID,
       A.DairyID,
       B.Id,
	   case when B.Id %13=0 then 1
	        when B.Id %7=0 then 2
	        when B.Id %5=0 then 4
            when B.Id %3=0 then 6
			when B.Id %2=0 then 7
	   else 2
	   end AS Milk_quntity,
       B.RateDay As Deposite_Date
     from cte_Farmer_Dairy A Cross join MilkFatRate B
	where B.RateDay='2023-09-09' AND A.Member_Id = 1
	 Order by B.Id
	

-- For member(Farmer) 1 to 10

with cte_Farmer_Dairy(Member_Id,DairyID)
AS
(
Select A.ID AS Member_ID,
      B.DairyId
From MemberMaster A inner join MemberRole B
On A.ID = B.MemberId
where B.RoleId=3
)
INSERT INTO FarmerMilkDeposit (FarmerID, DairyID,MilkFatRateId,Morning_or_Evening,MilkQuantityInLitre,DepositDateTime,CreatedBy,ModifiedBy)
Select A.Member_Id as Farmer_ID,
       A.DairyID,
       B.Id,
	  Cast( Case
    WHEN ROW_NUMBER() OVER (PARTITION BY A.Member_Id, B.RateDay ORDER BY B.RateDay) = 1 THEN 'Mor'
    WHEN ROW_NUMBER() OVER (PARTITION BY A.Member_Id, B.RateDay ORDER BY B.RateDay) = 2 THEN 'Eve'
    ELSE 'Unk'
    END 
	 AS Varchar) AS Morning_or_eve, 
	   case when B.Id %13=0 then 1
	        when B.Id %7=0 then 2
	        when B.Id %5=0 then 4
            when B.Id %3=0 then 6
			when B.Id %2=0 then 7
	   else 2
	   end AS Milk_quntity,
       B.RateDay As Deposite_Date,
	   1,
	   1
     from cte_Farmer_Dairy A Cross join MilkFatRate B
	where A.Member_Id <= 10 AND B.MilkFateId=2 
	 Order by A.Member_ID
	
-- Select * from FarmerMilkDeposit

-- For member(Farmer) 2 to 20


with cte_Farmer_Dairy(Member_Id,DairyID)
AS
(
Select A.ID AS Member_ID,
      B.DairyId
From MemberMaster A inner join MemberRole B
On A.ID = B.MemberId
where B.RoleId=3
)
Select A.Member_Id as Farmer_ID,
       A.DairyID,
       B.Id,
	   case when B.Id %13=0 then 1
	        when B.Id %7=0 then 2
	        when B.Id %5=0 then 4
            when B.Id %3=0 then 6
			when B.Id %2=0 then 7
	else 2
	end AS Milk_quntity,
    B.RateDay As Deposite_Date
    from cte_Farmer_Dairy A Cross join MilkFatRate B
	where A.Member_Id >10 AND A.Member_Id <=20 AND B.MilkFateId= 1
	Order by B.Id


-- New Query 

with cte_Farmer_Dairy(Member_Id,DairyID)
AS
(
Select A.ID AS Member_ID,
      B.DairyId
From MemberMaster A inner join MemberRole B
On A.ID = B.MemberId
where B.RoleId=3
)
INSERT INTO FarmerMilkDeposit (FarmerID, DairyID,MilkFatRateId,Morning_or_Evening,MilkQuantityInLitre,DepositDateTime,CreatedBy,ModifiedBy)
Select A.Member_Id as Farmer_ID,
       A.DairyID,
       B.Id,
	  Cast( Case
    WHEN ROW_NUMBER() OVER (PARTITION BY A.Member_Id, B.RateDay ORDER BY B.RateDay) = 1 THEN 'Mor'
    WHEN ROW_NUMBER() OVER (PARTITION BY A.Member_Id, B.RateDay ORDER BY B.RateDay) = 2 THEN 'Eve'
    ELSE 'Unk'
    END 
	 AS Varchar) AS Morning_or_eve, 
	   case when B.Id %13=0 then 1
	        when B.Id %7=0 then 2
	        when B.Id %5=0 then 4
            when B.Id %3=0 then 6
			when B.Id %2=0 then 7
	   else 2
	   end AS Milk_quntity,
       B.RateDay As Deposite_Date,
	   1,
	   1
     from cte_Farmer_Dairy A Cross join MilkFatRate B
	where A.Member_Id > 10 AND A.Member_Id <=20 AND MilkFateId=3
	 Order by A.Member_ID




-- For member(Farmer) 3 to 32


with cte_Farmer_Dairy(Member_Id,DairyID)
AS
(
Select A.ID AS Member_ID,
      B.DairyId
From MemberMaster A inner join MemberRole B
On A.ID = B.MemberId
where B.RoleId=3
)
Select A.Member_Id as Farmer_ID,
       A.DairyID,
       B.Id,
	   case when B.Id %13=0 then 1
	        when B.Id %7=0 then 2
	        when B.Id %5=0 then 4
            when B.Id %3=0 then 6
			when B.Id %2=0 then 7
	else 2
	end AS Milk_quntity,
    B.RateDay As Deposite_Date
    from cte_Farmer_Dairy A Cross join MilkFatRate B
	where A.Member_Id >20 AND A.Member_Id <=32 AND B.MilkFateId=4
	Order by B.Id

-- new Query

with cte_Farmer_Dairy(Member_Id,DairyID)
AS
(
Select A.ID AS Member_ID,
      B.DairyId
From MemberMaster A inner join MemberRole B
On A.ID = B.MemberId
where B.RoleId=3
)
INSERT INTO FarmerMilkDeposit (FarmerID, DairyID,MilkFatRateId,Morning_or_Evening,MilkQuantityInLitre,DepositDateTime,CreatedBy,ModifiedBy)
Select A.Member_Id as Farmer_ID,
       A.DairyID,
       B.Id,
	  Cast( Case
    WHEN ROW_NUMBER() OVER (PARTITION BY A.Member_Id, B.RateDay ORDER BY B.RateDay) = 1 THEN 'Mor'
    WHEN ROW_NUMBER() OVER (PARTITION BY A.Member_Id, B.RateDay ORDER BY B.RateDay) = 2 THEN 'Eve'
    ELSE 'Unk'
    END 
	 AS Varchar) AS Morning_or_eve, 
	   case when B.Id %13=0 then 1
	        when B.Id %7=0 then 2
	        when B.Id %5=0 then 4
            when B.Id %3=0 then 6
			when B.Id %2=0 then 7
	   else 2
	   end AS Milk_quntity,
       B.RateDay As Deposite_Date,
	   1,
	   1
     from cte_Farmer_Dairy A Cross join MilkFatRate B
	where A.Member_Id > 20 AND A.Member_Id <=32AND MilkFateId=4
	 Order by A.Member_ID

-- Select * from Farmer_Milk_deposite

	-- Testing 

with cte_Farmer_Dairy(Member_Id,DairyID)
AS
(
Select A.ID AS Member_ID,
      B.DairyId
From MemberMaster A inner join MemberRole B
On A.ID = B.MemberId
where B.RoleId=3
)
Select A.Member_Id as Farmer_ID,
       A.DairyID,
       B.Id,
	   case when B.Id %13=0 then 1
	        when B.Id %7=0 then 2
	        when B.Id %5=0 then 4
            when B.Id %3=0 then 6
			when B.Id %2=0 then 7
	 else 2
	end AS Milk_quntity,
    B.RateDay As Deposite_Date
    from cte_Farmer_Dairy A Cross join MilkFatRate B
	where A.Member_Id <= 10 AND B.MilkFateId=2 AND B.RateDay='2023-01-01'
	Order by B.Id

	Select * from MilkFatRate
	

-----------------------------------------SPECIAL INSERT---------------------------
Select * from FarmerMilkDeposit


Insert into 
FarmerMilkDeposit(FarmerID, DairyID,MilkFatRateId,Morning_or_Evening,MilkQuantityInLitre,DepositDateTime,CreatedBy,ModifiedBy)
Values (32,8,2912,'Mor',0,'2024-01-01',1,1)