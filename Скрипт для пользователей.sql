USE Учебная
GO
/****** Object:  Trigger [dbo].[SetDefaultRoleOnUserInsert]    Script Date: 07.03.2024 19:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create TRIGGER [dbo].[SetDefaultRoleOnUserInsert]
ON [dbo].[Users]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Устанавливаем Role в значение по умолчанию (0)
    UPDATE u
    SET u.Role = 0
    FROM [dbo].[Users] u
    INNER JOIN inserted i ON u.id_Users = i.id_Users;
END;
