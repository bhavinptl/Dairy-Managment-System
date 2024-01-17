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
	where A.Member_Id <= 10 AND B.MilkFateId=2
	 Order by B.Id

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
	where A.Member_Id >10 AND A.Member_Id >=20 AND B.MilkFateId=3
	 Order by B.Id


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