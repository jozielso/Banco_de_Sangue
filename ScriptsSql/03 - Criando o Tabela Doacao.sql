USE [BS]
GO

/****** Object:  Table [dbo].[BS_DOACAO]    Script Date: 01/06/2022 20:52:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BS_DOACAO](
	[DOA_ID] [int] IDENTITY(1,1) NOT NULL,
	[DOA_DATA] [datetime] NOT NULL,
	[DOA_QTDE] [decimal](18, 2) NOT NULL,
	[DOA_STATUS] [char](1) NOT NULL,
	[PES_ID] [int] NOT NULL,
 CONSTRAINT [PK_BS_DOACAO] PRIMARY KEY CLUSTERED 
(
	[DOA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BS_DOACAO]  WITH CHECK ADD  CONSTRAINT [FK_BS_DOACAO_BS_PESSOA] FOREIGN KEY([PES_ID])
REFERENCES [dbo].[BS_PESSOA] ([PES_ID])
GO

ALTER TABLE [dbo].[BS_DOACAO] CHECK CONSTRAINT [FK_BS_DOACAO_BS_PESSOA]
GO


