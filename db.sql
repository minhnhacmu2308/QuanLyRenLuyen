USE [master]
GO
/****** Object:  Database [DBQlRenLuyen]    Script Date: 3/23/2022 8:11:50 PM ******/
CREATE DATABASE [DBQlRenLuyen]
 GO
ALTER DATABASE [DBQlRenLuyen] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBQlRenLuyen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBQlRenLuyen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBQlRenLuyen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBQlRenLuyen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBQlRenLuyen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBQlRenLuyen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBQlRenLuyen] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DBQlRenLuyen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBQlRenLuyen] SET  MULTI_USER 
GO
ALTER DATABASE [DBQlRenLuyen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBQlRenLuyen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBQlRenLuyen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBQlRenLuyen] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBQlRenLuyen] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBQlRenLuyen] SET QUERY_STORE = OFF
GO
USE [DBQlRenLuyen]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/23/2022 8:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ChamDiemRenLuyens]    Script Date: 3/23/2022 8:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamDiemRenLuyens](
	[IdChamDiemRenLuyen] [int] IDENTITY(1,1) NOT NULL,
	[Diem] [int] NOT NULL,
	[TieuChi] [nvarchar](max) NOT NULL,
	[IdSinhVien] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IdHocKy] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ChamDiemRenLuyens] PRIMARY KEY CLUSTERED 
(
	[IdChamDiemRenLuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoVanHocTaps]    Script Date: 3/23/2022 8:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoVanHocTaps](
	[IdCoVanHocTap] [int] IDENTITY(1,1) NOT NULL,
	[MaCVHT] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_dbo.CoVanHocTaps] PRIMARY KEY CLUSTERED 
(
	[IdCoVanHocTap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemRenLuyens]    Script Date: 3/23/2022 8:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemRenLuyens](
	[IdDiemRenLuyen] [int] IDENTITY(1,1) NOT NULL,
	[TongDiem] [int] NOT NULL,
	[IdSinhVien] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IdHocKy] [int] NOT NULL,
 CONSTRAINT [PK_dbo.DiemRenLuyens] PRIMARY KEY CLUSTERED 
(
	[IdDiemRenLuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocKies]    Script Date: 3/23/2022 8:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKies](
	[IdHocKy] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.HocKies] PRIMARY KEY CLUSTERED 
(
	[IdHocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopTaiChinhs]    Script Date: 3/23/2022 8:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopTaiChinhs](
	[IdLopTaiChinh] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_dbo.LopTaiChinhs] PRIMARY KEY CLUSTERED 
(
	[IdLopTaiChinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhViens]    Script Date: 3/23/2022 8:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhViens](
	[IdSinhVien] [int] IDENTITY(1,1) NOT NULL,
	[MaSinhVien] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NULL,
	[HoTen] [nvarchar](255) NULL,
	[NgaySinh] [datetime] NOT NULL,
	[SoDienThoai] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[TrangThai] [int] NOT NULL,
	[IdLopTaiChinh] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SinhViens] PRIMARY KEY CLUSTERED 
