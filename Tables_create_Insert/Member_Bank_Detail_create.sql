-- Use test_2

CREATE TABLE MemberBankDetail (
    Id INT PRIMARY KEY IDENTITY(1,1),
    MemberId INT,
    BankName VARCHAR(255),
    IFSCCode VARCHAR(20),
    AccountNumber VARCHAR(20),
    AccountType VARCHAR(20),
    CreatedBy INT ,
    CreatedOn DATETIME DEFAULT GETDATE(),
    ModifiedBy INT,
    ModifiedOn DATETIME DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1,
    Remark VARCHAR(255),
    FOREIGN KEY (MemberId) REFERENCES MemberMaster(Id),
    FOREIGN KEY (CreatedBy) REFERENCES MemberMaster(Id),
    FOREIGN KEY (ModifiedBy) REFERENCES MemberMaster(Id)
);

Drop table MemberBankDetail