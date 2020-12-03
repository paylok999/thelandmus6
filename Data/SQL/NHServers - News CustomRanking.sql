USE [MuOnline]
GO
/****** Object:  StoredProcedure [dbo].[WZ_CustomRanking]    Script Date: 08/27/2019 12:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE	[dbo].[WZ_CustomRanking]
	@type		SMALLINT
As
Begin
	
	SET NOCOUNT ON	

	IF @type = 0 
	BEGIN
			Select top 10 name as VALUE1, resetcount as VALUE2 from Character order by ResetCount desc, cLevel desc
	END
	
	IF @type = 1 
	BEGIN
			Select top 10 name as VALUE1, Score as VALUE2 from RankingBloodCastle order by Score desc
	END
	
	IF @type = 2 
	BEGIN
			Select top 10 name as VALUE1, Score as VALUE2 from RankingDevilSquare order by Score desc
	END
	
	IF @type = 3 
	BEGIN
			Select top 10 name as VALUE1, Score as VALUE2 from RankingChaosCastle order by Score desc
	END
	
	IF @type = 4 
	BEGIN
			Select top 10 name as VALUE1, Score as VALUE2 from RankingIllusionTemple order by Score desc
	END
	
	IF @type = 5 
	BEGIN
			Select top 10 name as VALUE1, Score as VALUE2 from RankingCustomArena order by Score desc
	END
		
	IF @type = 6 
	BEGIN
			Select top 10 name as VALUE1, Score as VALUE2 from RankingBattleRoyale order by Score desc
	END
	
	IF @type = 7 
	BEGIN
			Select top 10 name as VALUE1, Kills as VALUE2 from RankingTvT order by Kills desc
	END
	
	IF @type = 8 
	BEGIN
			Select top 10 Guild as VALUE1, Score as VALUE2 from RankingGvG order by Score desc
	END
	
	
	--WAITFOR DELAY '00:00:02';

	SET NOCOUNT OFF	
End
