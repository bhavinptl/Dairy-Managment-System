-- Use test_2

--4	SP-Get the list of fat types  (Input Parameter - FatPct - if not passed return all rows else return only 
-- one which matches the input parameter)					
-- Select * from MilkfatTypeMaster


CREATE PROCEDURE usp_GetFatTypes
    (
	@FatPct DECIMAL(4,2) = NULL
	)
AS
BEGIN
    SELECT *
    FROM MilkFatTypeMaster
    WHERE MilkFatPct = 
        CASE 
            WHEN @FatPct != MilkFatPct THEN @FatPct
            ELSE MilkFatPct
        END;
END;


EXEC usp_GetFatTypes 1 ; 

