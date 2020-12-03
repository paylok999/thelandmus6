CREATE TABLE [dbo].[EventAuctionReward](
	[Index] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](10) NOT NULL,
	[ItemIndex] [smallint] NOT NULL DEFAULT(0),
	[ItemLevel] [smallint] NOT NULL DEFAULT(0),
	[ItemDur] [smallint] NOT NULL DEFAULT(0),
	[ItemSkill] [smallint] NOT NULL DEFAULT(0),
	[ItemLuck] [smallint] NOT NULL DEFAULT(0),
	[ItemOption] [smallint] NOT NULL DEFAULT(0),
	[ItemExcOpt] [smallint] NOT NULL DEFAULT(0),
	[ItemSetOpt] [smallint] NOT NULL DEFAULT(0),
	[ItemJoH] [smallint] NOT NULL DEFAULT(0),
	[ItemOex] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket1] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket2] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket3] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket4] [smallint] NOT NULL DEFAULT(0),
	[ItemSocket5] [smallint] NOT NULL DEFAULT(0),
	[Time] [int] NOT NULL DEFAULT(0)
) ON [PRIMARY]