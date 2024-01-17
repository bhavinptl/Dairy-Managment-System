-- Use test_2



CREATE TABLE MilkFatRate (
    Id INT PRIMARY KEY IDENTITY(1,1),
    MilkFateId INT,
    RateDay DATETIME,
    RatePerLitre DECIMAL(10, 2),
    AnimalId INT,
    CreatedBy INT,
    CreatedOn DATETIME DEFAULT GETDATE(),
    ModifiedBy INT,
    ModifiedOn DATETIME DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1,
    Remark VARCHAR(255),
    CONSTRAINT UK_MilkFatRate UNIQUE (MilkFateId, RateDay,AnimalId),
    FOREIGN KEY (CreatedBy) REFERENCES MemberMaster(Id),
    FOREIGN KEY (ModifiedBy) REFERENCES MemberMaster(Id),
	FOREIGN KEY (MilkFateId) REFERENCES MilkFatTypeMaster(Id)
);

EXEC sp_helpconstraint 'MilkFatRate';

ALTER TABLE MilkFatRate
ADD CONSTRAINT FK_MilkFatRate_AnimalType
FOREIGN KEY (AnimalId) REFERENCES AnimalTypeMaster(Id);


-- Drop Foreign Key Constraints
ALTER TABLE MilkFatRate
DROP CONSTRAINT CreatedBy;

ALTER TABLE MilkFatRate
DROP CONSTRAINT FK__MilkFatRa__Creat__7AF13DF7;

ALTER TABLE MilkFatRate
DROP CONSTRAINT FK__MilkFatRa__MilkF__7CD98669;

ALTER TABLE MilkFatRate
DROP CONSTRAINT FK__MilkFatRa__Modif__7BE56230;

-- -- Alter the column to DATETIME
ALTER TABLE MilkFatRate
ALTER COLUMN RateDay DATETIME;





Drop table MilkFatRate
--Select * from MilkFatRate
