-- Use test_2

CREATE TABLE DairyMaster(
    ID INT PRIMARY KEY IDENTITY(1,1),
    DairyName VARCHAR(255) UNIQUE,
    AddressLine1 VARCHAR(255),
    VillageCity VARCHAR(255),
    District VARCHAR(255),
    State_Name VARCHAR(255),
    PinCode VARCHAR(6) UNIQUE CHECK (LEN(Pincode) =6),
	Remark VARCHAR(255)
);

--ALTER TABLE DairyMaster
--ADD CONSTRAINT unique_dairy_name (DairyName);

Select * from DairyMaster

Drop table DairyMaster