(
	[IdSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202203110740223_createda', N'QuanLyRenLuyen.Migrations.Configuration', 0x1F8B0800000000000400ED5C5B6FDB36147E1FB0FF20E8692B522B4951600BEC169DD3AC4673696327D85BC048B44D4CA234890A6C0CFB657BD84FDA5F1865EBC28B4889B29238C5B09786260FCF393C371E7EDABF7FFF337CBF0A7CEB01C6090AF1C83E1A1CDA16C46EE821BC18D92999BFFEC97EFFEEFBEF861FBD6065DD16F3DE64F3E84A9C8CEC2521D189E324EE1206201904C88DC3249C93811B060EF042E7F8F0F067E7E8C88194844D6959D6F03AC5040570F307FD731C6217462405FE45E8413FC9C7E92FD30D55EB12043089800B47F6D714E0F3F535C4E7E91AE2C176816D7DF011A0CC4CA13FB72D80714800A1AC9EDC24704AE2102FA6111D00FE6C1D413A6F0EFC04E6229C54D3DB4A73789C49E3540B0B526E9A9030302478F426578F232EEFA464BB541F55E047AA68B2CEA4DE2871648F97203845302834685BE2A627633FCE1628743D10291C58FCBC83D24EA83965FF1D58E3D427690C4718A62406FE81F525BDF791FB19AE67E1EF108F70EAFB2CDB9471FA1B374087BEC461046342379AE7C24C3C591C87A7E388844A321A1A5BF12798BC39B6AD4BCA1CB8F76169358CAAA6248CE1AF10C31810E87D0184C0186734E146EF1237C2DE9F42F7F3BA693B3D898CF1DD28CC104CC74B5410A1EE429DDFB62EC0EA1CE205598E6CFA4FDB3A432BE8152339E11B8C68ACA08B489C42E38D27DE14E1E52D6AD678830031C08BD91220433297E0012D36E72810ACD8BA86FE6642B244D136BA0C8A1FEF44B3A151E82C0E83EBD06748C8B3EE66205E4042790D1BA74EC3347605C6874EE5D35A4FAFA430F5F062E5B37A76C5BEB947B7B5ABFE3CF902887BD6F8D1F1DBB78FE14717807C5E82B4878D9BA2D5AC17F1F4BB5C2EC03AD365B1D1293D8F192D163A8497F310A0194034B855E4BA859869481D13CF9621D0C5C97E14708A803E1CF7B34DEF51B3261E3E46F82C62628BF05944DAB6123473CFCEB8AB3CBE62BC768214F2EB67D5457B1DBBE7615459770DB3CCEFE5269C966B2748CCD6CFDA2935ED5680EE4DF1B96BE1F9628BCE19BD50ED5E78BECCFAAF630810C3963E5074F22A2E1E983A15B3F8597D8A13C2DCA5B8E54FE551B42CA2FB3E41E1D768B1F559AB6322104D569F2E3A99EC38BC059806A419883A3422AAC5CFDB836085E8D07E60973FDD7D657CFB69F692EF2A861BF77579D16EABB2FB0F4912BA68737082C3D694C1BC181FB167B5AF89B7D2B1753615921A3E8AA8A953C646F691A4A8563B944561B583DC36E3777A25ED449D06C6997D027F4C031475438489EC6108BB28027E6BB1050A86FD84ECD4CA3DC55F4E610471E652AD35B43B33E59E422469D2DED061CC4C6F7DF5358CCA2C1A0A9ACA22CCACA169831A936B6FD49D4C4DCBC7135A9956E12FC2C0EA2B0ED5F937941FD5F973D51D6F028783812EB4355C759B4DEC9518E915BAD82600AA3F42B507E3C2E1EEE9C80CAEC857BFA6CEB949605EEA24799A11C5C8684E2151775AAABCA38CCE926E78A24C61281153F66245224D5C1971C49C591D2DDD4D41D2585563D52A4B53C131E72C2BABAE8BC52C68EE7989CE6994EE4B29B9D3931CDE28C133346B6413AB5B5E392D14A7B83DCB3A6B91A20C92142395562283B4D446F91D14A4B8ABC90A6A11620D822C230DEF761AFDE863EA8EFA294AE9329256A000678B0A28D0038E023E30BC005144CB7C064E908F58D32D9660FC7A6AFEC21E6C69386E52F3D05E725BEE44AF696001855FB380E4C1331427E41410700FB28BC4D80BA4696CDE5044B86227556A90CFAF087EC5CAECDFDBD5ED1EFC6B4A909CD4199535C8EA98CDED54134A64121BB007F041DCE2797E1CFA6980DB420074D4F35E284B301F6A4F63DB0865496C47DA53285FE05922E5607B3A6CD9C7EB485D0E6AB8AADAAA1C5FD5B04C6BE8089620159F92F9090141B4EB5656AF8B7FA6D6AECA352DAC5CBDF4694E8C7D8466A9B1E326D4F2560D4F2A1F34F1B199C8503ED49E46F528CC92A9464D7C847F15E6B5CEFFD69E2AF73ECC92E47E308929400A08C5D837E9C17DE7AC1DF355D75CA5CB53CF99A3AA073BCE10CAD1FF738C686C92857265F1EE06CADE5ECDED53BB5A17FA2275E453DEA6B507983F7D71A7978FEDCDD171B7FF1EEA61A65BD0A114D6ADD654C16C8B422880D5DD0B1DCDE209884FEFDBB1FDAE121EDB8CF84BA9320CB0F77303776797B5AD20B35BB71AFD23DFE76595994604967C4374C8D45972D795716597BDB72CA465935EB33DB469604F92EC89AF7CDEEBA413B1AF215B99D4DE10A794365EB6398476C6306F2D347F3221F51AB6536C8B2AE30179599F61BA4E080C06D984C1F40F7FEC530D926AC205C0680E13B27D29B78F0F8F8E854F2EF6E7F30727493CBFA635A3FB06823FBC3DF8F40065DA6F7CE2377E0267805F9B1D76F8D6A0CB7AE14B03FC00627709E21F02B0FAB107F4D88625E97165823DB81AD97F6E969D5893DFEEAA9507D6554CCDFBC43AB4FEDA1D76D6AC1273EC7E27CBEC133AFF289628A3E50B5B903119BB014CDAD035C6BEF7455484BA7B54BBA43FA87B1717AD01BAF7252D8F6BEF8B6A072F94896812BB5968511252451A59C46E20EA4E71E231F0CBFB99B944C072171ADF74C25136149E0FB7FB2896C443753B669D4EF0D66E3566EFD0D247CAE72C9AF43973B93916B4671BE815EAB933A25375BF780E00E75322E85A3C59EF216ACE0C96D99B91280DE41B358E9767189DE1943DA1278D4CAD27CBD03F9018962046F6616493467DD2DE4DA51E6D2A838B14CF24AA7E581B38E9B689482FADF721358B6D9E6C460CAA50A75AD069DD566A4C990E93DA0849ADDBCA4C22CE04F4A0D5BACD74E83B1DACB509D55A7B5C1C2A76CF70AFB508422D1E5165C6F508B43DC6B276578152FC9E457F0A94AA0A94DA0AE1DC4A75FDC04FE577181AD099FFC115CD2F095A5424B2B7260C5D2E94977326781E164946E0A898225E9220011E8DF31F6282E6C025F4671726C9E6FBB65BE0A774CAC7E01E7A137C95922825546418DCFB1C7C24CB4CBAFD37185B9EE7E155B4F9CAB40F11289B28EB7D5EE15F52E47B25DF6735D72E05892CE5E517DAEC2C4976B15DAC4B4A97216E4928575F99A96730887C4A2CB9C253F000BBF07693C073B800EEBA784E5313693E085EEDC35304163108929C46B59EFE496DD80B56EFFE0355906AD0E74D0000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202203110753577_createdata', N'QuanLyRenLuyen.Migrations.Configuration', 0x1F8B0800000000000400ED5CDB6EDB3618BE1FB0771074B50DA995A428B005768BCE4936A339B4B113EC2E6024DA2626519A440536863DD92EF6487B8551D689A4248A9465C72986DE2414F99FF89F487EE9BF7FFF33FCB0F25CE3198611F2F1C83C191C9B06C4B6EF20BC18993199BFF9D1FCF0FEDB6F86178EB7321EF2796F937974258E46E69290E0CCB2227B093D100D3C64877EE4CFC9C0F63D0B38BE757A7CFC93757262414AC2A4B40C63781763823CB8F985FE3AF6B10D031203F7DA77A01B65E3F4CB7443D5B8011E8C0260C391F92506F86A7D07F155BC8678902E308D8F2E0254982974E7A60130F6092054D4B3FB084E49E8E3C534A003C09DAD0348E7CD811BC14C85B372BAAA36C7A7893656B9302765C711F13D4D82276F33F358E2F24E46360BF351035E50439375A2F5C6882373BC04DE39825E6E41D310999E8DDD3059D060EB8148E1C8E0E71D157E42DD29F977648C6397C4211C61189310B847C6E7F8C945F627B89EF9BF433CC2B1EBB26253C1E9376E800E7D0EFD008684329A67CA4C9CAA3A164FC712091564243452F52798BC3D358D1B2A1C787261E1358CA9A6C40FE12F10C31010E87C0684C0102734E1C6EE156904DEBFFAF6A7751B3B398944F0ED28CC108CC74B9413A1E14283DF34AEC1EA0AE205598E4CFAA3695CA21574F2918CF03D463457D045248CA136E389334578F980DA2DDEA24008F062B6044893CC0D78468BCD3E0A044BB1EEA0BB99102D5190669741FEF151741B9A852E43DFBBF35D864475D6E30C840B48A8AC7EEBD4A91F87B620F8D02A635A1AE9A516BA119EAF7CD1C82EC5D78F6855BFEA2F92AF81C8B3268E4EDFBDDB451C5D03F26909E21E18B765AB592FEAC9B9DC2CC03AB165CEE89CEEC78C360B1DD2CB951FCC00A2B9ADA4D62DC34C7D1A9778B6F4812C4DF6A3FF3902F26CDC0F9BDE93664D3ADC45F6CC53A242F6CC13ADAA06EDD2B3331ECB802F05AF9D50C9F8F5B3EA92BD4C5CCEBB6B8465BE174C382BD74EA8085B3F6BABCAB45DFF7930BDE7B67DE7ABED3967F43CB57DDFF93ADBBF8E29404C5BF244D129AAB87CA01B54CCE2178D294E09FD90D2A8F8FD4514ED8A28DF3DF47DAD1E5B5FB53A1602D165E5E5A293CB8EFD078069429A81A0C33D44B9F865AF2058253ADC3EB0CBF7775C193FFC3A7BCD47154DC67D9D5DA46C9BFCFE6314F936DA6C9C10B0356D30AFC605760CF59E38D58EEDB3A992D4F151405D9D0A36324F2A8652E25034852587EAAD19CFE9870A271A34304CFC13B8639AA06818224CAA1186B08D02E02AAB2D50D0BC4E4876ADE0297E398701C44948295B687B610A9E422669B3DED062DC4CEE7DF53D4C935BB43434A547E879431B831A975377EA4EAE2695638F5E2635F8AB70B0FA8EA369FF5BDA8F72FFB9EE4E3DAFB59C73DBFDABA75426D5536D5F25EDB1968B494DD28B28BD7B595A5AE91A4257C0304F654F74640657E48B5BD341DE47306B22A3AC808B3E92D09C42D27C875556F4C6BA57713C9E28D3725788355E728B44DAA4D29288D9BA3A5AB23358C56265F75A6B2C496FCCEC73D55875F783CC82F6DB44D121B51AA9424B6EF72A4EAED53A31346B7413CF0DBC71140CD7702F51B59942F1D728FF8C56528D340ABE8AF13B18A8E1145C359042F1D2285F8C367CD849EC232F585BDA273FA41499B4445B5829DC228765580DB88CE13508027A8062701AD988314D411AE337537DE88297D2B0ECA806C150485B70A20760B080C2D7242139F01285113907043C81E4883676BCCA34B66E3464B89C535369A8EE5F9EFCF295C9CFE96A3524454DE5CD485D525DBDA47C6FCEFD92545225B141D10017840AB887B1EFC61E56C556C8A867B7CC2CC16C489D467AC5CC924847D42914D006964831A84E876DA8791B3537DA12A9CA0B6B4EAE72B84A6B68099E5069B82AEE272404D1AF95BC5E96FF74BDBDA9D6287879F3D2FDEC18FBBACF5263C775A86597603CA96C5027C666A240D9903A8DF2B59D25538EEAC408D737F246971E169A6972EFEE2C45EE834E46019574908F7D95F1DB77C5DAB25A75AD54B22AF59215AA7C08E51CA118FDBFC288CE56F150AE29DEDE41D944A3EF9FD2D5FB4C7CF99322B77BD9D8C16C1D77F6EFA11B66EE0A3A34C2B2D5921E98BDA010DADFE6BB0B19CDFC698D2FEEE9D861F7083B75A3CAB1539C52702F8E9FC23173981DF9DAFF46A072064CA7980635CE337292F3DF741D11E80D920983E91FEED8A519969413AE0146731891F46DD83C3D3E3915FEC6E070F0FE5614396ECD915906FAE7F7ED00B0F628B17EEBA3B6F6A32F0375DA70D8025CDF65BD00ADC7CF20B49720FCCE03ABEF7BC04B6D44AA5C7A4FB0035723F3CFCDB23363F2DB63B9F2C8B80DA97B9F19C7C65FDB03ADDA4DA20F56EFE4997D62C577E289557878EE0B5514C276900A15BADA60EFBE888AD86E875A97F486ED560F070EEDB64544D4E0C2FB32150F03EF8BEA2E4378FB02B30B40ED6116161141DB85C6575D0F1A4F622F0724DD8927F1D8D18E45A113DEB25B0BD83BD67147E5968537BE64A9D50727F6EC03BD620FB7861836B5FF2F8128DC27A44BE1A5EF00615C7A38C1DE9CA4D141BE52E7787D8ED119DFD7079C4FCBCFFA87EEED19A9A7E9908781CAAB82301A2E949BEEA7546077E9A51E3D443EF9D415D2C2D88EAC6A42E749C17975AC9AB13732EC5E2B74AF8E959E469C0BC8C17D75CC64282519FCAF0DFD57BB5D1C7AF0C0F081B5482B296EABC98DEB913A078CF9EB6E8246F57B567D1F68BE26F09E121254C974FDC0F4AAEF2234A133FFC312AD29115A942492FF6F09439B4BE5C59C099EFB79611124CAA788A722488043F3FCC790A039B009FD6CC328DAFC85D50370633AE5C27B82CE04DFC624880955197A4F2EF7D09E542619FF0D16919779781B6CFECEB10F15A89828B98BBCC53FC7C8750AB92F6BCE590D249292979D6093BD24C94976B12E28DDF858915066BEA252CFA017B89458748BA7E0197691ED3E82577001EC75FEBCD54CA47D2378B30FCF115884C08B321AE57AFA2BF561C75BBDFF0F4932911A684C0000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202203141507338_updatea', N'QuanLyRenLuyen.Migrations.Configuration', 0x1F8B0800000000000400ED5C5B6FE3BA117E2FD0FF20E8A92D72E2248B03B4817D0EB6CE6E37D85CF6ACBD41DF0246626CA212E54A5410E3A0BFEC3C9C9FD4BF50CAD685142F2225FA9245B12F1B8A1C0E87DF0C67C819FFF7B7DFC73FBFC691F702D30C2578E29F9F9EF91EC4411222BC98F83979FEE1AFFECF3FFDF10FE30F61FCEA3D54FDDE15FDE8489C4DFC2521ABCBD1280B963006D9698C8234C99267721A24F10884C9E8E2ECEC6FA3F3F311A4247C4ACBF3C65F734C500C377FD03FA7090EE08AE420BA4D421865653BFD32DB50F5EE400CB31508E0C4FF2507F866FD15E29B7C0DF1E97680EFBD8F10A0CCCC60F4EC7B00E384004259BDFC96C1194913BC98AD680388E6EB15A4FD9E4194C17209974D77D3D59C5D14AB1935032B52419E9124B62478FEAE14CFA83DBC9790FD5A7C54801FA8A0C9BA58F54688137FBA04F11582712541DF6B4F7A398DD2628042D6A76D0A271EDFEFA4C6098553F1EFC49BE611C95338C1302729884EBC2FF9538482CF703D4FFE05F104E751C4B24D19A7DFB806DAF4254D56302574A2E77231D7A1B89C114F67D4265493D1D0D82EFF1A937717BE774799034F11AC51C3886A469214FE0362980202C32F801098E28226DCC85DE04698FB53127C5E774DA82752B03E8CC21CC17CBA441511AA3054FD7DEF16BCDE40BC20CB894FFFEB7B1FD12B0CAB9692F0378CA8B5A083489A43EB89AFC319C2CB07D42DF38E05A4002FE64B802CC9DC8117B4D8EC648B60B92D5F61B4F99A2DD16A6B5C4E375F1EDB90A116E8639AC45F93A81A2C76799C837401096531D1F79B25791A5830DBC850C26FF551CFB2BA97C0B5A6AB8CF1F1A831415AC3548ADCD61A6D861DD404958CDBDB1D23DD77676CE68D960DD07053504AE0E6569B2AB0756953855F53C6BB99667B3C969BD8F02B7E155448D26590EA0C3BCF8FE62C1F7A8EBFE1337C4E3DD4E1E7F81B3C4EAD75A9ADF61A75737B7E769F9D86E7A6C333B3E1DC56E9AB910755F8867D7B653745BA3B45BF05ED3925C7E8C58F3FEEC251BE05E4F312E40E26D6CFF329D17B096E66B95B807521CB6AA22BBA1F7314F7891F6E92D51C201ABC34D4FAD9BC5942F512CF9709D0C5416ED67F85803EDC72338D73336EE6D30D8E38DA26DE203871E7DCF5B6F74AAE8771CC015CC22FF3FDB19A926357DA41389DE4BD061D4E1CE7B6E71333F8A04714B708FB53CAC23C390DF4E8BC7B38A43A3D2AB98AF5846C5BC1F4C0EE05D969F200307522E760D5E35EB4197CD82B5176113D6E43D9E1FBF3ADA60F9FE66FD9AFB29CD895A3A59D5685FBF759960468B3716C802639B0F9357CC0A1677829B35D577DC543D746F18E5614E1949F897F2EC8A79B767D6435B4C59B7B7E9ABF08D3504581698149104DA951A2AA873011B50AE100AD4064B6DAD6709B6BC2628FEAD9DA5FAEE00AE24281CC0433908D7AB696C5E892D878C4C0498F3249B0AF02812EF26FF6DF6EEFB5D425E832446E2F48A939D8179AD4123E7E2069420CD5969BC41BCDD63791BEB9DD327943D9BBE9EA5EB6D96EABAE6AAC20D72DA1E1CCEC137D96C8DB2DEA3A11B74FB41D0DD2DE2ECAE451920A061D215383022E22358759C72D4237861D214CBB4EB37DD584F45618D38AC4092BCE51B60D07E8184247C0B472CB9E68CB1CBE925F2249D4FB2D8365E09B9541471B2305CD1924EA4BC2260A511E7E02F078A285B381A08C94FCF5BD3DBE8B212B66983B0B8190F249A34D84D97A191DDDBD9320F12662970A5B731FC0E08417B6F4519EE9DDF17EDF86B279E4582F8ED9744133CC8345869C6441EDDB115E1C06A2923D5F8A52EA8A7B4C231F6631DA8598C63ADDB2EE2112DDF5BF281A534FDED6976796C6A8AB464C06DEFB8EB1A47A79D008CD5A60AE85D52928D74252DC1D8B3232709F2C1C286645BCE1D60849EF3299C85C239FEA6AAF3ECBEB6FE3D13669BA6C188F14D9D5E35BB05A21BC60B2ADCB166FB64DB59EFE30B34F408EB734464126C943AEB9AD6722490A16B0F5B538D242F811A519B902043C81E262731AC64237D673519C91D54C2AE744DCBFEAF8AC4616FFDF8E36CB8796F87E25A98F74AD71E1406E6ECB35E64424E115B9F02002A941F6F23489F2189B6648EBA997671A4F5271F5A3A6B34D6D62896C5BCC29D429CA2C91BAD166458D87C62F4A1DEE69B86A5ED839BE9A6691D678D44283E0F60B106C198536B68D905F1DF0C3F12E75600C40AE18B76BECCDDB5B3D97EFF181F6C5B5351A6889FA5A219D053AB4F569922B3918D4ADFFB71E6DC00928D57950B608AD45658F4EF5D0FDEC189B02C85263DB6DA8958FCF3CA9B2D19C4EF996CC52299BCC693429792C99A6D54647B8BB0B5EE8DA0B2F354D2E398FA5C87DB0F14780E04C546DDFA5FE7241CB701566B7D15E8BB5A3F709AB2A51AAE51D6CDA8E66EBB8DB3D07D10A731BD82350D18DD6C428EC15642B3C51DF4EEA68560943BCE9DCB61DB705DE298C846B8176977AF6FA7AA0750D302E43F2EE4A6C2146DF76F13D2A9C171416F1F96C9D11189F161D4E67FF8EA61135D6A4E9700B307A8619D966BCF91767E717AD4AEEE3A9AA1E65591849AE3474A5D5FCBE1D4145332AA4DF99AA679D84CF15406DE6105E91AE71085F27FEAF9B3197DEF53F1FCB6127DE7D4AA170E99D79FF1954FABC997758E1337E0169B004E99F62F0FA6707D557E6A268CA71064843C8F7EF168965756E2F40BBA98FDD0974991C4CE5DE8B9516FDEA327BC96E172591DF9B1168D74EF63104DFB5EECAA3E64314E9ED047A625D5EA5CB6246F5B0F47013BAD65576AE88B68BEA422A5DE2ACA8CE5C1DB8CA9D011A2129C873252ABEFECE15D55DAAB032643E5C1DD3AE0E64A674A9A71EF72AF7E9E7AB3B2FB5D9918564AB6B0E691DED6B631C63C051E9CBB00A175578B6F79A96BD151B18BC911F5B8D8145B18A034828E1F0DD41E18DC16040A9C9E0DCFE63B0139AD7BA9D65EFF7B4166FB32C64304A0E693A0E818EB7878CDEA51C2E2A37AC70E6BE4A63CF451996803C8E020C31DBB1BD99FA120BA30A8BEDEBCCC40F9F120A85ADE3DC9DC62C2BC458ABCB306493A852CB75351A9D251AB289EC56D2A880A68843368D3A5D5753E3D155E2219B489769AC2B02E9AA01912281AB21398E2A11A14041E603EABC255D86ED51D67EF459B672C98E97BBC7BA0E6976FC51EDFD1E6A35EC85B02F24ECA30643557261549662243A37C51562B604F50E985FB7A70E4A86160D89E2B7EE310C38BFA0EE738D9F93CA4B69715475695FC1410242EA34BC4F097A0601A19F0398659B5F937900514EBB7C889F60788DEF73B2CA095D328C9F22CEA2146E8E6EFE4D0509CFF3F87EB5F94D27174BA06CA2E2ADE21EFF3D475158F3FD5172A9A72051F84FE57569B197A4B8365DAC6B4A77093624548AAF76FBE6305E459458768F67E005F6E1ED5B066FE00204EB2AE9454DA47B2378B18FAF1058A420CE4A1ACD78FA27C57018BFFEF43F53C7145AE4610000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202203141510577_updateaa', N'QuanLyRenLuyen.Migrations.Configuration', 0x1F8B0800000000000400ED5C5B6FE3BA117E2FD0FF20E8A92D72E2248B03B4817D0EB6CE6E37D85CF6ACBD41DF0246626CA212E54A5410E3A0BFEC3C9C9FD4BF50CAD685142F2225FA9245B12F1B8A1C0E87DF0C67C819FFF7B7DFC73FBFC691F702D30C2578E29F9F9EF91EC4411222BC98F83979FEE1AFFECF3FFDF10FE30F61FCEA3D54FDDE15FDE8489C4DFC2521ABCBD1280B963006D9698C8234C99267721A24F10884C9E8E2ECEC6FA3F3F311A4247C4ACBF3C65F734C500C377FD03FA7090EE08AE420BA4D421865653BFD32DB50F5EE400CB31508E0C4FF2507F866FD15E29B7C0DF1E97680EFBD8F10A0CCCC60F4EC7B00E384004259BDFC96C1194913BC98AD680388E6EB15A4FD9E4194C17209974D77D3D59C5D14AB1935032B52419E9124B62478FEAE14CFA83DBC9790FD5A7C54801FA8A0C9BA58F54688137FBA04F11582712541DF6B4F7A398DD2628042D6A76D0A271EDFEFA4C6098553F1EFC49BE611C95338C1302729884EBC2FF9538482CF703D4FFE05F104E751C4B24D19A7DFB806DAF4254D56302574A2E77231D7A1B89C114F67D4265493D1D0D82EFF1A937717BE774799034F11AC51C3886A469214FE0362980202C32F801098E28226DCC85DE04698FB53127C5E774DA82752B03E8CC21CC17CBA441511AA3054FD7DEF16BCDE40BC20CB894FFFEB7B1FD12B0CAB9692F0378CA8B5A083489A43EB89AFC319C2CB07D42DF38E05A4002FE64B802CC9DC8117B4D8EC648B60B92D5F61B4F99A2DD16A6B5C4E375F1EDB90A116E8639AC45F93A81A2C76799C837401096531D1F79B25791A5830DBC850C26FF551CFB2BA97C0B5A6AB8CF1F1A831415AC3548ADCD61A6D861DD404958CDBDB1D23DD77676CE68D960DD07053504AE0E6569B2AB0756953855F53C6BB99667B3C969BD8F02B7E155448D26590EA0C3BCF8FE62C1F7A8EBFE1337C4E3DD4E1E7F81B3C4EAD75A9ADF61A75737B7E769F9D86E7A6C333B3E1DC56E9AB910755F8867D7B653745BA3B45BF05ED3925C7E8C58F3FEEC251BE05E4F312E40E26D6CFF329D17B096E66B95B807521CB6AA22BBA1F7314F7891F6E92D51C201ABC34D4FAD9BC5942F512CF9709D0C5416ED67F85803EDC72338D73336EE6D30D8E38DA26DE203871E7DCF5B6F74AAE8771CC015CC22FF3FDB19A926357DA41389DE4BD061D4E1CE7B6E71333F8A04714B708FB53CAC23C390DF4E8BC7B38A43A3D2AB98AF5846C5BC1F4C0EE05D969F200307522E760D5E35EB4197CD82B5176113D6E43D9E1FBF3ADA60F9FE66FD9AFB29CD895A3A59D5685FBF759960468B3716C802639B0F9357CC0A1677829B35D577DC543D746F18E5614E1949F897F2EC8A79B767D6435B4C59B7B7E9ABF08D3504581698149104DA951A2AA873011B50AE100AD4064B6DAD6709B6BC2628FEAD9DA5FAEE00AE24281CC0433908D7AB696C5E892D878C4C0498F3249B0AF02812EF26FF6DF6EEFB5D425E832446E2F48A939D8179AD4123E7E2069420CD5969BC41BCDD63791BEB9DD327943D9BBE9EA5EB6D96EABAE6AAC20D72DA1E1CCEC137D96C8DB2DEA3A11B74FB41D0DD2DE2ECAE451920A061D215383022E22358759C72D4237861D214CBB4EB37DD584F45618D38AC4092BCE51B60D07E8184247C0B472CB9E68CB1CBE925F2249D4FB2D8365E09B9541471B2305CD1924EA4BC2260A511E7E02F078A285B381A08C94FCF5BD3DBE8B212B66983B0B8190F249A34D84D97A191DDDBD9320F12662970A5B731FC0E08417B6F4519EE9DDF17EDF86B279E4582F8ED9744133CC8345869C6441EDDB115E1C06A2923D5F8A52EA8A7B4C231F6631DA8598C63ADDB2EE2112DDF5BF281A534FDED6976796C6A8AB464C06DEFB8EB1A47A79D008CD5A60AE85D52928D74252DC1D8B3232709F2C1C286645BCE1D60849EF3299C85C239FEA6AAF3ECBEB6FE3D13669BA6C188F14D9D5E35BB05A21BC60B2ADCB166FB64DB59EFE30B34F408EB734464126C943AEB9AD6722490A16B0F5B538D242F811A519B902043C81E262731AC64237D673519C91D54C2AE744DCBFEAF8AC4616FFDF8E36CB8796F87E25A98F74AD71E1406E6ECB35E64424E115B9F02002A941F6F23489F2189B6648EBA997671A4F5271F5A3A6B34D6D62896C5BCC29D429CA2C91BAD166458D87C62F4A1DEE69B86A5ED839BE9A6691D678D44283E0F60B106C198536B68D905F1DF0C3F12E75600C40AE18B76BECCDDB5B3D97EFF181F6C5B5351A6889FA5A219D053AB4F569922B3918D4ADFFB71E6DC00928D57950B608AD45658F4EF5D0FDEC189B02C85263DB6DA8958FCF3CA9B2D19C4EF996CC52299BCC693429792C99A6D54647B8BB0B5EE8DA0B2F354D2E398FA5C87DB0F14780E04C546DDFA5FE7241CB701566B7D15E8BB5A3F709AB2A51AAE51D6CDA8E66EBB8DB3D07D10A731BD82350D18DD6C428EC15642B3C51DF4EEA68560943BCE9DCB61DB705DE298C846B8176977AF6FA7AA0750D302E43F2EE4A6C2146DF76F13D2A9C171416F1F96C9D11189F161D4E67FF8EA61135D6A4E9700B307A8619D966BCF91767E717AD4AEEE3A9AA1E65591849AE3474A5D5FCBE1D4145332AA4DF99AA679D84CF15406DE6105E91AE71085F27FEAF9B3197DEF53F1FCB6127DE7D4AA170E99D79FF1954FABC997758E1337E0169B004E99F62F0FA6707D557E6A268CA71064843C8F7EF168965756E2F40BBA98FDD0974991C4CE5DE8B9516FDEA327BC96E172591DF9B1168D74EF63104DFB5EECAA3E64314E9ED047A625D5EA5CB6246F5B0F47013BAD65576AE88B68BEA422A5DE2ACA8CE5C1DB8CA9D011A2129C873252ABEFECE15D55DAAB032643E5C1DD3AE0E64A674A9A71EF72AF7E9E7AB3B2FB5D9918564AB6B0E691DED6B631C63C051E9CBB00A175578B6F79A96BD151B18BC911F5B8D8145B18A034828E1F0DD41E18DC16040A9C9E0DCFE63B0139AD7BA9D65EFF7B4166FB32C64304A0E693A0E818EB7878CDEA51C2E2A37AC70E6BE4A63CF451996803C8E020C31DBB1BD99FA120BA30A8BEDEBCCC40F9F120A85ADE3DC9DC62C2BC458ABCB306493A852CB75351A9D251AB289EC56D2A880A68843368D3A5D5753E3D155E2219B489769AC2B02E9AA01912281AB21398E2A11A14041E603EABC255D86ED51D67EF459B672C98E97BBC7BA0E6976FC51EDFD1E6A35EC85B02F24ECA30643557261549662243A37C51562B604F50E985FB7A70E4A86160D89E2B7EE310C38BFA0EE738D9F93CA4B69715475695FC1410242EA34BC4F097A0601A19F0398659B5F937900514EBB7C889F60788DEF73B2CA095D328C9F22CEA2146E8E6EFE4D0509CFF3F87EB5F94D27174BA06CA2E2ADE21EFF3D475158F3FD5172A9A72051F84FE57569B197A4B8365DAC6B4A77093624548AAF76FBE6305E459458768F67E005F6E1ED5B066FE00204EB2AE9454DA47B2378B18FAF1058A420CE4A1ACD78FA27C57018BFFEF43F53C7145AE4610000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202203170411470_a', N'QuanLyRenLuyen.Migrations.Configuration', 0x1F8B0800000000000400ED5C5B6FE3BA117E2FD0FF20E8A92D72E2248B03B4817D0EB6CE6E37D85CF6ACBD41DF0246626CA212E54A5410E3A0BFEC3C9C9FD4BF50CAD685142F2225FA9245B12F1B8A1C0E87DF0C67C819FFF7B7DFC73FBFC691F702D30C2578E29F9F9EF91EC4411222BC98F83979FEE1AFFECF3FFDF10FE30F61FCEA3D54FDDE15FDE8489C4DFC2521ABCBD1280B963006D9698C8234C99267721A24F10884C9E8E2ECEC6FA3F3F311A4247C4ACBF3C65F734C500C377FD03FA7090EE08AE420BA4D421865653BFD32DB50F5EE400CB31508E0C4FF2507F866FD15E29B7C0DF1E97680EFBD8F10A0CCCC60F4EC7B00E384004259BDFC96C1194913BC98AD680388E6EB15A4FD9E4194C17209974D77D3D59C5D14AB1935032B52419E9124B62478FEAE14CFA83DBC9790FD5A7C54801FA8A0C9BA58F54688137FBA04F11582712541DF6B4F7A398DD2628042D6A76D0A271EDFEFA4C6098553F1EFC49BE611C95338C1302729884EBC2FF9538482CF703D4FFE05F104E751C4B24D19A7DFB806DAF4254D56302574A2E77231D7A1B89C114F67D4265493D1D0D82EFF1A937717BE774799034F11AC51C3886A469214FE0362980202C32F801098E28226DCC85DE04698FB53127C5E774DA82752B03E8CC21CC17CBA441511AA3054FD7DEF16BCDE40BC20CB894FFFEB7B1FD12B0CAB9692F0378CA8B5A083489A43EB89AFC319C2CB07D42DF38E05A4002FE64B802CC9DC8117B4D8EC648B60B92D5F61B4F99A2DD16A6B5C4E375F1EDB90A116E8639AC45F93A81A2C76799C837401096531D1F79B25791A5830DBC850C26FF551CFB2BA97C0B5A6AB8CF1F1A831415AC3548ADCD61A6D861DD404958CDBDB1D23DD77676CE68D960DD07053504AE0E6569B2AB0756953855F53C6BB99667B3C969BD8F02B7E155448D26590EA0C3BCF8FE62C1F7A8EBFE1337C4E3DD4E1E7F81B3C4EAD75A9ADF61A75737B7E769F9D86E7A6C333B3E1DC56E9AB910755F8867D7B653745BA3B45BF05ED3925C7E8C58F3FEEC251BE05E4F312E40E26D6CFF329D17B096E66B95B807521CB6AA22BBA1F7314F7891F6E92D51C201ABC34D4FAD9BC5942F512CF9709D0C5416ED67F85803EDC72338D73336EE6D30D8E38DA26DE203871E7DCF5B6F74AAE8771CC015CC22FF3FDB19A926357DA41389DE4BD061D4E1CE7B6E71333F8A04714B708FB53CAC23C390DF4E8BC7B38A43A3D2AB98AF5846C5BC1F4C0EE05D969F200307522E760D5E35EB4197CD82B5176113D6E43D9E1FBF3ADA60F9FE66FD9AFB29CD895A3A59D5685FBF759960468B3716C802639B0F9357CC0A1677829B35D577DC543D746F18E5614E1949F897F2EC8A79B767D6435B4C59B7B7E9ABF08D3504581698149104DA951A2AA873011B50AE100AD4064B6DAD6709B6BC2628FEAD9DA5FAEE00AE24281CC0433908D7AB696C5E892D878C4C0498F3249B0AF02812EF26FF6DF6EEFB5D425E832446E2F48A939D8179AD4123E7E2069420CD5969BC41BCDD63791BEB9DD327943D9BBE9EA5EB6D96EABAE6AAC20D72DA1E1CCEC137D96C8DB2DEA3A11B74FB41D0DD2DE2ECAE451920A061D215383022E22358759C72D4237861D214CBB4EB37DD584F45618D38AC4092BCE51B60D07E8184247C0B472CB9E68CB1CBE925F2249D4FB2D8365E09B9541471B2305CD1924EA4BC2260A511E7E02F078A285B381A08C94FCF5BD3DBE8B212B66983B0B8190F249A34D84D97A191DDDBD9320F12662970A5B731FC0E08417B6F4519EE9DDF17EDF86B279E4582F8ED9744133CC8345869C6441EDDB115E1C06A2923D5F8A52EA8A7B4C231F6631DA8598C63ADDB2EE2112DDF5BF281A534FDED6976796C6A8AB464C06DEFB8EB1A47A79D008CD5A60AE85D52928D74252DC1D8B3232709F2C1C286645BCE1D60849EF3299C85C239FEA6AAF3ECBEB6FE3D13669BA6C188F14D9D5E35BB05A21BC60B2ADCB166FB64DB59EFE30B34F408EB734464126C943AEB9AD6722490A16B0F5B538D242F811A519B902043C81E262731AC64237D673519C91D54C2AE744DCBFEAF8AC4616FFDF8E36CB8796F87E25A98F74AD71E1406E6ECB35E64424E115B9F02002A941F6F23489F2189B6648EBA997671A4F5271F5A3A6B34D6D62896C5BCC29D429CA2C91BAD166458D87C62F4A1DEE69B86A5ED839BE9A6691D678D44283E0F60B106C198536B68D905F1DF0C3F12E75600C40AE18B76BECCDDB5B3D97EFF181F6C5B5351A6889FA5A219D053AB4F569922B3918D4ADFFB71E6DC00928D57950B608AD45658F4EF5D0FDEC189B02C85263DB6DA8958FCF3CA9B2D19C4EF996CC52299BCC693429792C99A6D54647B8BB0B5EE8DA0B2F354D2E398FA5C87DB0F14780E04C546DDFA5FE7241CB701566B7D15E8BB5A3F709AB2A51AAE51D6CDA8E66EBB8DB3D07D10A731BD82350D18DD6C428EC15642B3C51DF4EEA68560943BCE9DCB61DB705DE298C846B8176977AF6FA7AA0750D302E43F2EE4A6C2146DF76F13D2A9C171416F1F96C9D11189F161D4E67FF8EA61135D6A4E9700B307A8619D966BCF91767E717AD4AEEE3A9AA1E65591849AE3474A5D5FCBE1D4145332AA4DF99AA679D84CF15406DE6105E91AE71085F27FEAF9B3197DEF53F1FCB6127DE7D4AA170E99D79FF1954FABC997758E1337E0169B004E99F62F0FA6707D557E6A268CA71064843C8F7EF168965756E2F40BBA98FDD0974991C4CE5DE8B9516FDEA327BC96E172591DF9B1168D74EF63104DFB5EECAA3E64314E9ED047A625D5EA5CB6246F5B0F47013BAD65576AE88B68BEA422A5DE2ACA8CE5C1DB8CA9D011A2129C873252ABEFECE15D55DAAB032643E5C1DD3AE0E64A674A9A71EF72AF7E9E7AB3B2FB5D9918564AB6B0E691DED6B631C63C051E9CBB00A175578B6F79A96BD151B18BC911F5B8D8145B18A034828E1F0DD41E18DC16040A9C9E0DCFE63B0139AD7BA9D65EFF7B4166FB32C64304A0E693A0E818EB7878CDEA51C2E2A37AC70E6BE4A63CF451996803C8E020C31DBB1BD99FA120BA30A8BEDEBCCC40F9F120A85ADE3DC9DC62C2BC458ABCB306493A852CB75351A9D251AB289EC56D2A880A68843368D3A5D5753E3D155E2219B489769AC2B02E9AA01912281AB21398E2A11A14041E603EABC255D86ED51D67EF459B672C98E97BBC7BA0E6976FC51EDFD1E6A35EC85B02F24ECA30643557261549662243A37C51562B604F50E985FB7A70E4A86160D89E2B7EE310C38BFA0EE738D9F93CA4B69715475695FC1410242EA34BC4F097A0601A19F0398659B5F937900514EBB7C889F60788DEF73B2CA095D328C9F22CEA2146E8E6EFE4D0509CFF3F87EB5F94D27174BA06CA2E2ADE21EFF3D475158F3FD5172A9A72051F84FE57569B197A4B8365DAC6B4A77093624548AAF76FBE6305E459458768F67E005F6E1ED5B066FE00204EB2AE9454DA47B2378B18FAF1058A420CE4A1ACD78FA27C57018BFFEF43F53C7145AE4610000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[CoVanHocTaps] ON 

INSERT [dbo].[CoVanHocTaps] ([IdCoVanHocTap], [MaCVHT], [MatKhau], [HoTen]) VALUES (1, N'CV1', N'123456', N'Cố Vấn 1')
SET IDENTITY_INSERT [dbo].[CoVanHocTaps] OFF
GO
SET IDENTITY_INSERT [dbo].[HocKies] ON 

INSERT [dbo].[HocKies] ([IdHocKy], [Ten]) VALUES (1, N'I')
INSERT [dbo].[HocKies] ([IdHocKy], [Ten]) VALUES (2, N'II')
INSERT [dbo].[HocKies] ([IdHocKy], [Ten]) VALUES (3, N'III')
SET IDENTITY_INSERT [dbo].[HocKies] OFF
GO
SET IDENTITY_INSERT [dbo].[LopTaiChinhs] ON 

INSERT [dbo].[LopTaiChinhs] ([IdLopTaiChinh], [TenLop]) VALUES (1, N'1410A01')
INSERT [dbo].[LopTaiChinhs] ([IdLopTaiChinh], [TenLop]) VALUES (2, N'1410A02')
INSERT [dbo].[LopTaiChinhs] ([IdLopTaiChinh], [TenLop]) VALUES (3, N'1410A03')
SET IDENTITY_INSERT [dbo].[LopTaiChinhs] OFF
GO
/****** Object:  Index [IX_IdHocKy]    Script Date: 3/23/2022 8:11:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_IdHocKy] ON [dbo].[ChamDiemRenLuyens]
(
	[IdHocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdSinhVien]    Script Date: 3/23/2022 8:11:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_IdSinhVien] ON [dbo].[ChamDiemRenLuyens]
(
	[IdSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdHocKy]    Script Date: 3/23/2022 8:11:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_IdHocKy] ON [dbo].[DiemRenLuyens]
(
	[IdHocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdSinhVien]    Script Date: 3/23/2022 8:11:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_IdSinhVien] ON [dbo].[DiemRenLuyens]
(
	[IdSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdLopTaiChinh]    Script Date: 3/23/2022 8:11:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_IdLopTaiChinh] ON [dbo].[SinhViens]
(
	[IdLopTaiChinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChamDiemRenLuyens] ADD  DEFAULT ((0)) FOR [IdHocKy]
GO
ALTER TABLE [dbo].[DiemRenLuyens] ADD  DEFAULT ((0)) FOR [IdHocKy]
GO
ALTER TABLE [dbo].[ChamDiemRenLuyens]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ChamDiemRenLuyens_dbo.HocKies_IdHocKy] FOREIGN KEY([IdHocKy])
REFERENCES [dbo].[HocKies] ([IdHocKy])
GO
ALTER TABLE [dbo].[ChamDiemRenLuyens] CHECK CONSTRAINT [FK_dbo.ChamDiemRenLuyens_dbo.HocKies_IdHocKy]
GO
ALTER TABLE [dbo].[ChamDiemRenLuyens]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ChamDiemRenLuyens_dbo.SinhViens_IdSinhVien] FOREIGN KEY([IdSinhVien])
REFERENCES [dbo].[SinhViens] ([IdSinhVien])
GO
ALTER TABLE [dbo].[ChamDiemRenLuyens] CHECK CONSTRAINT [FK_dbo.ChamDiemRenLuyens_dbo.SinhViens_IdSinhVien]
GO
ALTER TABLE [dbo].[DiemRenLuyens]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DiemRenLuyens_dbo.HocKies_IdHocKy] FOREIGN KEY([IdHocKy])
REFERENCES [dbo].[HocKies] ([IdHocKy])
GO
ALTER TABLE [dbo].[DiemRenLuyens] CHECK CONSTRAINT [FK_dbo.DiemRenLuyens_dbo.HocKies_IdHocKy]
GO
ALTER TABLE [dbo].[DiemRenLuyens]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DiemRenLuyens_dbo.SinhViens_IdSinhVien] FOREIGN KEY([IdSinhVien])
REFERENCES [dbo].[SinhViens] ([IdSinhVien])
GO
ALTER TABLE [dbo].[DiemRenLuyens] CHECK CONSTRAINT [FK_dbo.DiemRenLuyens_dbo.SinhViens_IdSinhVien]
GO
ALTER TABLE [dbo].[SinhViens]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SinhViens_dbo.LopTaiChinhs_LopTaiChinh_IdLopTaiChinh] FOREIGN KEY([IdLopTaiChinh])
REFERENCES [dbo].[LopTaiChinhs] ([IdLopTaiChinh])
GO
ALTER TABLE [dbo].[SinhViens] CHECK CONSTRAINT [FK_dbo.SinhViens_dbo.LopTaiChinhs_LopTaiChinh_IdLopTaiChinh]
GO
USE [master]
GO
ALTER DATABASE [DBQlRenLuyen] SET  READ_WRITE 
GO
