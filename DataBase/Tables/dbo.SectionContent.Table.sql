SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionContent](
	[ID] [nvarchar](100) NOT NULL,
	[SectionWidgetId] [nvarchar](100) NOT NULL,
	[SectionGroupId] [nvarchar](100) NOT NULL,
	[SectionContentType] [int] NULL,
	[Order] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreatebyName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](50) NULL,
	[LastUpdateByName] [nvarchar](100) NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_SectionContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SectionContent]  WITH CHECK ADD  CONSTRAINT [FK_SectionContent_Widget] FOREIGN KEY([SectionWidgetId])
REFERENCES [dbo].[SectionWidget] ([ID])
GO
ALTER TABLE [dbo].[SectionContent] CHECK CONSTRAINT [FK_SectionContent_Widget]
GO
