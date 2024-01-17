-- Use Test_2

CREATE TABLE MemberRole(
    Id INT PRIMARY KEY IDENTITY(1,1),
    DairyId INT,
    MemberId INT,
    RoleId INT,
    IsActive VARCHAR(3) CHECK (IsActive IN (1, 0))DEFAULT 1,
    FOREIGN KEY (DairyId) REFERENCES DairyMaster(Id),
    FOREIGN KEY (MemberId) REFERENCES MemberMaster(Id),
    FOREIGN KEY (RoleId) REFERENCES RoleMaster(Id)
);

Select * from MemberRole