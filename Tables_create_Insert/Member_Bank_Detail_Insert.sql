-- use test_2

-- bank data for the first 15 members
-- select * from MemberBankDetail
INSERT INTO MemberBankDetail (MemberId, BankName, IFSCCode, AccountNumber, AccountType, CreatedBy, ModifiedBy, IsActive)
VALUES
    (1, 'SBI', 'SBIN1000', '12345678', 'Savings', 1, 1, 1),
    (2, 'Bank Of Baroda', 'BOB123456', '22345678', 'Current', 1, 1, 1),
    (3, 'ICICI', 'ICIC10000', '98765432', 'Savings', 1, 1, 1),
    (4, 'HDFC', 'HDFC9876', '87654321', 'Current', 1, 1, 1),
    (5, 'Axis Bank', 'AXIS1234', '56789012', 'Savings', 1, 1, 1),
    (6, 'PNB', 'PNB5678', '34567890', 'Current', 1, 1, 1),
    (7, 'Canara Bank', 'CANB5678', '45678901', 'Savings', 1, 1, 1),
    (8, 'IDBI', 'IDBI8765', '23456789', 'Current', 1, 1, 1),
    (9, 'Saraswat Bank', 'SARAS2345', '65432109', 'Savings', 1, 1, 1),
    (10, 'Kotak Mahindra', 'KOTAK5678', '78901234', 'Current', 1, 1, 1),
    (11, 'Yes Bank', 'YESB1234', '90123456', 'Savings', 1, 1, 1),
    (12, 'Standard Chartered', 'STAN8765', '34567890', 'Current', 1, 1, 1),
    (13, 'Union Bank', 'UNION4567', '56789012', 'Savings', 1, 1, 1),
    (14, 'Bank of India', 'BOI9012', '67890123', 'Current', 1, 1, 1),
    (15, 'Federal Bank', 'FEDB3456', '78901234', 'Savings', 1, 1, 1),
    (16, 'IndusInd Bank', 'INDU3456', '87654321', 'Savings', 1, 1, 1),
    (17, 'UCO Bank', 'UCOB7890', '23456789', 'Current', 1, 1, 1),
    (18, 'Deutsche Bank', 'DEUT2345', '65432109', 'Savings', 1, 1, 1),
    (19, 'Citi Bank', 'CITI5678', '78901234', 'Current', 1, 1, 1),
    (20, 'RBL Bank', 'RBLB1234', '90123456', 'Savings', 1, 1, 1),
    (21, 'South Indian Bank', 'SIB12345', '34567890', 'Current', 1, 1, 1),
    (22, 'Oriental Bank', 'ORIB6789', '56789012', 'Savings', 1, 1, 1),
    (23, 'Karur Vysya Bank', 'KVB9012', '67890123', 'Current', 1, 1, 1),
    (24, 'Dhanlaxmi Bank', 'DLB5678', '78901234', 'Savings', 1, 1, 1),
    (25, 'City Union Bank', 'CUB9012', '34567890', 'Current', 1, 1, 1),
    (26, 'Federal Bank', 'FEDB5678', '56789012', 'Savings', 1, 1, 1),
    (27, 'IndusInd Bank', 'INDU9012', '90123456', 'Current', 1, 1, 1),
    (28, 'UCO Bank', 'UCOB3456', '12345678', 'Savings', 1, 1, 1),
    (29, 'Deutsche Bank', 'DEUT9012', '23456789', 'Current', 1, 1, 1),
    (30, 'Citi Bank', 'CITI3456', '34567890', 'Savings', 1, 1, 1),
    (31, 'RBL Bank', 'RBLB9012', '45678901', 'Current', 1, 1, 1),
    (32, 'South Indian Bank', 'SIB5678', '56789012', 'Savings', 1, 1, 1);

Select * from MemberBankDetail 
