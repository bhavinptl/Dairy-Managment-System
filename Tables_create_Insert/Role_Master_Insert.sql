-- Use test_2

INSERT INTO RoleMaster (RoleName, RoleDescription)
VALUES 
    ('Super Admin', 'Administrative privileges with code 1'),
    ('Dairy Admin', 'Dairy management authority with code 2'),
    ('Farmer', 'Agricultural role with code 3');

Select * from RoleMaster