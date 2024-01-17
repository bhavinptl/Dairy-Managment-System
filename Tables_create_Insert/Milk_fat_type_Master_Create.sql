-- Use test_2

CREATE TABLE MilkFatTypeMaster (
    Id INT PRIMARY KEY IDENTITY(1,1),
    MilkFatPct DECIMAL(4,2),
    Description VARCHAR(255),
    CreatedBy INT,
    CreatedOn DATETIME DEFAULT GETDATE(),
    ModifiedBy INT,
    ModifiedOn DATETIME DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1,
    Remark VARCHAR(255),
    CONSTRAINT CHK_IsActive CHECK (IsActive IN (0, 1)),
    FOREIGN KEY (CreatedBy) REFERENCES MemberMaster(Id),
    FOREIGN KEY (ModifiedBy) REFERENCES MemberMaster(Id)
);

 ALTER TABLE FarmerMilkDeposit
DROP CONSTRAINT FK__FarmerMil__MilkF__61316BF4;


  --Drop table MilkFatTypeMaster
-- select * from MilkFatTypeMaster