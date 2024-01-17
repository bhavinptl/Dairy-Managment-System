-- Use Test_2

-- 1 Get the list of all dairies	

CREATE PROCEDURE dbo.usp_Get_dairy_list
AS
BEGIN
    SELECT ID,
	       DairyName,
		   VillageCity,
		   PinCode
		   FROM DairyMaster;
END;


EXECUTE dbo.usp_Get_dairy_list