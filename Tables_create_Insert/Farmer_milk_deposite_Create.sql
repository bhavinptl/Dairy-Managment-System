-- Use test_2

CREATE TABLE FarmerMilkDeposit (
    Id INT PRIMARY KEY IDENTITY(1,1),
    FarmerId INT,
    DairyId INT,
    MilkFatRateId INT,
	Morning_or_Evening  Varchar(10),
    MilkQuantityInLitre int,
    DepositDateTime DATETIME DEFAULT GETDATE(), 
    CreatedBy INT,
    CreatedOn DATETIME DEFAULT GETDATE(),
    ModifiedBy INT,
    ModifiedOn DATETIME DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1,
    Remark VARCHAR(255),
    CONSTRAINT UC_FarmerMilkDeposit UNIQUE (FarmerId, DepositDateTime,Morning_or_Evening),
    FOREIGN KEY (FarmerId) REFERENCES MemberMaster(Id),
    FOREIGN KEY (DairyId) REFERENCES DairyMaster(Id),
    FOREIGN KEY (MilkFatRateId) REFERENCES MilkFatRate(Id),
    FOREIGN KEY (CreatedBy) REFERENCES MemberMaster(Id),
    FOREIGN KEY (ModifiedBy) REFERENCES MemberMaster(Id)
);

-- Drop table FarmerMilkDeposit
-- Select * from FarmerMilkDeposit