
-- use test_2
-- Coundn't drop it 


-- 2 SP Get the list of farmers from a village (Input parameter- Village name - like statement)
-- Select * from memberMaster


CREATE PROCEDURE usp_GetlistOfFarmers
    (
	@VillageCity_name VARCHAR(255)
	)
AS 
BEGIN 
    SELECT
        ID AS Member_ID,
        Farmer_Name,
        Mobile
    FROM 
        MemberMaster
    WHERE 
        VillageCity LIKE @VillageCity_name + '%';  
END;

 Execute usp_GetlistOfFarmers 'Gandhinagar'
 Execute usp_GetlistOfFarmers 'Bhavnagar'
