-- use test_2

--24	"SP-Write an SP to disable a use and his/her roles.
--Hint : Input - Member Id, Mark IsActive Flag to 0 in MemberMaster and MemberRole Table and update remarks, Modified BY, ModifiedOn as well."								
Select * from MemberRole where MemberId=5
Select * from MemberMaster where Id=5


CREATE PROCEDURE usp_UpdateMemberRoleAndMemberMaster
(
    @Member_ID INT
)
AS 
BEGIN 
    -- Updating MemberRole table
    UPDATE MemberRole 
    SET IsActive = 0
    WHERE MemberId = @Member_ID;

    -- Updating MemberMaster table to set IsActive = 0
    UPDATE MemberMaster
    SET IsActive = 0 
    WHERE ID = @Member_ID;

    -- Updating MemberMaster table to set Remark
    UPDATE MemberMaster
    SET Remark = 'Paused on Membership' 
    WHERE ID = @Member_ID;
END;


Exec usp_UpdateMemberRoleAndMemberMaster 5