-- use test_2

CREATE TABLE MemberMaster (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Farmer_Name VARCHAR(255),
    PanCard VARCHAR(10) UNIQUE CHECK (LEN(PanCard) = 10),
    AadharCard VARCHAR(12) UNIQUE CHECK (LEN(AadharCard) = 12),
    Mobile VARCHAR(10) CHECK (LEN(Mobile) = 10),
    Email VARCHAR(255) UNIQUE CHECK (Email LIKE '%_@__%.__%'),
    AddressLine1 VARCHAR(255),
    VillageCity VARCHAR(255),
    District VARCHAR(255),
    State_Name VARCHAR(255),
    PinCode INT,
    IsActive VARCHAR(3) CHECK (IsActive IN (1, 0))DEFAULT 1,
    Remark VARCHAR(255)
);
--Drop table MemberMaster
--Select * from MemberMaster
