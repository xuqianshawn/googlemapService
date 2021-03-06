USE [MapService]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserComment]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserComment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NULL,
	[comment] [nchar](500) NULL,
	[lat] [decimal](18, 12) NULL,
	[lng] [decimal](18, 12) NULL,
	[creationDateTime] [datetime] NULL,
 CONSTRAINT [PK_UserComment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708120949077_InitialCreate', N'TestLogin.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04CEDA6E8DC617649DA06F0157E2AE8548942A518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB0E020416393C331C0EC9E170B8FFFDF3EFF8ED83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCDB76FBEFF6E7CE6F80FC6A79CEE88D1414B124FCC3B4AC363CB8AED3BECA378E4BB7614C4C1828EECC0B790135887FBFBBF58070716060813B00C63FC2121D4F571FA019FD380D838A409F22E03077B312F879A598A6A5C211FC721B2F1C4BCC5317D1F2C5D32CA684DE3C47311C831C3DEC2341021014514A43CFE18E3198D02B29C855080BCDBC71003DD027931E6D21F97E45D3BB27FC83A62950D73283B8969E0F7043C38E29AB1C4E62BE9D72C3407BA3B031DD347D6EB547F13F3C2C169D187C00305880C8FA75EC48827E665C1E2240EAF301DE50D4719E47904705F83E8CBA88AB867746EB75758D2E1689FFDDB33A6894793084F084E6884BC3DE326997BAEFD3B7EBC0DBE6032393A982F8E5EBF7C859CA3573FE3A397D59E425F81AE560045375110E20864C38BA2FFA661D5DB5962C3A259A54DA615B0259814A671891EDE63B2A477305D0E5F9BC6B9FB809DBC841BD747E2C21C8246344AE0F32AF13C34F770516F35F264FF37703D7CF96A10AE57E8DE5DA6432FF0878913C1BCFA80BDB436BE73C36C7AD5C6FB33273B8F029F7DD7ED2BABFD3C0B92C8669D09B424B7285A625A976E6C95C6DBC9A419D4F0669DA3EEBE69334965F35692B20EAD321372169B9E0DB9BC4FCBB7B3C59D84210C5E6A5A4C234D06276E5523A1ED9E5150946673D0D56C0874E75B5E05CF7CE47A032C831DB880FFB170231F17BD7C1780D121D25BE61B14C7B00A38BFA1F8AE4174F87300D167D84E2230CE19457EF8E4DC6EEE0282AF127FCE6C7E73BC061B9ADBAFC139B269109D11D66A6DBCF781FD2548E819714E11C51FA99D03B2CF5BD7EF0E30883827B68DE3F81C8C193BD300DCEB1CF082D0A3C3DE706C79DAB61B32F590EBABFD106121FD9C9396BE889A42F24734642A9FA449D4740DEF266A4EAA1735A368159593F515958175939453EA054D095AE5CCA806F3F2D2111ADECD4B6177DFCF5B6FF3D6AD051535CE6085C4BF62822358C69C1B44298E4839025DD68D6D380BE9F031A64FBE37A59C3E212F199AD54AB3215D04869F0DDC27DDF5D9908A09C5F7AEC3BC920E879F9C18E03BD1ABCF55ED734E906CD3D3A1D6CD4D33DFCC1AA09B2E27711CD86E3A0B14612F1EB4A8CB0F3E9CD11EC1C87A234641A06360E82EDBF2A004FA668A46754D4EB18729364EEC2C2C3845B18D1C598DD021A78760F98EAA10AC8C86D485FB49E209968E23D608B143500C33D525549E162EB1DD1079AD5A125A76DCC258DF0B1E62CD290E31610C5B35D185B93AF8C10428F80883D2A6A1B155B1B86643D478ADBA316F7361CB719762121BB1C916DF596397DC7F7B12C36CD6D8068CB359255D04D006F2B661A0FCACD2D500C483CBAE19A87062D2182877A93662A0758D6DC140EB2A7976069A1D51BB8EBF705EDD35F3AC1F9437BFAD37AA6B0BB659D3C78E9966E67B421B0A2D70249BE7E99C55E207AA389C819CFC7C167357573411063EC3B41EB229FD5DA51F6A35838846D404581A5A0B28BF029480A409D543B83C96D7281DF7227AC0E671B74658BEF60BB0151B90B1AB57A11542FD85A9689C9D4E1F45CF0A6B908CBCD361A182A3300871F1AA77BC835274715959315D7CE13EDE70A5637C301A14D4E2B96A94947766702DE5A6D9AE259543D6C7255B4B4B82FBA4D152DE99C1B5C46DB45D490AA7A0875BB0968AEA5BF840932D8F7414BB4D5137B6B2FC285E30B6348954E34B14862E595612AB788931CBB2AAA62F66FD138EFC0CC3B26345DE51216DC18906115A62A1165883A4E76E14D35344D11CB138CFD4F12532E5DEAA59FE7396D5ED531EC47C1FC8A9D9DFFCAE50BCB8AFEDB4B22BC211CEA17F3EF367D220BA62F4D5CD0D96E6863C1429E2F6D3C04B7CA277AFF4ADB3DBBB6AFBAC4446185B82FC92FB24E94A7272EB8AEF342CF2941864880ADF65F561D243E8949D7B9E5575EBBC513D4A1E9CAAA2E802565B1B369D13D363A844EFB0FF48B5223CCD9CE2292955005ED413A392D5208155EABAA3D6134FAA98F59AEE884276491552A8EA21653587A42664B562253C8D46D514DD39C859235574B9B63BB2227FA40AADA85E015B21B358D71D5591625205565477C72EF34DC4257487772DED9965C56D2B3BD4AEB76F69309E663D1C66DBABDCDD57812AC53DB1F8EDBC04C6CB77D296B427BB156D298B64AC674B1A0CFDAA53BBF3AE2F3A8D17F57ACCDA45766D616FBAC8D7E3F5B3D827B50BE958279214DC8BE39D708C1BF32355FBA319E98C95919846AE46D8D41F638AFD112318CDFEF4A69E8BD9129E135C22E22EC0E0B2E40DF370FFE0507879B33BAF60AC38763CC59154F714A63E661BC8C322F728B2EF50246745ACF152A4049502CE17C4C10F13F3AFB4D5711ABB607FA5C57BC645FC91B87F2650711B25D8F85BCEF21C2673BEF978B5A3EF1CBA6BF5E28FCF59D33DE33A8219736CEC0BBA5C6584EBAF1F7A4993355D439A95DF443CDF09557B74A0441526C4EA6F0CE62E1DE47D412EE50F3E7AF8B1AF68CA37046B212ADE090C8537880A75EF0056C1D2BE0170E093A66F00FA7556FD266015D1B4EF015CD21F4C7C0DD07D19CA5B6E71AB519C8836B124A57A6ECDA65E2BB572DB7B939474BDD6449713AB7BC0AD913CBD82653CB3BCE3C17647455AF160D8DB34ED27CF25DE95F4E132B163BB59C39B4C146EB810FAA6F2837720A34D91A1B3FD2CE04DDB9A2E8ABBE3A994FD727D77CCD878DED6F6337A376D6CBA30EF8E1B5BAFBCDD1DB3B56DED9F5BB6B4CE5BE8D6B370E58422CD6D8C2A16DC96659B05CEE1843F0FC008328F327B1CA94EEB6A4A496D615892E899EAF3C944C6D2C491F84A14CD6CFBF5956FF88D9DE534CD6C3559984DBCF9FADFC89BD334F3D6E4366E233F58995DA8CAD96E59C79AD29F9E533E70AD272DE9E76D3E6BE3D5FA734AFF1D4429B5D9A3B9237E3ED9BE83A864C8A9D323BB57BEEE85BDB3F24B8AB07FC7EEB28460BFAB48B05DDB350B9A0BB208F2CD5B90282711223497982207B6D49388BA0B6453A86631E6F475771AB763371D73EC5C90EB848609852E637FEED5025ECC0968E29FA630D7651E5F87E90F950CD10510D365B1F96BF22E713DA790FB5C1113D24030EF824774D9585216D95D3E16485701E908C4D5573845B7D80F3D008BAFC90CDDE3556403F37B8F97C87E2C23803A90F681A8AB7D7CEAA26584FC986394EDE1136CD8F11FDEFC0FEC21308D50540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a2c4418c-3b6d-4326-a53d-0e4205fd1d1f', N'user1@123.com', 0, N'AAgbei5oEfFw+SySiUDhjI8gSnrzFAi9rIrpretN6HMrIgzAr2YahAYfBl6nWlGzVg==', N'f65eca95-b3a2-4775-98d1-ab13e439cd05', NULL, 0, 0, NULL, 1, 0, N'user1@123.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c9ba7d8b-528f-420b-833b-adbc6fccc115', N'user2@123.com', 0, N'AKaM/xYdKJ8s+EvP146ZXxhhFZa7gxz9CN6t/0xsbPEl8/gCYHUmRhHFQKuJlVroLA==', N'3d36615b-bf74-49c3-8ddc-3ee5f8aa9c05', NULL, 0, 0, NULL, 1, 0, N'user2@123.com')
SET IDENTITY_INSERT [dbo].[UserComment] ON 

INSERT [dbo].[UserComment] ([id], [name], [comment], [lat], [lng], [creationDateTime]) VALUES (1, N'user2@123.com                                     ', N'1st                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', CAST(1.337000000000 AS Decimal(18, 12)), CAST(103.750000000000 AS Decimal(18, 12)), CAST(N'2017-08-12 20:07:43.067' AS DateTime))
INSERT [dbo].[UserComment] ([id], [name], [comment], [lat], [lng], [creationDateTime]) VALUES (2, N'user2@123.com                                     ', N'2nd                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', CAST(1.340000000000 AS Decimal(18, 12)), CAST(103.730000000000 AS Decimal(18, 12)), CAST(N'2017-08-12 20:10:15.703' AS DateTime))
INSERT [dbo].[UserComment] ([id], [name], [comment], [lat], [lng], [creationDateTime]) VALUES (3, N'user2@123.com                                     ', N'www                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', CAST(1.350000000000 AS Decimal(18, 12)), CAST(103.740000000000 AS Decimal(18, 12)), CAST(N'2017-08-12 20:15:07.970' AS DateTime))
INSERT [dbo].[UserComment] ([id], [name], [comment], [lat], [lng], [creationDateTime]) VALUES (4, N'user1@123.com                                     ', N'1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', CAST(1.360000000000 AS Decimal(18, 12)), CAST(103.730000000000 AS Decimal(18, 12)), CAST(N'2017-08-12 20:19:41.087' AS DateTime))
INSERT [dbo].[UserComment] ([id], [name], [comment], [lat], [lng], [creationDateTime]) VALUES (5, N'user1@123.com                                     ', N'save my location                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', CAST(1.341167500000 AS Decimal(18, 12)), CAST(103.746306200000 AS Decimal(18, 12)), CAST(N'2017-08-13 00:24:51.353' AS DateTime))
INSERT [dbo].[UserComment] ([id], [name], [comment], [lat], [lng], [creationDateTime]) VALUES (6, N'user1@123.com                                     ', N'John''s home                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', CAST(1.370000000000 AS Decimal(18, 12)), CAST(103.746306200000 AS Decimal(18, 12)), CAST(N'2017-08-13 00:30:59.220' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserComment] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[SPInsertUserComments]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xu Qian
-- Create date: 12/08/2017
-- Description:	insert user location with comment
-- =============================================
CREATE PROCEDURE [dbo].[SPInsertUserComments]
	-- Add the parameters for the stored procedure here
	@name nvarchar(50),
	@comment nvarchar(250),
	@lat decimal(18,12),
	@lng decimal(18,12)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into UserComment (name, comment, lat, lng, creationDateTime) values
	(@name,@comment,@lat,@lng,GetDate())
END

GO
/****** Object:  StoredProcedure [dbo].[SPSelectUserComments]    Script Date: 13/8/2017 12:34:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Xu Qian
-- Create date: 12/08/2017
-- Description:	select all user location with comment
-- =============================================
CREATE PROCEDURE [dbo].[SPSelectUserComments]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from UserComment 
END

GO
