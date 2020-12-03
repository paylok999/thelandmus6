USE [MuOnline]
GO
/****** Object: StoredProcedure [dbo].[WZ_CustomArenaRanking] Script Date: 11/27/2015 22:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [dbo].[WZ_CustomArenaRanking]
@account varchar(10),
@Name varchar(10),
@ArenaNumber int,
@UserScore int,
@UserRank int
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

IF(@ArenaNumber = 0)
BEGIN

IF(@UserRank = 1)
BEGIN

UPDATE CashShopData SET GoblinPoint = GoblinPoint + 500 WHERE AccountID = @account

END

END

SET NOCOUNT OFF
SET XACT_ABORT OFF

END