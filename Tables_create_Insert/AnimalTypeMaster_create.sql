-- Use test_2

CREATE TABLE AnimalTypeMaster (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    AnimalName NVARCHAR(50) Unique NOT NULL
);


Select * from AnimalTypeMaster