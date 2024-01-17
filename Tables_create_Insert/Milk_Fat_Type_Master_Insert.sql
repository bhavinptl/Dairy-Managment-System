-- Use test_2

-- Inserting milk fat types


--  MilkFatTypeMaster data with a ratio of 0.5

INSERT INTO MilkFatTypeMaster (MilkFatPct, Description, CreatedBy, ModifiedBy, IsActive)
VALUES
    (0.5, 'Skim milk or nonfat milk', 1, 1, 1),
    (1.0, '1% milk or reduced fat milk', 1, 1, 1),
    (2.0, '2% milk or reduced fat milk', 1, 1, 1),
    (3.5, 'Whole milk or regular milk', 1, 1, 1)
    

--	Select * from MilkFatTypeMaster
-- Delete from MilkFatTypeMaster where  MilkFatPct = 1.5