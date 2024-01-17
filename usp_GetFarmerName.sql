-- use test_2


 --3 SP-Get the list of farmers with name like - abc (Input parameter - Name)


CREATE PROCEDURE usp_GetFarmerName
   (
   @Name_like VARCHAR(255)
   )
AS
BEGIN
    SELECT
        Farmer_Name
    FROM
        MemberMaster
    WHERE 
        Farmer_Name LIKE '%' + @Name_like + '%';
END;


Execute usp_GetFarmerName 'Patel'
