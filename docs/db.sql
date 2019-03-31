USE [master]
GO
/****** Object:  Database [FP_Exam_V2]    Script Date: 2019/03/31 8:14:36 ******/
CREATE DATABASE [FP_Exam_V2]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FP_Exam_V2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FP_Exam_V2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET ARITHABORT OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FP_Exam_V2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FP_Exam_V2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FP_Exam_V2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FP_Exam_V2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FP_Exam_V2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FP_Exam_V2] SET RECOVERY FULL 
GO
ALTER DATABASE [FP_Exam_V2] SET  MULTI_USER 
GO
ALTER DATABASE [FP_Exam_V2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FP_Exam_V2] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FP_Exam_V2', N'ON'
GO
USE [FP_Exam_V2]
GO
/****** Object:  Table [dbo].[FP_Course_ChapterInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Course_ChapterInfo](
	[id] [int] NOT NULL,
	[courseid] [int] NULL,
	[name] [nvarchar](150) NULL,
	[videos] [int] NULL,
	[display] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Course_CourseInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Course_CourseInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[typelist] [nvarchar](250) NULL,
	[teacherid] [nvarchar](250) NULL,
	[name] [nvarchar](250) NULL,
	[price] [float] NULL,
	[old_price] [float] NULL,
	[memberpice] [float] NULL,
	[content] [nvarchar](max) NULL,
	[img] [nvarchar](250) NULL,
	[attachid] [nvarchar](60) NULL,
	[istop] [int] NULL,
	[learns] [int] NULL,
	[buys] [nvarchar](250) NULL,
	[views] [int] NULL,
	[postdatetime] [datetime] NULL,
	[favorites] [nvarchar](250) NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Course_VideoInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Course_VideoInfo](
	[id] [int] NOT NULL,
	[courseid] [int] NULL,
	[chapterid] [int] NULL,
	[name] [nvarchar](250) NULL,
	[videofile] [nvarchar](250) NULL,
	[img] [nvarchar](250) NULL,
	[videotime] [int] NULL,
	[attachid] [nvarchar](150) NULL,
	[postdatetime] [datetime] NULL,
	[display] [int] NULL,
	[studys] [nvarchar](max) NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[typelist] [nvarchar](255) NULL,
	[name] [nvarchar](100) NULL,
	[type] [int] NULL,
	[total] [float] NULL,
	[passmark] [float] NULL,
	[examtime] [int] NULL,
	[islimit] [int] NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[repeats] [int] NULL,
	[showanswer] [int] NULL,
	[allowdelete] [int] NULL,
	[display] [int] NULL,
	[postdatetime] [datetime] NULL,
	[examtype] [int] NULL,
	[examroles] [nvarchar](max) NULL,
	[examdeparts] [nvarchar](max) NULL,
	[examuser] [nvarchar](max) NULL,
	[credits] [int] NULL,
	[exams] [int] NULL,
	[score] [float] NULL,
	[views] [int] NULL,
	[questions] [int] NULL,
	[status] [int] NULL,
	[papers] [int] NULL,
	[title] [nvarchar](200) NULL,
	[address] [nvarchar](250) NULL,
	[opentime] [nvarchar](100) NULL,
	[description] [nvarchar](100) NULL,
	[content] [nvarchar](max) NULL,
	[iscopy] [int] NULL,
	[isvideo] [int] NULL,
	[iswitch] [int] NULL,
	[issign] [int] NULL,
	[client] [nvarchar](150) NULL,
	[papertype] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamLogInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamLogInfo](
	[id] [int] NOT NULL,
	[sortid] [int] NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[answers] [int] NULL,
	[qidlist] [nvarchar](max) NULL,
	[answerlist] [nvarchar](max) NULL,
	[scorelist] [nvarchar](max) NULL,
	[wrongs] [int] NULL,
	[curwrongs] [int] NULL,
	[wronglist] [nvarchar](max) NULL,
	[notes] [int] NULL,
	[curnotes] [int] NULL,
	[notelist] [nvarchar](max) NULL,
	[favs] [int] NULL,
	[curfavs] [int] NULL,
	[favlist] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamNote]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamNote](
	[id] [int] NOT NULL,
	[qid] [int] NULL,
	[uid] [int] NULL,
	[note] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamQuestion]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamQuestion](
	[id] [int] NOT NULL,
	[kid] [nvarchar](150) NULL,
	[parentid] [nvarchar](150) NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[typelist] [nvarchar](250) NULL,
	[type] [nvarchar](60) NULL,
	[display] [int] NULL,
	[title] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[answer] [nvarchar](max) NULL,
	[upperflg] [int] NULL,
	[orderflg] [int] NULL,
	[answerkey] [nvarchar](200) NULL,
	[ascount] [int] NULL,
	[explain] [nvarchar](max) NULL,
	[difficulty] [int] NULL,
	[postdatetime] [datetime] NULL,
	[attachid] [nvarchar](100) NULL,
	[exams] [int] NULL,
	[wrongs] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamResult]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamResult](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[examid] [int] NULL,
	[examname] [nvarchar](100) NULL,
	[examtime] [int] NULL,
	[examtype] [int] NULL,
	[showanswer] [int] NULL,
	[allowdelete] [int] NULL,
	[total] [float] NULL,
	[passmark] [float] NULL,
	[score1] [float] NULL,
	[score2] [float] NULL,
	[score] [float] NULL,
	[utime] [int] NULL,
	[islimit] [int] NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[examdatetime] [datetime] NULL,
	[credits] [int] NULL,
	[questions] [int] NULL,
	[wrongs] [int] NULL,
	[unanswer] [int] NULL,
	[exp] [int] NULL,
	[getcredits] [int] NULL,
	[exnote] [nvarchar](200) NULL,
	[attachid] [nvarchar](50) NULL,
	[status] [int] NULL,
	[paper] [int] NULL,
	[ip] [nvarchar](30) NULL,
	[mac] [nvarchar](50) NULL,
	[isvideo] [int] NULL,
	[client] [nvarchar](60) NULL,
	[papertype] [int] NULL,
	[title] [nvarchar](250) NULL,
	[address] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamResultTopic]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamResultTopic](
	[id] [int] NOT NULL,
	[resultid] [int] NULL,
	[type] [nvarchar](60) NULL,
	[title] [nvarchar](100) NULL,
	[display] [int] NULL,
	[perscore] [float] NULL,
	[score] [float] NULL,
	[questions] [int] NULL,
	[wrongs] [int] NULL,
	[questionlist] [nvarchar](max) NULL,
	[answerlist] [nvarchar](max) NULL,
	[scorelist] [nvarchar](max) NULL,
	[correctlist] [nvarchar](max) NULL,
	[paper] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamSignInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamSignInfo](
	[id] [int] NOT NULL,
	[ikey] [nvarchar](120) NULL,
	[examid] [int] NULL,
	[uid] [int] NULL,
	[signer] [nvarchar](max) NULL,
	[img] [nvarchar](200) NULL,
	[payimg] [nvarchar](200) NULL,
	[attachid] [nvarchar](100) NULL,
	[reason] [nvarchar](max) NULL,
	[postdatetime] [datetime] NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamTopic]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamTopic](
	[id] [int] NOT NULL,
	[examid] [int] NULL,
	[type] [nvarchar](60) NULL,
	[title] [nvarchar](100) NULL,
	[display] [int] NULL,
	[questions] [int] NULL,
	[curquestions] [int] NULL,
	[questionlist] [nvarchar](max) NULL,
	[perscore] [float] NULL,
	[randomsort] [nvarchar](max) NULL,
	[randomcount] [nvarchar](max) NULL,
	[randoms] [int] NULL,
	[paper] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExpInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExpInfo](
	[id] [int] NOT NULL,
	[examid] [int] NULL,
	[scorelower] [int] NULL,
	[scoreupper] [int] NULL,
	[exp] [int] NULL,
	[credits] [int] NULL,
	[comment] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_SortQuestion]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_SortQuestion](
	[id] [int] NOT NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[type] [nvarchar](100) NULL,
	[typeid] [int] NULL,
	[counts] [int] NULL,
	[questionlist] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_TestInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_TestInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[typelist] [nvarchar](250) NULL,
	[name] [nvarchar](250) NULL,
	[repeats] [int] NULL,
	[client] [nvarchar](60) NULL,
	[flag_roles] [nvarchar](250) NULL,
	[flag_departs] [nvarchar](250) NULL,
	[flag_users] [nvarchar](250) NULL,
	[questions] [nvarchar](250) NULL,
	[sorts] [nvarchar](250) NULL,
	[counts] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_TestResult]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_TestResult](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[testid] [int] NULL,
	[total] [int] NULL,
	[wrong] [int] NULL,
	[ip] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_AttachInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_AttachInfo](
	[id] [int] NOT NULL,
	[attachid] [nvarchar](50) NULL,
	[parentid] [int] NULL,
	[platform] [nvarchar](150) NULL,
	[app] [nvarchar](50) NULL,
	[postid] [int] NULL,
	[uid] [int] NULL,
	[name] [nvarchar](250) NULL,
	[filename] [nvarchar](200) NULL,
	[filetype] [nvarchar](100) NULL,
	[filesize] [int] NULL,
	[description] [nvarchar](200) NULL,
	[uploadtime] [datetime] NULL,
	[downloads] [int] NULL,
	[reads] [int] NULL,
	[issync] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_AttachType]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_AttachType](
	[id] [int] NOT NULL,
	[extension] [nvarchar](10) NULL,
	[maxsize] [int] NULL,
	[type] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_CacheInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_CacheInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[key] [nvarchar](50) NULL,
	[expires] [int] NULL,
	[cachedatetime] [datetime] NULL,
	[file] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_ChannelInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_ChannelInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[display] [int] NULL,
	[markup] [nvarchar](20) NULL,
	[sortapps] [nvarchar](250) NULL,
	[description] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_CreditInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_CreditInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[type] [int] NULL,
	[credits] [int] NULL,
	[postdatetime] [datetime] NULL,
	[doid] [int] NULL,
	[doname] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_Department]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_Department](
	[id] [int] NOT NULL,
	[keyid] [nvarchar](100) NULL,
	[parentid] [int] NULL,
	[parentlist] [nvarchar](200) NULL,
	[departlist] [nvarchar](250) NULL,
	[name] [nvarchar](100) NULL,
	[longname] [nvarchar](250) NULL,
	[shortname] [nvarchar](100) NULL,
	[markup] [nvarchar](100) NULL,
	[types] [nvarchar](150) NULL,
	[manager] [nvarchar](250) NULL,
	[departer] [nvarchar](250) NULL,
	[usercount] [int] NULL,
	[description] [nvarchar](100) NULL,
	[display] [int] NULL,
	[subcounts] [int] NULL,
	[posts] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_DesktopInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_DesktopInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[app] [nvarchar](50) NULL,
	[parentid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[markup] [nvarchar](60) NULL,
	[platform] [nvarchar](100) NULL,
	[description] [nvarchar](200) NULL,
	[icon] [nvarchar](200) NULL,
	[attach_icon] [nvarchar](100) NULL,
	[url] [nvarchar](200) NULL,
	[target] [nvarchar](20) NULL,
	[desk] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[hidden] [int] NULL,
	[display] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_GradeInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_GradeInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](200) NULL,
	[description] [nvarchar](200) NULL,
	[departid] [nvarchar](250) NULL,
	[display] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_MenuInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_MenuInfo](
	[id] [int] NOT NULL,
	[parentid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[platform] [nvarchar](100) NULL,
	[lefturl] [nvarchar](200) NULL,
	[righturl] [nvarchar](200) NULL,
	[display] [int] NULL,
	[hidden] [int] NULL,
	[system] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_MsgTempInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_MsgTempInfo](
	[id] [int] NOT NULL,
	[type] [int] NULL,
	[name] [nvarchar](50) NULL,
	[markup] [nvarchar](20) NULL,
	[subject] [nvarchar](50) NULL,
	[content] [nvarchar](max) NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_Permission]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_Permission](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[flagpage] [nvarchar](max) NULL,
	[isadd] [int] NULL,
	[isupdate] [int] NULL,
	[isdelete] [int] NULL,
	[isaudit] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_RoleInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_RoleInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](60) NULL,
	[markup] [nvarchar](60) NULL,
	[description] [nvarchar](100) NULL,
	[desktopurl] [nvarchar](100) NULL,
	[sorts] [nvarchar](max) NULL,
	[menus] [nvarchar](250) NULL,
	[desktop] [nvarchar](max) NULL,
	[permission] [nvarchar](250) NULL,
	[isadmin] [int] NULL,
	[isupload] [int] NULL,
	[isdownload] [int] NULL,
	[issms] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_SessionInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SessionInfo](
	[id] [int] NOT NULL,
	[sid] [nvarchar](60) NULL,
	[uid] [int] NULL,
	[username] [nvarchar](60) NULL,
	[password] [nvarchar](60) NULL,
	[realname] [nvarchar](60) NULL,
	[avatar] [nvarchar](250) NULL,
	[platform] [nvarchar](50) NULL,
	[token] [nvarchar](60) NULL,
	[address] [nvarchar](250) NULL,
	[roleid] [int] NULL,
	[rolename] [nvarchar](100) NULL,
	[departid] [int] NULL,
	[departname] [nvarchar](150) NULL,
	[createtime] [datetime] NULL,
	[updatetime] [datetime] NULL,
	[timeout] [int] NULL,
	[invisible] [int] NULL,
	[state] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_SortAppInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SortAppInfo](
	[id] [int] NOT NULL,
	[guid] [nvarchar](60) NULL,
	[type] [nvarchar](30) NULL,
	[installpath] [nvarchar](60) NULL,
	[name] [nvarchar](60) NULL,
	[markup] [nvarchar](60) NULL,
	[indexpage] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_SortInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SortInfo](
	[id] [int] NOT NULL,
	[channelid] [int] NULL,
	[appid] [int] NULL,
	[display] [int] NULL,
	[parentid] [int] NULL,
	[parentlist] [nvarchar](200) NULL,
	[name] [nvarchar](100) NULL,
	[markup] [nvarchar](60) NULL,
	[pagesize] [int] NULL,
	[description] [nvarchar](200) NULL,
	[icon] [nvarchar](100) NULL,
	[attach_icon] [nvarchar](100) NULL,
	[img] [nvarchar](100) NULL,
	[attach_img] [nvarchar](100) NULL,
	[subcounts] [int] NULL,
	[types] [nvarchar](200) NULL,
	[showtype] [int] NULL,
	[otherurl] [nvarchar](200) NULL,
	[posts] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_SysLogInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SysLogInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[name] [nvarchar](100) NULL,
	[content] [nvarchar](200) NULL,
	[ip] [nvarchar](30) NULL,
	[postdatetime] [datetime] NULL,
	[status] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_TaskInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_TaskInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NULL,
	[key] [nvarchar](50) NULL,
	[timeofday] [int] NULL,
	[minutes] [int] NULL,
	[type] [nvarchar](50) NULL,
	[lastexecuted] [nvarchar](20) NULL,
	[enabled] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_TypeInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_TypeInfo](
	[id] [int] NOT NULL,
	[parentid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[markup] [nvarchar](50) NULL,
	[type] [int] NULL,
	[required] [int] NULL,
	[description] [nvarchar](60) NULL,
	[otherurl] [nvarchar](250) NULL,
	[display] [int] NULL,
	[img] [nvarchar](200) NULL,
	[attach_img] [nvarchar](100) NULL,
	[subcounts] [int] NULL,
	[sortids] [nvarchar](250) NULL,
	[posts] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_UserInfo]    Script Date: 2019/03/31 8:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_UserInfo](
	[id] [int] NOT NULL,
	[roleid] [int] NULL,
	[roles] [nvarchar](250) NULL,
	[departid] [int] NULL,
	[departname] [nvarchar](100) NULL,
	[departlist] [nvarchar](250) NULL,
	[departs] [nvarchar](250) NULL,
	[display] [int] NULL,
	[gradeid] [int] NULL,
	[types] [nvarchar](100) NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](32) NULL,
	[password2] [nvarchar](32) NULL,
	[email] [nvarchar](30) NULL,
	[isemail] [int] NULL,
	[mobile] [nvarchar](200) NULL,
	[ismobile] [int] NULL,
	[realname] [nvarchar](100) NULL,
	[cardtype] [nvarchar](100) NULL,
	[idcard] [nvarchar](60) NULL,
	[isreal] [int] NULL,
	[usercode] [nvarchar](200) NULL,
	[nickname] [nvarchar](20) NULL,
	[avatar] [nvarchar](60) NULL,
	[sex] [nvarchar](60) NULL,
	[exp] [int] NULL,
	[credits] [int] NULL,
	[regip] [nvarchar](15) NULL,
	[joindatetime] [datetime] NULL,
	[sumlogin] [int] NULL,
	[lastip] [nvarchar](15) NULL,
	[lastvisit] [datetime] NULL,
	[secques] [nvarchar](8) NULL,
	[authstr] [nvarchar](20) NULL,
	[authtime] [datetime] NULL,
	[authflag] [int] NULL,
	[vipdate] [nvarchar](20) NULL,
	[state] [int] NULL,
	[issso] [int] NULL,
	[extend] [nvarchar](250) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[FP_Course_ChapterInfo] ([id], [courseid], [name], [videos], [display]) VALUES (1, 1, N'第一章、测试', 0, 1)
INSERT [dbo].[FP_Course_ChapterInfo] ([id], [courseid], [name], [videos], [display]) VALUES (2, 1, N'第二章、测试', 0, 2)
INSERT [dbo].[FP_Course_CourseInfo] ([id], [uid], [channelid], [sortid], [typelist], [teacherid], [name], [price], [old_price], [memberpice], [content], [img], [attachid], [istop], [learns], [buys], [views], [postdatetime], [favorites], [status]) VALUES (1, 1, 3, 7, N'', N'', N'测试', 0, 0, NULL, N'测试测试测试测试测试', N'', N'HP4DFPRJ06Z6VV8088H8', 0, 0, N'', 0, CAST(0x0000A851001649DC AS DateTime), N'', 1)
INSERT [dbo].[FP_Course_VideoInfo] ([id], [courseid], [chapterid], [name], [videofile], [img], [videotime], [attachid], [postdatetime], [display], [studys], [status]) VALUES (1, 1, 1, N'第一节、2015广西工艺美术作品暨大师精品展览广西电视台宣传视频.flv', N'/upload/201804/26/201804261731120257.flv', N'/upload/201806/29/201806290832552688.jpg', 0, N'L6L4DP08ZHZ8R6F6L2BZ', CAST(0x0000A862000D4FD0 AS DateTime), 1, N'', 1)
INSERT [dbo].[FP_Course_VideoInfo] ([id], [courseid], [chapterid], [name], [videofile], [img], [videotime], [attachid], [postdatetime], [display], [studys], [status]) VALUES (2, 1, 1, N'软件开发第二课', N'/upload/201804/24/201804240837007746.mp4', N'', 0, N'6RHJVP2600808L2XZ400', CAST(0x0000A8CC008DFF90 AS DateTime), 2, N'', 1)
INSERT [dbo].[FP_Course_VideoInfo] ([id], [courseid], [chapterid], [name], [videofile], [img], [videotime], [attachid], [postdatetime], [display], [studys], [status]) VALUES (4, 1, 1, N'课程文件', N'/upload/201806/29/201806290859356790.doc', N'', 0, N'6J02T2V84JH64LZ0D2F8', CAST(0x0000A90E00943374 AS DateTime), 3, N'', 1)
INSERT [dbo].[FP_Exam_ExamInfo] ([id], [uid], [channelid], [sortid], [typelist], [name], [type], [total], [passmark], [examtime], [islimit], [starttime], [endtime], [repeats], [showanswer], [allowdelete], [display], [postdatetime], [examtype], [examroles], [examdeparts], [examuser], [credits], [exams], [score], [views], [questions], [status], [papers], [title], [address], [opentime], [description], [content], [iscopy], [isvideo], [iswitch], [issign], [client], [papertype]) VALUES (8, 1, 2, 6, N'', N'信息化模拟考试（全卷模式）', 1, 100, 60, 60, 0, CAST(0x0000A95000949710 AS DateTime), CAST(0x0000A95000A511D0 AS DateTime), 0, 1, 0, 0, CAST(0x0000A80F0146EE24 AS DateTime), 0, N'', N'', N'', 0, 0, 0, 0, 40, 1, 1, N'信息化模拟考试（全卷模式）', N'', N'', N'', N'', 0, 0, 0, 0, N'{"pc":"1","mobile":"1"}', 0)
INSERT [dbo].[FP_Exam_ExamInfo] ([id], [uid], [channelid], [sortid], [typelist], [name], [type], [total], [passmark], [examtime], [islimit], [starttime], [endtime], [repeats], [showanswer], [allowdelete], [display], [postdatetime], [examtype], [examroles], [examdeparts], [examuser], [credits], [exams], [score], [views], [questions], [status], [papers], [title], [address], [opentime], [description], [content], [iscopy], [isvideo], [iswitch], [issign], [client], [papertype]) VALUES (9, 1, 4, 4, N'', N'正式考试测试（全卷模式）', 0, 100, 60, 60, 0, CAST(0x0000A9F900BE1040 AS DateTime), CAST(0x0000A9F900CE8B00 AS DateTime), 0, 1, 0, 0, CAST(0x0000A81801189998 AS DateTime), 0, N'', N'', N'', 0, 2, 4, 0, 50, 1, 1, N'正式考试测试（全卷模式）', N'方配总部', N'', N'', N'', 0, 0, 0, 1, N'{"pc":"1","mobile":"1"}', 0)
INSERT [dbo].[FP_Exam_ExamInfo] ([id], [uid], [channelid], [sortid], [typelist], [name], [type], [total], [passmark], [examtime], [islimit], [starttime], [endtime], [repeats], [showanswer], [allowdelete], [display], [postdatetime], [examtype], [examroles], [examdeparts], [examuser], [credits], [exams], [score], [views], [questions], [status], [papers], [title], [address], [opentime], [description], [content], [iscopy], [isvideo], [iswitch], [issign], [client], [papertype]) VALUES (11, 1, 2, 6, N'', N'信息化模拟考试（单题模式）', 1, 100, 60, 60, 0, CAST(0x0000A9FA00C95310 AS DateTime), CAST(0x0000A9FA00D9CDD0 AS DateTime), 0, 1, 0, 0, CAST(0x0000A8C4008AE634 AS DateTime), 0, N'', N'', N'', 0, 0, 0, 0, 80, 1, 1, N'信息化模拟考试（单题模式）', N'', N'', N'', N'', 0, 0, 0, 0, N'{"pc":"1","mobile":"1"}', 1)
INSERT [dbo].[FP_Exam_ExamInfo] ([id], [uid], [channelid], [sortid], [typelist], [name], [type], [total], [passmark], [examtime], [islimit], [starttime], [endtime], [repeats], [showanswer], [allowdelete], [display], [postdatetime], [examtype], [examroles], [examdeparts], [examuser], [credits], [exams], [score], [views], [questions], [status], [papers], [title], [address], [opentime], [description], [content], [iscopy], [isvideo], [iswitch], [issign], [client], [papertype]) VALUES (12, 1, 4, 4, N'', N'正式考试测试（单题模式）', 0, 90, 60, 60, 0, CAST(0x0000A9FA009C0180 AS DateTime), CAST(0x0000A9FA00AC7C40 AS DateTime), 0, 1, 0, 0, CAST(0x0000A8C4008B5330 AS DateTime), 0, N'', N'', N'', 0, 1, 0, 0, 34, 1, 1, N'正式考试测试（单题模式）', N'', N'', N'', N'', 0, 0, 0, 0, N'{"pc":"1","mobile":"1"}', 1)
INSERT [dbo].[FP_Exam_ExamLogInfo] ([id], [sortid], [uid], [channelid], [answers], [qidlist], [answerlist], [scorelist], [wrongs], [curwrongs], [wronglist], [notes], [curnotes], [notelist], [favs], [curfavs], [favlist]) VALUES (1, 1, 1, 1, 81, N'196,221,227,186,93,332,139,63,16,112,267,299,252,330,284,242,316,268,155,140,309,69,195,180,211,331,50,100,33,300,311,80,125,128,88,5,124,94,81,126,324,325,85,327,84,220,292,251,205,236,308,164,111,149,307,298,61,10,42,32,329,226,132,127,79,215,258,118,21,290,156,39,233,289,75,1,177,337,338,83,82', N'C§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§A§C§A§A§B§§§§§§§§§§§§§§§§A§§§§C§§§§§§§§方配的§昌§§', N'0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 79, 0, N'196,221,227,186,93,332,139,63,16,112,267,299,252,330,284,242,316,268,155,140,309,69,195,180,211,331,50,100,33,300,311,80,125,128,88,5,124,94,81,126,324,325,85,327,84,292,251,236,308,164,111,149,307,298,61,10,42,32,329,226,132,127,79,215,258,118,21,290,156,39,233,289,75,1,177,337,338,83,82', 0, 0, N'', 0, 0, N'')
INSERT [dbo].[FP_Exam_ExamLogInfo] ([id], [sortid], [uid], [channelid], [answers], [qidlist], [answerlist], [scorelist], [wrongs], [curwrongs], [wronglist], [notes], [curnotes], [notelist], [favs], [curfavs], [favlist]) VALUES (2, 3, 1, 1, 55, N'196,221,227,186,332,139,112,267,299,252,330,284,242,316,268,155,140,309,195,180,211,331,300,311,125,128,124,126,324,325,327,220,292,251,205,236,308,164,111,149,307,298,329,226,132,127,215,258,118,290,156,233,289,177,337', N'C§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§A§C§A§A§B§§§§§§§§§§§A§§§C§§§§§方配的', N'0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 53, 53, N'196,221,227,186,332,139,112,267,299,252,330,284,242,316,268,155,140,309,195,180,211,331,300,311,125,128,124,126,324,325,327,292,251,236,308,164,111,149,307,298,329,226,132,127,215,258,118,290,156,233,289,177,337', 0, 0, N'', 0, 0, N'')
INSERT [dbo].[FP_Exam_ExamLogInfo] ([id], [sortid], [uid], [channelid], [answers], [qidlist], [answerlist], [scorelist], [wrongs], [curwrongs], [wronglist], [notes], [curnotes], [notelist], [favs], [curfavs], [favlist]) VALUES (3, 2, 1, 1, 26, N'93,63,16,69,50,100,33,80,88,5,94,81,85,84,61,10,42,32,79,21,39,75,1,338,83,82', N'昌§§', N'0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 26, 26, N'93,63,16,69,50,100,33,80,88,5,94,81,85,84,61,10,42,32,79,21,39,75,1,338,83,82', 0, 0, N'', 0, 0, N'')
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (1, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在word的编辑状态，文档中某段内容被选择，执行编辑菜单中的“复制”命令后（）', N'被选择的内容被复制到插入点§被选择的内容被复制到剪贴板§插入点所在的段落内容被复制到剪贴板§光标所在的段落内容被复制到剪贴板', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CE78 AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (2, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'可以用”媒体播放器（WINDOS MEDIA PLAYER)"播放的是（）', N'录像带§文本文件§EXCEL文件§视频文件', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (3, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'计算机的启动方式有（）', N'热启动和复位启动§热启动和冷启动§加电启动和冷启动§只能是加电启动', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (4, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'假设机箱内已经正确插入了高质量的声卡，但却始终没有声音，其原因可能是（）', N'没有安装音箱或音响没有打开§音量调节过低§没有安装相应的驱动程序§以上都有可能', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (5, N'', N'', 1, 1, 2, N'', N'TYPE_MULTIPLE', 2, N'在WINDOS的”回收站“中，存放的（）', N'只能是硬盘上被删除的文件或文件夹§只能是软盘上被删除的文件或文件夹§可以是硬盘或软盘上被删除的文件或文件夹§可以是所有外存储器中被删或文件夹', N'A,C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 56, 56, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (6, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在WINDS中，“任务栏"的作用是()', N'显示系统的所有功能§只能显示当前活动窗口名§只显示正在后台工作的窗口名§实现窗口之间的切换', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (7, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在WINDOWS中“显示属性”对话框中，用于调整显示器分辨率功能的标签是（）', N'背景§外观§效果§设置', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (8, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在WINDOWS中，回收站是（）', N'硬盘上的一块区域§主板上的一块区域§内存中的一块区域§存储器的一块区域', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (9, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'若已打开若干个窗口，利用快捷键ALT+（），可在窗口之间切换，并且还将显示该窗口对应的应用程序图标', N'ESC§CTRL§TAB§SHIFT', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (10, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'下面属于操作系统软件的是（）', N'WINDOWS XP§VISUALC§VISUALFOXPRO§EXCEL', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (11, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'键盘上的回车键是（）', N'ALT§SHIFT§INS§ENTER', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (12, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'使用鼠标拖放方法移动窗口，必须将鼠标光标放在使用窗口的（）', N'菜单条上§标题栏上§何一个角上§工作区内', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (13, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'微型计算机的运行速度主要取决于（）', N'微处理器§内存储器§显示适配器§硬磁盘存储器', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (14, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在媒体播放机中不能播放（）', N'扩展名为AVI的文件§扩展名为MID的文件§扩展名为WAV的文件§扩展名为DOC的文件', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (15, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'办公自动化系统属于（）', N'工具软件§聊天软件§编辑软件§应用软件', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (16, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'下列对“记事本”应用程序的说法，正确的是（）', N'在“记事本”中能完成文档的编排、保存操作、但无打印操作§在“记事本”中能编辑文件信息，也能插入图片、表格等信息§在“记事本”中，只能打开一个文件§与“写字板”完全一样，都是小型的纯文本编辑器', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (17, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'硬盘属于（）', N'输出设备§输出设备§内存储设备§外存储设备', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (18, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'常规键盘具有“Caps Lock"的功能是（）', N'字母大小写锁定§数字小键盘锁定§屏幕滚动锁定§制表锁定', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (19, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在Window XP资源管理器窗口中，要一次选中多个分散的文件，正确的操作是（）', N'按Ctrl键，同时用鼠标左键逐个选取§按Ctrl键，同时用鼠标右键逐个选取§按Shift键，同时用鼠标右键逐个选取§按Shift键，同时用鼠标左键逐个选取', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 10, 9, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (20, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在WindowsXP中,不能在任务栏中进行的操作是（）', N'切换活动窗口§排列桌面图标§设置系统日期和时间§启动开始菜单', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (21, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在Windows XP中，需要查找以n开头且扩展名为.com的所有文件，在查找对话框内的名称框中应输入（）', N'n.com§?.com§com.n*§n*.com', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (22, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'下列不属于信息采集的手段的是（）', N'利用传统工具采集§利用专业工具采集§利用数据交易手段采集§利用网络采集', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (23, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'将信息录入到信息系统，就是信息（）的过程', N'共享化§数字化§规范化§标准化', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (24, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'CA指的是（）', N'证书授权§加密认证§虚拟专用网§安全套接字', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (26, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'密码的设置规则不包括（）', N'使用较长密码§逆序设置密码§使用陌生密码§使用难记密码', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (27, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'病毒通过病毒载体进入系统，常驻在（）中，当满足条件就进行传播', N'内存§硬盘§主板§操作系统', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (28, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'出网设备不需要做的操作是（）', N'卸载“一机两用”§卸载网卡§删除涉密数据§修改网络配置', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (29, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'嗅探未加密通信数据不包括', N'本地嗅探§共享介质§服务器嗅探§远程嗅探', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (30, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'最直接最简单的提高系统安全性的措施是（）', N'专业杀毒软件§修补漏洞§安全策略§设置密码', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (31, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'最直接最有效的病毒防范措施是（）', N'专业杀毒软件§手工补救§修补漏洞§安全策略', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (32, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'数字签名是使用（）', N'自己的私钥签名§自己的公钥签名§对方的私钥签名§对方的公钥签名', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (33, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'若想每天自动进行磁盘的病毒扫描工作，可以通过本地扫描器菜单的（）实现。', N'实现扫描选项§本地扫描选项§安排扫描工作§服务器管理', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (34, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'当前病毒的主流类型是（）', N'木马蠕虫§引导区病毒§宏病毒§恶作剧程序', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (35, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'关于计算机病毒的传播渠道，错误的是（）', N'U盘§光盘§网络§空气', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (36, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'以下属于威胁计算机网络安全的行为是（）', N'操作员安全配置不当而造成的安全漏洞§在不影响网络正常工作的情况下，进行截获，窃取，破译以获得重要机密信息§安装非正版软件§以上均是', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (37, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'下列选项中不属于因特网浏览器的是（）', N'微软IE§火狐firefox§腾讯QQ§腾讯TT', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (38, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'hao0913@hao0913.com表示', N'ip地址§邮箱地址§网络协议§域名', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (39, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'使用FTP服务下载文件时，不需要知道的是（）', N'文件存放的服务器名称§文件名称§文件所在的服务器的距离§文件存放的目录路径', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (40, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'下列软件中，（）不是计算机的操作系统软件。', N'Windows2003§office2003§AIX§DOS', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (41, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'多媒体技术是（）。', N'一种图像和图形处理技术§文本和图形处理技术§超文本处理技术§计算机技术，电视技术和通信技术相结合的综合技术', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (42, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在计算机系统，CPU可以直接读、写（）中的内容', N'光盘§ROM§硬盘§RAM', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (43, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'严禁在计算机硬盘内存储（）信息。', N'秘密§机密§绝密§秘密，机密，绝密', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (44, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'关于双击鼠标，下列描述中正确的是（）', N'光标到目标位置后，快速按二下鼠标器右边的键§光标到目标位置后，快速按二下鼠标器左边的键§光标到目标位置后，快速按二下鼠标器中间的键§光标到目标位置后，同时快速按下鼠标器两个键', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (45, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'DNS是用来', N'邮件传输§超文本传输§文本解析§域名解析', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (48, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'计算机数据的表示形式是（）。', N'八进制§十进制§二进制§十六进制', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (49, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'计算机软件系统最基础的部分是（）。', N'数据库管理系统§操作系统§语言处理系统§应用软件', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (50, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'电子邮件又称为（），是目前因特网上使用最广泛的应用服务之一。', N'ASCII§TCP/IP§电报§E-mail', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (52, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'以下不属于移动终端的是（）。', N'手持设备§笔记本§服务器§车载专用终端', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (53, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'将回收站中的文件还原时，被还原的文件将回到（）。', N'桌面上§我的文档中§内存中§原来被删除时的位置', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (54, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在计算机系统中（）存储量最大', N'硬盘§主存储器§CACHE§ROM', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (55, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'计算机操作系统是（）', N'计算机中最重要的应用软件§最核心的计算机系统软件§微机专用软件§微机的通用软件', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (56, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'关于计算机病毒的传播渠道，错误的是', N'U盘§光盘§网络§空气', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (58, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'哪项信息属于实时动态接入信息', N'人口信息§GPS定位信息§地址信息§案事件信息', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (59, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'下面哪项是数据库服务器用途', N'用于存储和管理海量空间数据§用于安装SOA架构基础GIS软件§用于安装PGIS平台软件服务§用于安装WEB应用服务', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 1, 1, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (60, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'PGIS平台在现有PKI/PMI基础上，针对各个模块建立了（），实现了不同业务对象的权限控制', N'服务代理§二次授权体系§用户身份认证§功能权限控制', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (61, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'GIS通常的中文意思是指', N'卫星定位系统§地理信息系统§遥感§地理信息服务', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (63, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'微型计算机键盘上的TAB键是（）。', N'退格键§控制键§交替换挡键§制表定位键', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (64, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'窗口排列有层叠、横向和纵向平铺三种方式，用鼠标右键单击（）可以进行窗口排列。', N'任务栏的空白处§桌面的空白处§窗口的标题栏§“开始”按钮', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (65, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'内存和外存相比，其主要特点是（）。', N'能储存大量信息§能长期保存信息§存取速度快§能同时存储程序和数据', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (66, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'打印机是一种（）。', N'输出设备§输入设备§存储器§运算器', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 11, 10, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (67, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'计算机系统中CPU的重要组成部分是指（）。', N'运算器和存储器§控制器和运算器§输入设备和输出设备§内存储器和控制器', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (68, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'一个完整的系统包括（）。', N'硬件系统和软件系统§主机和外部设备§CPU和储存器§主机和实用程序', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (69, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在WINDOWS操作系统中，进行窗口切换使用（）组合键。', N'Shitf+Tab§Alt+Tab§Ctrl+Tab§空格+Tab', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (70, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在WINDOWS中可按（）键得到帮助信息。', N'F1§F5§F8§F10', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (71, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'选定某个图标后，按（）键可以将其删除。', N'Ctrl§Delete§Shift§Tab', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (72, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'发送电子邮件时，在发邮件界面中，“收件人”一栏中，应该填写“”。', N'接收者名字§接收者的信箱地址§接收者的IP地址§接收者的主页地址', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (73, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'下面是WEB网页的保存格式类型，可以以纯文本格式保存网页信息的是（）。', N'WEB页，全部（*.htm;*.html）§WEB电子邮件档案（.mht）§文本文件（*.txt）§Web页，仅HTML(*.htm;*.html)', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (74, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在查找文件时，通配符*与？的含义是（）。', N'*表示任意多个字符，？表示任意一个字符§？表示任意多个字符，*表示任意一个字符§*和？表示乘号和问好§查找*。？与？。*的文件是一致的', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (75, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'Windows的（）也可以被看作一个文件夹并且它处于文件夹树最上层。', N'“状态栏”§“桌面”§“菜单栏”§“标题栏”', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (76, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'与显示器一样能决定系统可以使用的最高屏幕分辨率的是（）。', N'U盘§键盘§显示卡§硬盘', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (77, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'通过控制面板可以灵活地配置计算机，但不能（）。', N'使计算机工作起来更加有效率§更符合用户的工作习惯§使计算机工作的更快§使计算机磁盘总空间变大', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (79, N'', N'', 1, 1, 2, N'', N'TYPE_MULTIPLE', 2, N'集群系统主要功能()', N'个呼、组呼、全呼§调度通播、跨系统个呼和组呼§用户优先级别设定§移动台自动漫游登记入网', N'A,B,C,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 45, 45, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (80, N'', N'', 1, 1, 2, N'', N'TYPE_MULTIPLE', 2, N'集群通信的特点是（）', N'具有灵活的多级别分组调度指挥功能§高级别用户优先分配信道§通话具有私密性§系统具有故障弱化的功能§可生成详细的管理报告§可进行话音加密', N'A,B,C,D,E,F', 0, 0, N'', 6, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 53, 53, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (81, N'', N'', 1, 1, 2, N'', N'TYPE_MULTIPLE', 2, N'使用MOTOROLAPTX760通话结束，可按什么按键挂机。', N'“√” 键§“╳”键§Ptt键§清除、挂机键', N'B,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 54, 54, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (82, N'', N'', 1, 1, 2, N'', N'TYPE_ANSWER', 5, N'两台对讲机要进行一对一通话，可以通过（）方式来实现？', N'', N'拨打对方单机号', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 12, 12, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (83, N'', N'', 1, 1, 2, N'', N'TYPE_ANSWER', 5, N'使用HYT890GM时，在开机状态下，能听见所有已写入的群呼的呼叫，这是因为（）', N'', N'将频道放在自身的单机号码上', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 16, 16, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (84, N'', N'', 1, 1, 2, N'', N'TYPE_TRUE_FALSE', 3, N'打开对讲机时不必检查对讲机是处于常规还是集群状态下。', N'', N'N', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 29, 28, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (85, N'', N'', 1, 1, 2, N'', N'TYPE_TRUE_FALSE', 3, N'在进行组呼时，只有发起组呼的一方可以结束通话，被叫方不能结束通话。单呼状态下，发起方和被叫方都可结束通话。以上说法是否正确？', N'', N'Y', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 31, 31, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (87, N'', N'', 1, 1, 2, N'', N'TYPE_ANSWER', 5, N'对讲机上的PPT键的作用是（）', N'', N'发起呼叫并发送通话信息', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 10, 10, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (88, N'', N'', 1, 1, 2, N'', N'TYPE_MULTIPLE', 2, N'以下关于使用对讲机电池正确的做法是？', N'电池不能放置于高温、潮湿的环境下；不能接触腐蚀性物体。§应在5℃ ~ 40℃的温度环境下进行充电，否则可能充不满额定容量§已充满电的电池，应从充电器上取下，以免过充缩短电池寿命，降低性能§较长时间不使用对讲机时，应把电池卸下§避免电池短路', N'A,B,C,D,E', 0, 0, N'', 5, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), N'2064PLXVP0D88VDL8LR8', 50, 50, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (93, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'计算机被病毒感染的可能途径是', N'运行错误的操作命令§磁盘表面不清洁§运行来历不明的外来文件§电源不稳定', N'C', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (94, N'', N'', 1, 1, 2, N'', N'TYPE_MULTIPLE', 2, N'下列关于计算机病毒的叙述中正确的是', N'计算机病毒通常不会自己死亡§使用防病毒卡后，计算机就不会感染病毒§预种抗病毒疫苗后，计算机就不会感染病毒了§使用防病毒软件后，计算机就不会再感染病毒了', N'A,D', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 48, 47, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (95, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在光线明暗差别很大的监控场所宜选用', N'红外摄像机§宽动态摄像机低照度摄像机', N'B', 0, 0, N'', 2, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 1, 1, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (96, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'视角要求大的场景应选用', N' 广角镜头§定焦镜头§变焦镜头', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (97, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'为看清楚远处的景观，应该选用', N'长焦镜头§鱼眼镜头§ 广角镜头', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (98, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'摄像机云台的作用是', N' 承载摄像机转动§遮阳挡雨§天文观测', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 8, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (99, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'要把当前球机监控的画面拉近放大，可以（ ）', N'点击PTZ控制区的→§点击PTZ控制区的缩放§点击PTZ控制区的↓', N'B', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (100, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'CU客户端中，（ ）是指保存在本地电脑上的录像', N'本地录像§平台录像§前段录像', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (101, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'“高清”指的是分辨率在（ ）以上', N'1280*720§480*320§320*240', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (102, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'下列关于监控图像优化的说法，错误的是', N'摄像头的自动增益越高效果越好§ 要避免强光源直射镜头§球机可以通过PTZ调节选择的最佳视角', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 7, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (103, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'在CU监控客户端中，看到某路监控点图标显示为灰色，表示', N'该监控点离线§该监控点的图像是黑白的§该监控点', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 9, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (104, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'数字摄像机的核心部件为', N' CCD或CMOS§电源线§三脚架', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (105, N'', N'', 1, 1, 2, N'', N'TYPE_RADIO', 1, N'1080P分辨率指的是', N'1920*1080§720*576§1440*900', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (106, N'', N'', 1, 1, 2, N'3', N'TYPE_RADIO', 1, N'下列接口属于数字接口的是', N'HDMI§C端子§S端子', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), N'2T408FV4V66HHH0288VH', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (109, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'为了方便用户登录网页，因此经常访问的网页可以把它保存在（）中', N'文档§地址栏§收藏夹§状态栏', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (110, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'如何最快地获知自已在Word里打了多少字（）', N'一个一个数§数一数每行有多少字，然后数有多少行§选定自已打的字，点“工具”菜单里的“字数统计”§选定自已打的字，右键弹出菜单，点“字体”', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (111, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下面哪一个做法并没有从FTP中下载一个文件回本地（）', N'选中该文件，点右键，“复制”，然后点击本地桌面，右键“粘贴”§选中该文件，点右键，“复制到文件夹”§双击该文件§将该文件从FTP中拖动到本地桌面上', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (112, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'如何获知计算机的IP设置（）', N'右键点桌面上的“网上邻居”，点“属性”，右键点“本地连接”，点“属性”，双击属性窗口中部的“Internet协议”§双击桌面上的“网上邻居”，点“工具”菜单里的“文件夹选项”§右键点桌面上的“我的电脑”，点“属性”，点上部的“计算机名”，再点中部的“更改”按钮§右键点桌面上的“InternetExplorer”浏览器，点“属性”，点上部的“连接”，再点下部的“局域网设置”按钮', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (113, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'选定工作表全部单元格的方法是：单击工作表的什么位置（）', N'列标§编辑栏中的名称§行号§左上角行号和列号交叉处的空白方块', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (114, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'键盘上的enter是（）', N'热键§字符键§确定键§数字键', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
GO
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (116, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，选定全文字段的最快方法是（）', N'鼠标指针移到段首左侧，按住鼠标左键，从段首拉动到段尾§按Ctrl+A§鼠标指针移到段首左侧，双击左键§以上都不对', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (117, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在系统中，哪种文书打印后不会生成相应的执行情况（）', N'传唤通知书§拘留证、拘留通知书§拘传证§破案告知书', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (118, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在“案件管理”中，需要查询出单位代码为“450102330000”的派出所所有案件的诉讼文书记录，下面最佳选项是：（ ）', N'A. 在诉讼文书查询页面中的“案件/警情编号”输入“450102330000”，并选择精确查询§?B. 在诉讼文书查询页面中的“案件/警情编号”输入“A450102330000”，并选择左匹配查询§C. 在诉讼文书查询页面中的“案件/警情编号”输入“A450102330000”，并选择右匹配查询§D. 在诉讼文书查询页面中的“案件/警情编号”输入“A450102330000”，并选择模糊查询', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (119, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在系统中，所有呈请的文书都会有记录，如果忘记呈请给哪位领导，查看路径是', N'进入案件管理-审批监督-文书反馈历史，通过审批历史查看接收人是哪位领导§进入案件管理-诉讼文书，通过审批历史查看接收人是哪位领导§进入文书汇总-报告书，通过审批历史查看接收人是哪位领导§进入文书汇总-诉讼文书，通过审批历史查看接收人是哪位领导', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (120, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在“案件管理”中，关于行政案件的调解处理，描述正确的是：', N'只有案件状态为“已处警”，才能进行调解 §只有案件状态为“已受理”，才能进行调解 §案件状态为“已处罚”，也可以进行调解 §以上都不正确', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (121, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在系统中，通过那种路径取回已经呈请上去的文书()', N'进入“案件管理－审批/监督－执法审批”查询，选择类型是“未办理”文书 §进入“案件管理－审批/监督－文书反馈信息”查询，选择类型是“未办理”文书 §进入“案件管理－审批/监督－执法审批”查询，选择类型是“已办理”文书 §进入“案件管理－审批/监督－诉讼文书”查询，选择类型是“已办理”文书', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (124, N'', N'', 1, 1, 3, N'', N'TYPE_MULTIPLE', 2, N'使用数字证书前计算机必须安装的程序是：（      ）。', N'公安数字证书驱动 § 广西公安数字证书在线管理系统 §防病毒软件 §警示桌面程序', N'A,B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 47, 47, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (125, N'', N'', 1, 1, 3, N'', N'TYPE_MULTIPLE', 2, N'安装了防病毒软件后需要定期进行哪些操作：（      ）。', N'升级病毒库 §重装计算机系统 § 扫描病毒 §重启计算机 ', N'A,C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 53, 53, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (126, N'', N'', 1, 1, 3, N'', N'TYPE_MULTIPLE', 2, N'如果计算机发现下列哪些症状，则可能感染了计算机病毒：（      ）。', N'计算机系统运行速度减慢§计算机系统经常无故发生死机 § 计算机系统中文件长度发生变化 §计算机存储的容量异常减少', N'A,B,C,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 50, 50, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (127, N'', N'', 1, 1, 3, N'', N'TYPE_MULTIPLE', 2, N'防范计算机病毒（      ）。', N'使用复杂的密码 §安装防病毒软件§ 定期升级防病毒软件§ 经常重启计算机', N'A,B,C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 52, 52, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (128, N'', N'', 1, 1, 3, N'', N'TYPE_MULTIPLE', 2, N'计算机病毒传播的渠道有（      ）。', N'通过移动存储设备 §通过硬盘§通过光盘 §通过网络', N'A,B,C,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 54, 54, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (132, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'以下哪个程序可以修改数字证书密码（      ）。', N'一机两用程序 §eSafe管理工具 §防病毒软件 § 警示桌面程序', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (134, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'申请数字证书需要填写的表格是：（      ）。', N'公安信息通信网设备保护申请表 §公安信息系统数字身份证书撤销停用、恢复、更新申请表 § 公安信息通信网电子印章采集申请表 § 公安信息系统数字身份证书申请表 ', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (135, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列哪项不属于网络病毒的特点和危害性（      ）。', N'感染速度快 §扩散面广 § 破坏性小 §破坏性大', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (136, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'计算机在工作中突然断电，什么地方的数据会丢失（      ）。', N'硬盘 §光盘 §内存 §插在机器上的U盘', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (137, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'执行了删除操作后，文件将会被移动到“回收站”，我们可以用（      ）命令取回被误删除的文件。', N'复制 § 恢复 §还原 § 返回', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (138, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'计算机病毒是指（      ）。', N'编制有错误的计算机程序 §设计不完善的计算机程序§己被破坏的计算机程序 §以危害系统为目的的特殊的计算机程序', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (139, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列的（      ）可临时存放删除的文件。', N'我的电脑 §网上邻居 §回收站 §我的文档', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (140, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'办公自动化简称（      ）。', N'OA § OC §OIS §Word ', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 0)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (141, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，Ctrl+C的功能是（）。', N'剪切§复制§全选§粘贴', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (142, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel2003中，若在工作表中插入一列，则一般插在当前列的（）。', N'左侧§上方§右侧§下方', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (143, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel2003中，若选定多个不连续的行所用的键是（）。', N'Shift+所选行§Ctrl+所选行§Alt+所选行§Shift+Ctrl+所选行', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (144, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中，没有进行“边框”设置的表格，打印出来后，看到的效果是（）。', N'有网格线§无网格线§时而有网格线，时而无网格线§表格的一部分有网格线，一部分无网格线', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (145, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在PowerPoint2003中，若一个演示文稿中有三张幻灯片，播放时要跳过第二张放映，可（）。', N'隐藏第二张幻灯片§取消第二张幻灯片的动画效果§取消第一张幻灯片的动画效果§只能删除第二张幻灯片', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (146, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在使用Word编辑文档时，插入点的形状是（）。', N'手型§箭头型§闪烁的竖条型§沙漏型', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (147, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word制表时，选择“表格”菜单中的（）命令可以调整行高和列宽。', N'表格属性§单元格§自动套用格式§插入表格', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (148, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，要想使所编辑的文件保存后不被他人查看，可在安全性的“选项”中设置（）。', N'修改权限口令§建议只读方式打开§打开权限口令§快速保存', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (149, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word环境下，如果你在编辑文本是执行了错误操作，（）功能可以帮助你回复换来的状态。', N'复制§粘贴§撤销§清除', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (150, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel不能用于（）。', N'处理表格§创建图表§统计分析§制作演示文稿', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (151, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel中，在当前工作表的前面插入一新工作表，可以使用菜单中的（）命令。', N'编辑§插入§工具§文件', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (152, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Worde2003中的（）视图方式使得显示效果与打印预览基本相同。', N'普通§阅读§大纲§页面', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 9, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (153, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在幻灯片“动作设置”对话框中设置的超级链接，起链接对象不可以是（）。', N'下一站幻灯片§上一张幻灯片§其他演示文稿§幻灯片中的某一对象', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (154, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Worde的编辑状态，执行编辑菜单中的“全选”命令后（）。', N'整个文档被选择§插入点所在的段落被选择§插入点所在的行被选择§插入点至文档的首部被选择', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (155, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'中文Windows中，按键（），可在个中汉字输入方式之间切换。', N'Ctrl+Space§Shift+Space§Alt+Space§Ctrl+Shinft', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (156, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，段落“缩进”后打印出来的文本，起文本相对于打印纸边界的距离为（）。', N'页边距§缩进距离§悬挂缩进距离§页边距+缩进距离', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (157, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word文档窗口中，若选定的文字包含有几种字体的汉字，则格式工具栏的字体框中显示（）。', N'空白§第一个案子的字体§宋体§选定的文字中使用最多的文字字体', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (158, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在“幻灯片浏览视图”模式下，不允许进行的操作是（）。', N'幻灯片移动和复制§幻灯片切换§幻灯片删除§设置动画效果', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (159, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Powerpoint2000运行的操作系统环境是（）。', N'UNIX§DOS§Macintosh§Windows', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (160, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中，选取单元格时，鼠标指针为（）。', N'竖条光标§空心十字光标§箭头光标§不确定', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (161, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在PowerPoint文本框中可以插入（）。', N'只有文字§只有图片§只有声音§文字和图片', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (162, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中，不连续单元格的选取，可借助于（）键完成。', N'Ctrl键§Shift键§Alt键§Tab键', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (163, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，单击“常用”工具栏上的“打印”按钮，则会（）。', N'打印选定内容§打印当前页§打印全部文档§出现“打印”对话框', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (164, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，用拼音输入法输入单个汉字时，字母键（）。', N'必须是大写§必须是小写§可以大写与小写§可以大写与小写混合使用', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (165, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，文档编辑窗口中，将选定的一段文字拖动到另一位置，则完成对该段文字的（）。', N'移动操作§复制操作§删除操作§非法操作', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (166, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列哪种视图不是Word中的视图模式（）。', N'页面视图§大纲视图§特殊视图§普通视图', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (167, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，若要将某个段落的格式复制到另一段，可采用（）。', N'字符样式§拖动§格式刷§剪切', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (168, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003中，编辑修改以前有用文本时，不覆盖原文件并且保留这一次的修改，可以采用（）。', N'用“文件”菜单中的“保存”命令§用“文件”菜单中的“另存为”命令§用“文件”菜单中的“关闭”命令§用“文件”菜单中的“退出”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (169, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003中，可以同时打开多个窗口，但是（）。', N'只能打开一个文档窗口才可以编辑§多个文档之间不可以切换编辑§可同时编辑多个§不是活动的窗口也可以编辑', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (170, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列关于Word文档窗口的说法中，正确的是（）。', N'只能打开一个文档窗口§可以同时打开多个文档窗口，被打开的窗口都是活动窗口§可以同时打开多个文档窗口，但其中只有一个是活动窗口§可以同时打开多个文档窗口，但在屏幕上只能见到一个文档窗口', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (171, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，要使文档的标题位于页面居中位置，应使标题（）。', N'两端对齐§居中对齐§分散对其§右对齐', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (172, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，若要将选中的文本内容加粗，可以单击（）。', N'B§U§I§A', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (173, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在幻灯片视图中，不能执行的操作有（）。', N'删除当前幻灯片上的文字§删除当前幻灯片上的图形§改变幻灯片上文字的大小§删除该幻灯片', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 9, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (174, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'关于Excel中排序，说法正确的是（）。', N'只能按行排序§只能按列排序§既能按行排序，也能按列排序§以上说法都不正确', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (175, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下面 有关Word的描述中，错误的是（）。', N'Word的默认文档类型为DOC§可以将Word文档保存为TXT类型§可以将Word文档保存为JPG类型§可以将Word文档保存为HTML类型', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (176, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'文图混排是Word的主要特色之一，以下属于文图混排的是（）。', N'水印型方式§嵌入型方式§图形与文字并排方式§指纹型方式', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (177, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下面是正确的ip地址的是（）。', N'10.118.128.28§10，118，128，28§10 118 128 28§10.118.128.', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (178, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003中，设定纸张大小应选择（）。', N'自测+考试§“打印预览”命令§文件菜单中的“页面设置”命令§“页面”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (179, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'PowerPoint演示文档的扩展名是（）。', N'.ppt§.pwt§.xsl§.doc', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (180, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Word的段落对齐方式中，能使段落中每一行（包括未输满的行）都能保持首尾对齐的是（）。', N'左对齐§两端对齐§居中对齐§分散对齐', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (181, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel中，单元格地址是由（）来表示的。', N'行标和行号§行号§列标§任意确定', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 1, 1, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (182, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel的单元格中，如果要将一个数字38485以字符方式输入，其输入方式为（）。', N'’38485§’38485‘§38485’§38485', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (183, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在PowerPoint中放映幻灯片时，默认的方式是按照（）来放映的。', N'自己定义§页面链接§编号顺序§动作按钮', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (184, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel中，行号是以（）排列的。', N'英文字母序列§阿拉伯数字§汉语拼音§任意字符', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (185, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'PowerPoint中如果想在同一个窗口中看到所有的幻灯片，可以利用（）方式。', N'大纲视图§普通视图§幻灯片视图§幻灯片浏览视图', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (186, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在PowerPoint中保存演示文稿的快捷键是（）。', N'Ctrl+O§Ctrl+S§Ctrl+N§Ctrl+P', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (187, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel中当单元格中出现多个字符‘#’时，说明该单元格（）。', N'数据输出错误§数值格式设置错误§文字数据长度超过单元格宽度§数值数据长度超过单元格宽度', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (188, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中，如果设置单元格中的数据格式，则应使用（）。', N'“编辑”菜单§“格式”菜单中的“单元格”命令§“数据”菜单§“插入”菜单中的“单元格”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (189, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中，选取一行单元格的方法是（）。', N'单击该行行号§单击该行的任一单元格§在名称框输入该行行号§单击该行的任一单元格，并选“编辑”菜单的“行”命令', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (190, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'如果想在Word2003主窗口中显示常用工具按钮，应当使用的菜单是（）。', N'“工具”菜单§“视图”菜单§“格式”菜单§“窗口”菜单', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (191, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中活动单元格是指（）的单元格。', N'正在处理§每一个都是活动§能被移动§能进行公式计算', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (192, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在工作表中插入图表最主要的作用是（）。', N'更精确地表示数据§使工作表显得更美观§更直观地表示数据§减少文件占用的磁盘空间', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (193, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，如果要求打印文档的每一页上都有页码，应当（）。', N'由用户执行“插入”菜单中的页码命令§由用户执行“文件”菜单中的“页码”命令§由用户在每一页的文字中自行插入§已经由Word根据纸张大小进行分页时自动加上', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (194, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，使用（）菜单中的“插入表格”命令可以在文档中建立一张空表。', N'编辑§插入§表格§格式', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (195, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在幻灯片播放时，如果要结束放映，可以按下键盘上的（）键。', N'ESC§Enter§Space§Ctrl', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (196, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在一个演示文稿中选择了一张幻灯片，按下“DEL”键，则（）。', N'这张幻灯片被删除，且不能恢复§这张幻灯片被删除，但能恢复§这张幻灯片被删除，但可以利用“回收站”恢复§这张幻灯片被移到回收站内', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (197, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WORD中，快速启动查找窗口可用快捷键（）', N'ctrl+F1§ctrl+Alt§Alt+F§ctrl+F', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 1, 1, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (198, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列ip地址中书写正确的是（)', N'168.192.0.1§325.255.231.0§192.168.1§255.255.255.0', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (199, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'无论目前浏览的网页在何处，只要按住（）按钮就可以回到打开ie是显示的第一个网页是。', N'后退§前进§停止§主页', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (200, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在电子邮件中用户（）。', N'可以同时传送声音文本和其它多媒体信息§只可以传送文本信息§在邮件上不能附加任何文件§不可以传送声音文件夹', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 9, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (201, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'打开网页时，页面总是弹出窗口，如果想阻止该窗口弹出，应（）。', N'无法阻止§将该站点从受信任站点删除§启用ie中的“弹出窗口阻止程序”§安装第三方软件阻止', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (202, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'网络中的tcp/ip属性中的dns配置的作用是（）。', N'让使用者能用ip地址访问internet§让使用者能用域名访问internet§让使用者能用modem访问internet§让使用者能用网卡访问internet', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (203, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'以下属于非即时的网上通信方式的是（）。', N'电子邮件§移动飞信§淘宝旺旺§腾讯qq', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (204, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'地址栏中输入的http：//www.sohu。Com中，www。Sohu。Com是一个（ ）。', N'文件§域名§邮箱§国家', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (205, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'用（）可以将摄影作品。绘画作品输入到计算机中，进而对这些图片进行加工处理。', N'扫描仪§投影仪§彩色喷墨打印机§绘图仪', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 10, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (206, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列操作，（ ）是正确的断开计算机与网络连接的方法', N'拔掉显示器与主机电源§拔掉拨号网络适配器上的电话线§重新启动机计算机§双击桌面右下角任务栏中表示网络连接状态的图标，单击断开连接', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (207, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'要想查看近期访问的站点，可以点击（ ）按钮', N'主页§搜索§收藏§历史', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (208, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'如果无法显示当前网页，可以尝试（ ）操作。', N'点击后退按钮§点击停止按钮§点击刷新按钮§点击搜索按钮', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (209, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'配置tcp/ip参数的操作主要包括三个方面：（ ）、指定网关和域名服务器地址。', N'指定本地主机的ip地址及子网掩码§指定本地机的主机名§指定代理服务器§指定服务器的ip地址', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (210, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'计算机网络最突出的优点是（ ）。', N'运算速度快§联网的计算机能够相互贡献资源§计算精度高§内存容量大', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (211, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'当出现网络故障时，一般首先应检查（ ）。', N'系统病毒§路由配置§物理连通性§主机故障', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (212, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'microsoft的ie是一种（ ）。', N'网上的搜索软件§电子邮件发送程序§网上传播协议§浏览器', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (213, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'互联网络上的每一台主机都有自己的ip地址，ip地址是一个（ ）的二进制地址。', N'8位§16位§32位§128位', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (214, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'设置浏览器主页时，首先要左键单击菜单栏上的工具按钮，然后左键单击（ )', N'邮件和新闻§管理加载项§internet选项§同步', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (215, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下载是指通过网络进行复制并最终将其保存到（ )的网络活动。', N'服务器§其它计算机§本地计算机§网络', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (216, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'用命令方式查看主机ip地址时，在DOS窗口下敲入（ ）命令即可调看ip地址。', N'cmd§dir§ipconfig§cd', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (217, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'以下属于系统软件的是（）', N'WORD§EXCEL§WINDOS§POWERPOINT', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (218, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'计算机中用来表示内存储器容量大小的基本单位是（）', N'位（BIT) §字节（BYTE)§字（WORD)§双字（DOUBLE WORD)', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (219, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WINDOS操作系统中，当系统提示硬磁盘空间不足时，一般情况下可最先考虑删除（）目录下的文件来释放空间', N'MY DOCUMENTS§TEMP§PROGRAM FILES§FONTS', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (220, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WINDOS中，设置屏幕特征可通过（）', N'控制面板§附件§任务栏§DOS命令', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (221, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WINDOS中，为保护文件不被修改，可将它的属性设置为（）', N'只读§存档§隐藏§系统', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
GO
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (222, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下来属于计算机输入设备的是（）', N'键盘§显示器§打印机§音响', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (223, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WINDOS系统中不能改变一个窗口的大小的是（）', N'动它的标题栏§动它的右下角§动它的左下角§动它的任何地方', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (224, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WINDOS的中文输入方式下，反复按（）键可在各种输入方式之间切换', N'CTRL+ALT§CTRL+SHIFT§CTRL+B§CTRL+V', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (225, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'计算机操作系统的功能是（）', N'完成计算机硬件与软件之间的转换§控制管理计算机系统的资源和程序的执行§实现计算机用户之间的相互交流§把源程序代码转换为目标代码', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 9, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (226, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'不可能作为计算机输出设备的是（）', N'绘图仪§扫描仪§显示器§喷墨打印机', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (227, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'同时选中一组相邻的文件的方法是（）', N'一次单击这组相邻文件的文件名§2第一个文件名，在按住SHIFT§先单击第一个文件名，在按住SHIFT键的同时再单击最后一个文件名§先单击第一个文件名，再按住CTRL键的同时再单击最后一个文件名', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (228, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列外部设备中，属于输出设备的是（）', N'扫描仪§键盘§打印机§光笔', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (229, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WINDOS默认环境中，下列（）方法不能使用“搜索”命令', N'用“开始”菜单中的“搜索”命令§在“资源管理器”窗口按“搜索”按钮§用鼠标右键单机“开始”按钮，然后在弹出的菜单中选“搜索”命令§用鼠标右键单机“我的电脑”图标，然后在弹出的菜单中选“搜索”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (230, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'粘贴文件内容的快捷键是（）', N'CTRL+A§CTRL+C§CTRL+V§CTRL+F', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 11, 11, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (231, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'复制选定内容的快捷键是（）', N'CTRL+A§CTRL+B§CTRL+C§CTRL+D', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (232, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WORD2003的编辑状态中，对已经输入的文档进行分栏操作，需要使用的菜单是（）', N'编辑§试图§格式§工具', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (233, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列不属于“一机两用”行为的是（）', N'公安业务用计算机与公安信息网和互联网同时连接§公安业务用计算机断开公安信息网后，再连接互联网或其他网络§公安业务用计算机不安装无线上网设备，并与互联网及其他网络物理隔离§个人用计算机既连接公安信息网，又通过无线方式连接互联网', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (234, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel单元格引用中，A1:B2包含（）', N'2个单元格§3个单元格§4个单元格§12个单元格', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (235, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'要复制字符格式而不复制字符，可以用（）按钮', N'格式选定§格式刷§格式工具框§复制', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (236, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Word2003中，利用（）功能在文档里查找指定单词或短语', N'搜索§局部§查找§替换', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (237, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003中，保存文档的命令可以在（）菜单里找到。', N'保存§编辑§文件§实用程序', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (238, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'word2003中，文字加下划线可以在（）选项卡中实现', N'字体§字符间距§文字效果§中文版式', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (239, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Word2003字符不包括（）', N'汉字§数字§特殊符号§图片', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (240, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'如果要在“插入”和“改写”状态之间切换，可以按键盘上的（）键', N'Isert§Home§End§Esc', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (241, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'要删除目前光标所在的位置的内容可以按键盘上的（）键', N'Backspace§Delete§Esc§Insert', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (242, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'将Word文档中的一部分内容复制到别处，首先要进行的操作是（）', N'粘贴§复制§选中欲复制的内容§剪切', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (243, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，文档默认扩展名是（）', N'TXT§DOC§WRI§DOT', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (244, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，一个文件编辑排版完成，要想知道其打印效果，可以选择Word（）功能。', N'打印预览§模拟打印§提前打印§屏幕打印', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (245, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列方式中，可以显示出页眉和页脚的是（）', N'普通视图§页面视图§大纲视图§全屏视图', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (246, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003的编辑状态，要想为当前文档中的文字设定字符间距，应当使用（）', N'插入菜单中的命令§编辑菜单中的命令§工具菜单中的命令§格式菜单中的命令', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 9, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (247, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003的编辑状态，要想为当前文档中的文字设定行间距，应当使用（）', N'字体命令§段落命令§分栏命令§样式命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (248, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，Ctrl+V的功能是（）', N'将剪切板中的内容复制到光标处§将剪切板中的内容粘贴到光标处§将剪切板中的内容剪切到光标处§将剪切板中的内容全选到光标处', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (249, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003中，执行图片“插入”操作，应该选择菜单栏中的（）', N'文件§视图§插入§格式', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (250, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'公式sum(c2:c6)的作用是（）', N'求C2到C6这五个单元格中的数字§求C2到C6这两个单元格中的数字之和§求C2到C6这五个单元格中德数字之平均数§求C2和C6这两个单元格中的数字的平均值', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (251, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在word的编辑状态，使插入点快速移动到文档末尾的操作是按（）键', N'End§Alt+End§Shift+End§Ctrl+End', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (252, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel中的函数AVERAGE的功能是（）', N'求所选的范围内所有的单元格中数字的平均值§求所选范围内单元格中数据的个数§求所选范围内所有的单元格中的数字的和§返回函数中的最大值', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (253, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'给某人发送电子邮件时，该人没有上网，则该电子邮件将（）', N'被退回，并不在发送§暂存在邮件服务器上§被退回，在从新发送§该邮件被丢失', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (254, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Internet Explorer是浏览器，它的作用是（）', N'浏览网页§处理文字§关闭主机§删除程序', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 1, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (255, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'IE浏览器中收藏的主要功能是（）', N'存储经常访问的站点地址§跟踪每次在Internet中所访问过的站点并存储§显示当前文档或网页URL地址§显示web页或文件夹的内容', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (256, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'互联网上常见的搜索引擎地址是（）', N'www.qq.com§www.126.com§www.baidu.com§www.hotmail.com', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (257, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'以下软件中，常用的邮件处理软件是（）', N'Excel§eMule§Outlook§Internet Explorer', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (258, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'以下是正确的电子邮件地址的格式是（）', N'mail.hotemail.com§www.hotmail.com§user@hotemail.com§suer.hotmail.com', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (259, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Internet中能够提供任意两台计算机之间传输文件的协议是（）', N'WWW§Ftp§telnet§smtp', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (260, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'以下不属于“全国失踪人员信息系统”中检索项的是（）。', N'户籍地§DNA§足长§血型', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (261, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'办公常用的计算机属于', N'小巨型机§小型计算机§微型计算机§中型计算机', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (262, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'命令菜单中，灰色命令表示（）。', N'选择该命令将弹出对话框§该命令正在起作用§该命令以及使用过§该命令当前不能使用', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (263, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'网卡的主要功能不包括（）。', N'把计算机连接到通信介质上§进行电信号匹配§实现数据传输§网络互联', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (264, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'严厉禁止“一机两用”的根本目的是', N'避免造成信息泄密和病毒感染，保证网络安全§避免民警工作时间上互联网§提高民警的自律能力§避免非警务人员进入公安网', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (265, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WORD2003的文档中药插入页眉，应该执行的菜单选项是（）。', N'文件→页面设置§插入→页眉页脚§格式→页眉和页脚§“视图→页眉和页脚”', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (266, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WORD2003中，段间距是指', N'段前距离§段后距离§与上一段落或与后一段落之间的距离§段落中的行间距之和', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 11, 11, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (267, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在POWERPOINT2003中，增加新幻灯片可在（）菜单中选中“新幻灯片”。', N'插入§编辑§格式§文件', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (268, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'WORD2003中，表格最快的排版方式可以利用菜单（）来实现', N'格式/字符§表格/自动套用§格式/段落§插入/表格', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (269, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'用英文录入文件时，大小写切换键是（）。', N'TAB§CAPSLOCK§CTRL§SHIFT', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 1, 1, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (270, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'WORD2003中，“文件”菜单中“关闭”命令的意思是（）。', N'关闭WORD窗口连同其中的文档窗口，并退到WINDOWS中§关闭文档窗口中，并退出到WINDOWS中§关闭WORD窗口连同其中中文档串钩，退到DOS状态下§关闭文档窗口但仍在WORD内', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (271, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'默认情况下，在WORD中输入的错误的英文单词，会（）。', N'系统响铃，提示出错§在单词下有黑色波浪线§在单词下有红色波浪线§WORD自动更正', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (272, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'WORD2003中，“文件”下拉菜单底部所显示的文件名是（）。', N'正在使用的文件名§正在打印的文件名§扩展名为“.DOC”的全部文件§最近被WORD处理的文件名', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (273, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列快捷键中中哪个选择整篇文档（）。', N'ALT+A§CTRL+A§SHIFT+A§CTRL+AL+A', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (274, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在EXCEL中，单元格中输入公式，要以（）开头。', N'大于号§数字§等号§字母', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (275, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在INTERNET EXPLORER浏览器中，要保存一个网址，可以使用（）功能。', N'历史§搜索§收藏§转移', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (276, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在IE浏览器页面上端地址栏内输入FTP地址的正确格式是（）。', N'HTTP://10.18.8.30§FTP://10.18.8.30§10.18.8.30§FTP:\\10.18.8.30', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (277, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'压缩文件夹加密码操作正确的是（）。', N'右键单击压缩文件夹；加密§右键单击要压缩文件夹；选择“添加到压缩文件”；在选择“高级”选项卡；设置密码§右键单击要压缩文件夹选择“打开”；设置密码§打开压缩文件夹；设置密码', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (278, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'WINDOWS中彻底删除文件的操作（）。', N'选定文件后，同时按下Shift与Del键§选定文件后同时按下CTRL与DEL键§选定文件后，按下DEL键§选定文件后，同时按下ALT与DEL键', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (279, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在“我的电脑”或“资源管理器”窗口中，使用（）可以按名称、类型、大小、日期排列窗口中的内容。', N'“文件”菜单§“查看”菜单§“编辑”菜单§“工具”菜单', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (280, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'WINDOW桌面上的快捷方式图标表示（）。', N'操作系统§应用程序§数据文件§快捷菜单', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (281, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'计算机病毒是（）。', N'计算机系统自生的§一种人为编制的计算机程序§主机发生故障时产生的§可传染疾病给人体的那种病毒', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (282, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在资源管理器窗口中，（）的功能不能实现', N'文件及文件夹的建立与删除§查找文件及文件夹§磁盘的格式化§修改文档的建立日期与时间', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (283, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'计算机电源关闭后，所有的数据保存在（）。', N'CPU§内存§主板§硬盘', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (284, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'剪切操作是将被剪切的对象（）。', N'删除§放入“回收站”§临时存放在“剪贴板”上§临时放在桌面上', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (285, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'以下有关操作系统的叙述中说话错误的是（）。', N'操作系统管理着系统中的各种资源§操作系统应用的快捷方式图标§操作系统是资源的管理者和仲裁者§操作系统是计算机系统中的一个应用软件', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 1, 1, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (286, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在WINDOWS XP操作系统中，可以通过以下哪个方式启动程序（）。', N'桌面快捷方式图标§开始菜单§快速启动栏§以上都是', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (287, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在IE浏览器中，若需要设置主页，可以通过以下（）菜单完成。', N'文件§编辑§收藏§工具', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 11, 11, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (288, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，Ctrl+C的功能是（）。', N'剪切§复制§全选§粘贴', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (289, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel2003中，若在工作表中插入一列，则一般插在当前列的（）。', N'左侧§上方§右侧§下方', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (290, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel2003中，若选定多个不连续的行所用的键是（）。', N'Shift+所选行§Ctrl+所选行§Alt+所选行§Shift+Ctrl+所选行', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (291, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中，没有进行“边框”设置的表格，打印出来后，看到的效果是（）。', N'有网格线§无网格线§时而有网格线，时而无网格线§表格的一部分有网格线，一部分无网格线', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (292, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在PowerPoint2003中，若一个演示文稿中有三张幻灯片，播放时要跳过第二张放映，可（）。', N'隐藏第二张幻灯片§取消第二张幻灯片的动画效果§取消第一张幻灯片的动画效果§只能删除第二张幻灯片', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (293, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在使用Word编辑文档时，插入点的形状是（）。', N'手型§箭头型§闪烁的竖条型§沙漏型', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (294, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word制表时，选择“表格”菜单中的（）命令可以调整行高和列宽。', N'表格属性§单元格§自动套用格式§插入表格', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (295, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，要想使所编辑的文件保存后不被他人查看，可在安全性的“选项”中设置（）。', N'修改权限口令§建议只读方式打开§打开权限口令§快速保存', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (296, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word环境下，如果你在编辑文本是执行了错误操作，（）功能可以帮助你回复换来的状态。', N'复制§粘贴§撤销§清除', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (297, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel不能用于（）。', N'处理表格§创建图表§统计分析§制作演示文稿', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 9, 9, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (298, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel中，在当前工作表的前面插入一新工作表，可以使用菜单中的（）命令。', N'编辑§插入§工具§文件', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (299, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Worde2003中的（）视图方式使得显示效果与打印预览基本相同。', N'普通§阅读§大纲§页面', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 5, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (300, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在幻灯片“动作设置”对话框中设置的超级链接，起链接对象不可以是（）。', N'下一站幻灯片§上一张幻灯片§其他演示文稿§幻灯片中的某一对象', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (301, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Worde的编辑状态，执行编辑菜单中的“全选”命令后（）。', N'整个文档被选择§插入点所在的段落被选择§插入点所在的行被选择§插入点至文档的首部被选择', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (302, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'中文Windows中，按键（），可在个中汉字输入方式之间切换。', N'Ctrl+Space§Shift+Space§Alt+Space§Ctrl+Shinft', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (303, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，段落“缩进”后打印出来的文本，起文本相对于打印纸边界的距离为（）。', N'页边距§缩进距离§悬挂缩进距离§页边距+缩进距离', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (304, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word文档窗口中，若选定的文字包含有几种字体的汉字，则格式工具栏的字体框中显示（）。', N'空白§第一个案子的字体§宋体§选定的文字中使用最多的文字字体', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (305, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在“幻灯片浏览视图”模式下，不允许进行的操作是（）。', N'幻灯片移动和复制§幻灯片切换§幻灯片删除§设置动画效果', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (306, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Powerpoint2000运行的操作系统环境是（）。', N'UNIX§DOS§Macintosh§Windows', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (307, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中，选取单元格时，鼠标指针为（）。', N'竖条光标§空心十字光标§箭头光标§不确定', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (308, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在PowerPoint文本框中可以插入（）。', N'只有文字§只有图片§只有声音§文字和图片', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (309, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel中，不连续单元格的选取，可借助于（）键完成。', N'Ctrl键§Shift键§Alt键§Tab键', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (310, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，单击“常用”工具栏上的“打印”按钮，则会（）。', N'打印选定内容§打印当前页§打印全部文档§出现“打印”对话框', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (311, N'', N'', 1, 1, 3, N'', N'TYPE_MULTIPLE', 2, N'在Word中，用拼音输入法输入单个汉字时，字母键（）。', N'必须是大写§必须是小写§可以大写与小写§可以大写与小写混合使用', N'B,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 52, 52, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (312, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，文档编辑窗口中，将选定的一段文字拖动到另一位置，则完成对该段文字的（）。', N'移动操作§复制操作§删除操作§非法操作', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (313, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列哪种视图不是Word中的视图模式（）。', N'页面视图§大纲视图§特殊视图§普通视图', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (314, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，若要将某个段落的格式复制到另一段，可采用（）。', N'字符样式§拖动§格式刷§剪切', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (315, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003中，编辑修改以前有用文本时，不覆盖原文件并且保留这一次的修改，可以采用（）。', N'用“文件”菜单中的“保存”命令§用“文件”菜单中的“另存为”命令§用“文件”菜单中的“关闭”命令§用“文件”菜单中的“退出”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (316, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word2003中，可以同时打开多个窗口，但是（）。', N'只能打开一个文档窗口才可以编辑§多个文档之间不可以切换编辑§可同时编辑多个§不是活动的窗口也可以编辑', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 5, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (317, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下列关于Word文档窗口的说法中，正确的是（）。', N'只能打开一个文档窗口§可以同时打开多个文档窗口，被打开的窗口都是活动窗口§可以同时打开多个文档窗口，但其中只有一个是活动窗口§可以同时打开多个文档窗口，但在屏幕上只能见到一个文档窗口', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 4, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (318, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，要使文档的标题位于页面居中位置，应使标题（）。', N'两端对齐§居中对齐§分散对其§右对齐', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (319, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Word中，若要将选中的文本内容加粗，可以单击（）。', N'B§U§I§A', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 8, 8, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (320, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在幻灯片视图中，不能执行的操作有（）。', N'删除当前幻灯片上的文字§删除当前幻灯片上的图形§改变幻灯片上文字的大小§删除该幻灯片', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (321, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'关于Excel中排序，说法正确的是（）。', N'只能按行排序§只能按列排序§既能按行排序，也能按列排序§以上说法都不正确', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 3, 3, 1)
GO
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (322, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'下面 有关Word的描述中，错误的是（）。', N'Word的默认文档类型为DOC§可以将Word文档保存为TXT类型§可以将Word文档保存为JPG类型§可以将Word文档保存为HTML类型', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (323, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'文图混排是Word的主要特色之一，以下属于文图混排的是（）。', N'水印型方式§嵌入型方式§图形与文字并排方式§指纹型方式', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'826PF8RJ4X8PP8Z0XP8Z', 6, 6, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (324, N'', N'', 1, 1, 3, N'', N'TYPE_TRUE_FALSE', 3, N'集群系统是很多用户自动分享数量相对较少的无线信道，并动态地使用这些信道的移动通信系统。', N'', N'Y', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 31, 30, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (325, N'', N'', 1, 1, 3, N'', N'TYPE_TRUE_FALSE', 3, N'所谓无线通信，它不需架设线路而利用无线电波在空间传递消息。', N'', N'Y', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 30, 27, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (327, N'', N'', 1, 1, 3, N'', N'TYPE_TRUE_FALSE', 3, N'对讲机电池充电时间越长越好。', N'', N'N', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), N'', 31, 31, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (328, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'工作表中，“SUM(A4：D16)”表示求“A4 D16”单元格的', N'平均值 §和 §最大值 §最小值
', N'B', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (329, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'在Excel工作表中，单元格的编号方法是', N'数字+字母§字母+数字§行号+列标§列标+行号', N'D', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), N'', 2, 2, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (330, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'要将Word文档中一部分选定的文字移动到指定的位置，对它进行的操作是', N'单击"编辑"菜单下的"复制"命令，在指定的位置再点“粘贴”命令。§单击"编辑"菜单下的"清除"命令，在指定的位置再点“复制”命令。§单击"编辑"菜单下的"剪切"命令，在指定的位置再点“粘贴”命令。§单击"编辑"菜单下的"粘贴"命令，在指定的位置再点“复制”命令。

', N'C', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), N'', 4, 3, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (331, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'关于Excel中排序，说法正确的是', N'只能按行排序§只能按列排序§既能按行排序，也能按列排序§以上说法都不正确', N'C', 0, 0, N'', 4, N'主要是测试的哦', 0, CAST(0x0000A3ED0130E96C AS DateTime), N'08200P6XNN44DPN4Z826', 38, 38, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (332, N'', N'', 1, 1, 3, N'', N'TYPE_RADIO', 1, N'Excel中当单元格中出现多个字符“#”时，说明该单元格', N'数据输出错误§数值格式设置错误§文字数据长度超过单元格宽度§数值数据长度超过单元格宽度', N'D', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), N'000RX0JBV8D2L0FV6XHZ', 37, 37, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (335, N'', N'', 1, 1, 2, N'2', N'TYPE_BLANK', 4, N'数据类型包括：(#answer)、(#answer)、(#answer)。', N'', N'布尔,数值,字符', 1, 0, N'', 3, N'<span>', 2, CAST(0x0000A4290169E03C AS DateTime), N'2R0640T0LBR80V080NR2', 9, 9, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (336, N'', N'', 1, 1, 3, N'', N'TYPE_BLANK', 4, N'你是谁(#answer)？', N'', N'方配', 0, 0, N'', 1, N'', 2, CAST(0x0000A73801031820 AS DateTime), N'', 7, 7, 1)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [kid], [parentid], [uid], [channelid], [sortid], [typelist], [type], [display], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [attachid], [exams], [wrongs], [status]) VALUES (337, N'', N'', 1, 1, 3, N'', N'TYPE_BLANK', 4, N'国内最好的考试系统是(#answer)。', N'', N'方配在线考试系统', 0, 0, N'', 1, N'', 2, CAST(0x0000A738010397DC AS DateTime), N'60402VH8TLV22D82Z4P0', 10, 10, 1)
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [attachid], [status], [paper], [ip], [mac], [isvideo], [client], [papertype], [title], [address]) VALUES (1, 1, 4, 4, 9, N'正式考试测试（全卷模式）', 60, 0, 1, 0, 100, 60, 0, 0, 0, 7, 0, CAST(0x0000A9F8012A58F4 AS DateTime), CAST(0x0000A9F8012A6380 AS DateTime), CAST(0x0000A9F8012A58F4 AS DateTime), 0, 45, 45, 0, 0, 0, N'', N'86D668X86082B088NX82ZTTZH24H6V', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00', 0, N'pc', 0, N'正式考试测试（全卷模式）', N'')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [attachid], [status], [paper], [ip], [mac], [isvideo], [client], [papertype], [title], [address]) VALUES (2, 1, 4, 4, 9, N'正式考试测试（全卷模式）', 60, 0, 1, 0, 100, 60, 4, 0, 4, 14, 0, CAST(0x0000A9F900BEAAF0 AS DateTime), CAST(0x0000A9F900BEBDB0 AS DateTime), CAST(0x0000A9F900BEAAF0 AS DateTime), 0, 45, 43, 0, 0, 0, N'', N'8HPT0VPL4F04J6XB4462V2LN84FD2N', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00', 0, N'pc', 0, N'正式考试测试（全卷模式）', N'方配总部')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [attachid], [status], [paper], [ip], [mac], [isvideo], [client], [papertype], [title], [address]) VALUES (3, 1, 4, 4, 12, N'正式考试测试（单题模式）', 60, 0, 1, 0, 90, 60, 0, 0, 0, 48, 0, CAST(0x0000A9F9011ECFD4 AS DateTime), CAST(0x0000A9F9011F1750 AS DateTime), CAST(0x0000A9F9011ECFD4 AS DateTime), 0, 31, 31, 0, 0, 0, N'', N'BP8L42RHB2XL6T22B006XL24484004', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00', 1, N'pc', 1, N'正式考试测试（单题模式）', N'')
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (1, 1, N'TYPE_RADIO', N'第一题、单选题', 1, 2, 0, 30, 30, N'196,221,227,186,93,332,139,63,16,112,267,299,252,330,284,242,316,268,155,140,309,69,195,180,211,331,50,100,33,300', N'C§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (2, 1, N'TYPE_MULTIPLE', N'第二题、多选题', 2, 2, 0, 10, 10, N'311,80,125,128,88,5,124,94,81,126', N'', N'0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (3, 1, N'TYPE_TRUE_FALSE', N'第三题、判断题', 3, 2, 0, 5, 5, N'324,325,85,327,84', N'', N'0|0|0|0|0', N'0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (4, 2, N'TYPE_RADIO', N'第一题、单选题', 1, 2, 4, 30, 28, N'220,292,251,205,331,236,308,164,111,195,149,93,180,139,211,307,63,16,298,332,61,10,42,32,267,252,329,226,112,132', N'A§C§A§A§A§B§§§§§§§§§§§§§§§§§§§§§§§§', N'2|0|0|2|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', N'1|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (5, 2, N'TYPE_MULTIPLE', N'第二题、多选题', 2, 2, 0, 10, 10, N'88,127,124,81,5,128,80,79,311,126', N'', N'0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (6, 2, N'TYPE_TRUE_FALSE', N'第三题、判断题', 3, 2, 0, 5, 5, N'325,327,84,85,324', N'', N'0|0|0|0|0', N'0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (7, 3, N'TYPE_RADIO', N'第一题、单选题', 1, 2, 0, 15, 15, N'215,258,186,118,21,290,156,39,33,233,289,75,1,16,177', N'A§§§§§C§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (8, 3, N'TYPE_MULTIPLE', N'第二题、多选题', 2, 2, 0, 12, 12, N'311,5,126,88,79,94,81,124,80,127,128,125', N'A,B§§A,B§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (9, 3, N'TYPE_BLANK', N'第三题、填空题', 3, 5, 0, 2, 2, N'337,338', N'方配的', N'0|0', N'0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (10, 3, N'TYPE_ANSWER', N'第四题、问答题', 4, 10, 0, 2, 2, N'83,82', N'', N'0|0', N'0|0', NULL)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (19, 8, N'TYPE_RADIO', N'第一题、单选题', 1, 30, 0, N'', 2, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (20, 8, N'TYPE_MULTIPLE', N'第二题、多选题', 2, 10, 0, N'', 4, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (21, 9, N'TYPE_RADIO', N'第一题、单选题', 1, 30, 2, N'332,331', 2, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (22, 9, N'TYPE_MULTIPLE', N'第二题、多选题', 2, 10, 0, N'', 2, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (25, 11, N'TYPE_RADIO', N'第一题、单选题', 1, 30, 1, N'106', 1, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (26, 11, N'TYPE_MULTIPLE', N'第二题、多选题', 2, 20, 0, N'', 2, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (27, 12, N'TYPE_RADIO', N'第一题、单选题', 1, 15, 0, N'', 2, N'3_0,2_0', N'3,3', 6, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (28, 12, N'TYPE_MULTIPLE', N'第二题、多选题', 2, 15, 0, N'', 2, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (29, 12, N'TYPE_BLANK', N'第三题、填空题', 3, 2, 0, N'', 5, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (30, 12, N'TYPE_ANSWER', N'第四题、问答题', 4, 2, 0, N'', 10, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (31, 11, N'TYPE_TRUE_FALSE', N'第三题、判断题', 3, 30, 0, N'', 1, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (32, 9, N'TYPE_TRUE_FALSE', N'第三题、判断题', 3, 10, 0, N'', 2, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (1, 1, 3, N'TYPE_RADIO', 0, 207, N'109,110,111,112,113,114,116,117,118,119,120,121,132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,312,313,314,315,316,317,318,319,320,321,322,323,328,329,330,331,332')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (2, 1, 3, N'TYPE_MULTIPLE', 0, 6, N'124,125,126,127,128,311')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (3, 1, 3, N'TYPE_TRUE_FALSE', 0, 3, N'324,325,327')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (4, 1, 3, N'TYPE_BLANK', 0, 2, N'336,337')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (5, 1, 3, N'TYPE_ANSWER', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (6, 1, 3, N'TYPE_OPERATION', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (7, 1, 2, N'TYPE_RADIO', 0, 83, N'1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,48,49,50,52,53,54,55,56,58,59,60,61,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,93,95,96,97,98,99,100,101,102,103,104,105,106')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (8, 1, 2, N'TYPE_MULTIPLE', 0, 6, N'5,79,80,81,88,94')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (9, 1, 2, N'TYPE_TRUE_FALSE', 0, 2, N'84,85')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (10, 1, 2, N'TYPE_BLANK', 0, 2, N'335,338')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (11, 1, 2, N'TYPE_ANSWER', 0, 3, N'82,83,87')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (12, 1, 2, N'TYPE_OPERATION', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (13, 1, 2, N'TYPE_RADIO', 1, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (14, 1, 2, N'TYPE_MULTIPLE', 1, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (15, 1, 2, N'TYPE_TRUE_FALSE', 1, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (16, 1, 2, N'TYPE_BLANK', 1, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (17, 1, 2, N'TYPE_ANSWER', 1, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (18, 1, 2, N'TYPE_OPERATION', 1, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (19, 1, 1, N'TYPE_RADIO', 0, 290, N'1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,48,49,50,52,53,54,55,56,58,59,60,61,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,93,95,96,97,98,99,100,101,102,103,104,105,106,109,110,111,112,113,114,116,117,118,119,120,121,132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,312,313,314,315,316,317,318,319,320,321,322,323,328,329,330,331,332')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (20, 1, 1, N'TYPE_MULTIPLE', 0, 12, N'5,79,80,81,88,94,124,125,126,127,128,311')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (21, 1, 1, N'TYPE_TRUE_FALSE', 0, 5, N'84,85,324,325,327')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (22, 1, 1, N'TYPE_BLANK', 0, 4, N'335,336,337,338')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (23, 1, 1, N'TYPE_ANSWER', 0, 3, N'82,83,87')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (24, 1, 1, N'TYPE_OPERATION', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (25, 1, 0, N'TYPE_RADIO', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (26, 1, 0, N'TYPE_MULTIPLE', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (27, 1, 0, N'TYPE_TRUE_FALSE', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (28, 1, 0, N'TYPE_BLANK', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (29, 1, 0, N'TYPE_ANSWER', 0, 0, N'')
INSERT [dbo].[FP_Exam_SortQuestion] ([id], [channelid], [sortid], [type], [typeid], [counts], [questionlist]) VALUES (30, 1, 0, N'TYPE_OPERATION', 0, 0, N'')
INSERT [dbo].[FP_WMS_AttachInfo] ([id], [attachid], [parentid], [platform], [app], [postid], [uid], [name], [filename], [filetype], [filesize], [description], [uploadtime], [downloads], [reads], [issync]) VALUES (1, N'BP8L42RHB2XL6T22B006XL24484004', 0, N'', N'FP_Exam', 3, 1, N'正式考试测试（单题模式）_考试视频图片', N'/upload/201902/19/201902191724574418.jpg', N'jpg', 11405, N'考试上传视频图片', CAST(0x0000A9F9011F010C AS DateTime), 0, 0, 0)
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (1, N'jpg', 4096, N'图片文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (3, N'gif', 4096, N'图片文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (4, N'zip', 4096, N'压缩文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (6, N'png', 4096, N'图片文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (7, N'rar', 4096, N'压缩文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (8, N'doc', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (9, N'xls', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (10, N'flv', 1024000, N'视频文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (11, N'ppt', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (12, N'swf', 4096, N'动画文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (13, N'docx', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (14, N'xlsx', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (15, N'pdf', 4096, N'文档文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (16, N'mp4', 102400, N'视频文件')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (17, N'mp3', 102400, N'音频文件')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (1, N'系统角色信息缓存', N'FP_ROLELIST', -1, CAST(0x0000A9FA00E3D564 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (2, N'用户注册配置缓存', N'FP_REGCONFIG', 0, CAST(0x0000A9FA00E076E4 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (3, N'系统部门信息缓存', N'FP_DEPARTLIST', -1, CAST(0x0000A9FA00E3D564 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (4, N'系统菜单信息缓存', N'FP_MENULIST', 30, CAST(0x0000A9FA00E3D564 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (5, N'系统桌面信息缓存', N'FP_DESKLIST', -1, CAST(0x0000A7C1001988B8 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (6, N'系统邮箱配置缓存', N'FP_EMAILCONFIG', 0, CAST(0x0000A99A01219020 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (7, N'栏目功能信息缓存', N'FP_SORTAPPLIST', -1, CAST(0x0000A9FA00E0955C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (8, N'系统用户信息缓存', N'FP_USERLIST', -1, CAST(0x0000A9FA00E3D564 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (9, N'系统应用信息缓存', N'FP_APPLIST', -1, CAST(0x0000A9FA00E0E05C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (10, N'用户级别信息缓存', N'FP_USERGRADE', -1, CAST(0x0000A77A018B73F0 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (11, N'系统插件信息缓存', N'FP_PLUGINLIST', -1, CAST(0x0000A9FA00E08044 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (12, N'单点登录配置缓存', N'FP_SSOCONFIG', 0, CAST(0x0000A9C001014F18 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (13, N'系统分类信息缓存', N'FP_TYPELIST', -1, CAST(0x0000A9FA00E0955C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (14, N'系统短信配置缓存', N'FP_SMSCONFIG', 0, CAST(0x0000A91800F8CB68 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (15, N'考试题库信息缓存', N'FP_SORTQUESTIONLIST', -1, CAST(0x0000A9F9011ECD7C AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (16, N'系统桌面信息缓存', N'FP_DESKTOPLIST', -1, CAST(0x0000A9FA00E3D690 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (17, N'附件类型信息缓存', N'FP_ATTACHTYPE', -1, CAST(0x0000A9F4009F1E60 AS DateTime), N'')
INSERT [dbo].[FP_WMS_CacheInfo] ([id], [name], [key], [expires], [cachedatetime], [file]) VALUES (18, N'系统岗位信息缓存', N'FP_GRADELIST', -1, CAST(0x0000A9F400F1A040 AS DateTime), N'')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup], [sortapps], [description]) VALUES (1, N'题库管理', 2, N'question', N'1', N'考试题库科目管理')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup], [sortapps], [description]) VALUES (2, N'模拟考试', 4, N'exam_test', N'3', N'模拟考试科目管理')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup], [sortapps], [description]) VALUES (3, N'课程管理', 1, N'course', N'4', N'在线课程科目管理')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup], [sortapps], [description]) VALUES (4, N'正式考试', 5, N'exam_formal', N'2', N'正式考试科目管理')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup], [sortapps], [description]) VALUES (5, N'练习管理', 3, N'test', N'5', N'在线练习科目管理')
INSERT [dbo].[FP_WMS_Department] ([id], [keyid], [parentid], [parentlist], [departlist], [name], [longname], [shortname], [markup], [types], [manager], [departer], [usercount], [description], [display], [subcounts], [posts]) VALUES (1, N'', 0, N'0,1', N'方配软件', N'方配软件', N'', N'', N'', N'', N'', N'', 1, N'', 1, 2, 0)
INSERT [dbo].[FP_WMS_Department] ([id], [keyid], [parentid], [parentlist], [departlist], [name], [longname], [shortname], [markup], [types], [manager], [departer], [usercount], [description], [display], [subcounts], [posts]) VALUES (2, N'', 1, N'0,1,2', N'方配软件>研发部', N'研发部', N'方配软件研发部', N'', N'', N'', N'', N'', 1, N'', 1, 0, 0)
INSERT [dbo].[FP_WMS_Department] ([id], [keyid], [parentid], [parentlist], [departlist], [name], [longname], [shortname], [markup], [types], [manager], [departer], [usercount], [description], [display], [subcounts], [posts]) VALUES (3, N'', 1, N'0,1,3', N'方配软件>行政部', N'行政部', N'方配软件行政部', N'', N'', N'', N'', N'', 0, N'', 2, 0, 0)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (1, 0, N'sites_admin', 6, N'站点管理', N'', N'SYSTEM', N'', N'statics/desktop/sites.gif', N'688P0462PZ682X42VV64', N'global/sitemanage.aspx', N'_self', 0, 0, 0, 0, 3)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (2, 0, N'sites_admin', 6, N'角色管理', N'', N'SYSTEM', N'', N'statics/desktop/role.gif', N'P48602804LPLR04L8BJ8', N'user/rolemanage.aspx', N'_self', 0, 0, 0, 0, 2)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (3, 0, N'sites_admin', 6, N'用户管理', N'', N'SYSTEM', N'', N'statics/desktop/users.gif', N'N4V628N0680X8LPHF0RP', N'user/usermanage.aspx', N'_self', 0, 0, 0, 0, 4)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (4, 0, N'sites_admin', 6, N'题库管理', N'', N'FP_Exam', N'', N'statics/desktop/sort.gif', N'24NXN244DRZRR4TJP4P2', N'sort/sortmanage.aspx', N'_self', 1, 0, 0, 0, 5)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (5, 1, N'sites_admin', 6, N'系统配置', N'', N'SYSTEM', N'', N'statics/desktop/sys.gif', N'PHJLD2X2DHTPL02ZR0DD', N'global/sysconfigmanage.aspx', N'_self', 0, 0, 0, 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (6, 1, N'sites_admin', 0, N'后台桌面', N'wms_desktop', N'SYSTEM', N'', N'statics/desktop/bms.png', N'8VZ428B462ZFDLH02F08', N'', N'_self', 0, 650, 500, 0, 0)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [app], [parentid], [name], [markup], [platform], [description], [icon], [attach_icon], [url], [target], [desk], [width], [height], [hidden], [display]) VALUES (7, 1, N'FP_Exam', 6, N'考试设置', N'', N'FP_Exam', N'', N'exam.png', N'0BHJ0L26TR400NF200BF', N'admin/examconfig.aspx', N'_open', 1, 0, 0, 0, 6)
INSERT [dbo].[FP_WMS_GradeInfo] ([id], [name], [description], [departid], [display]) VALUES (1, N'员工', N'', N'', NULL)
INSERT [dbo].[FP_WMS_GradeInfo] ([id], [name], [description], [departid], [display]) VALUES (2, N'部门经理', N'', NULL, NULL)
INSERT [dbo].[FP_WMS_GradeInfo] ([id], [name], [description], [departid], [display]) VALUES (3, N'总经理', N'', NULL, NULL)
INSERT [dbo].[FP_WMS_GradeInfo] ([id], [name], [description], [departid], [display]) VALUES (4, N'董事长', N'', NULL, NULL)
INSERT [dbo].[FP_WMS_GradeInfo] ([id], [name], [description], [departid], [display]) VALUES (5, N'总裁', N'', NULL, NULL)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (1, 0, N'系统设置', N'SYSTEM', N'sysmenu.aspx?parentid=1', N'desktop.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (2, 1, N'系统常规设置', N'SYSTEM', N'', N'', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (3, 2, N'系统基础配置', N'SYSTEM', N'', N'global/sysconfigmanage.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (5, 2, N'系统文件管理', N'SYSTEM', N'', N'global/sysfilesmanage.aspx', 7, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (6, 2, N'系统缓存管理', N'SYSTEM', N'', N'global/cachemanage.aspx', 8, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (7, 2, N'系统日志管理', N'SYSTEM', N'', N'global/syslogmanage.aspx', 10, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (8, 2, N'邮箱短信配置', N'SYSTEM', N'', N'global/emailconfigmanage.aspx', 11, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (9, 2, N'系统菜单管理', N'SYSTEM', N'', N'global/sysmenumanage.aspx', 6, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (10, 40, N'上传图片配置', N'SYSTEM', N'', N'global/watermarkset.aspx', 10, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (11, 40, N'上传文件类型', N'SYSTEM', N'', N'global/attachtypemanage.aspx', 11, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (12, 40, N'上传文件管理', N'SYSTEM', N'', N'global/attachmanage.aspx', 12, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (13, 1, N'系统用户设置', N'SYSTEM', N'', N'', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (14, 13, N'系统角色管理', N'SYSTEM', N'', N'user/rolemanage.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (15, 13, N'操作权限管理', N'SYSTEM', N'', N'user/permissionmanage.aspx', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (16, 13, N'用户部门管理', N'SYSTEM', N'', N'user/departmentmanage.aspx', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (17, 13, N'用户岗位管理', N'SYSTEM', N'', N'user/grademanage.aspx', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (18, 13, N'用户注册配置', N'SYSTEM', N'', N'user/regconfigmanage.aspx', 5, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (19, 13, N'等待验证用户', N'SYSTEM', N'', N'user/userauditing.aspx', 6, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (20, 13, N'系统用户管理', N'SYSTEM', N'', N'user/usermanage.aspx', 10, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (21, 1, N'系统栏目设置', N'SYSTEM', N'', N'', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (22, 2, N'系统站点管理', N'SYSTEM', N'', N'global/sitemanage.aspx', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (23, 21, N'系统栏目管理', N'SYSTEM', N'', N'sort/sortmanage.aspx', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (25, 1, N'系统数据库设置', N'SYSTEM', N'', N'', 5, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (26, 25, N'在线运行SQL命令', N'SYSTEM', N'', N'dbset/runsql.aspx', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (27, 25, N'数据库备份还原', N'SYSTEM', N'', N'dbset/dbbackup.aspx', 1, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (28, 25, N'数据库收缩优化', N'SYSTEM', N'', N'dbset/dbshrink.aspx', 2, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (29, 0, N'题库管理', N'FP_Exam', N'sorttree.aspx?channelid=1&posts=1', N'/exam/admin/questionmanage.aspx?channelid=1', 3, 0, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (30, 2, N'系统桌面管理', N'SYSTEM', N'', N'global/desktopmanage.aspx', 5, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (31, 21, N'栏目功能管理', N'SYSTEM', N'', N'sort/sortappmanage.aspx', 4, 1, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (32, 21, N'系统类型管理', N'FP_Exam', N'', N'sort/typemanage.aspx', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (34, 21, N'系统频道管理', N'SYSTEM', N'', N'sort/channelmanage.aspx', 1, 1, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (36, 2, N'系统插件管理', N'SYSTEM', N'', N'global/pluginmanage.aspx', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (39, 25, N'重置清空数据库', N'SYSTEM', N'', N'dbset/dbreset.aspx', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (40, 1, N'上传文件设置', N'SYSTEM', N'', N'', 4, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (41, 2, N'系统应用管理', N'SYSTEM', N'', N'global/appmanage.aspx', 3, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (42, 2, N'系统计划任务', N'SYSTEM', N'', N'global/taskmanage.aspx', 9, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (44, 13, N'单点登录配置', N'SYSTEM', N'', N'global/ssoconfigs.aspx', 8, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (46, 13, N'登录用户管理', N'SYSTEM', N'', N'global/sessionmanage.aspx', 7, 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (47, 0, N'模拟考试', N'FP_Exam', N'sorttree.aspx?channelid=2', N'/exam/admin/exammanage.aspx?channelid=2', 5, 0, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (48, 0, N'课程管理', N'FP_Exam', N'sorttree.aspx?channelid=3', N'/app/course/course_manage.aspx?channelid=3', 2, 0, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (49, 0, N'正式考试', N'FP_Exam', N'sorttree.aspx?channelid=4', N'/exam/admin/exammanage.aspx?channelid=4', 6, 0, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [platform], [lefturl], [righturl], [display], [hidden], [system]) VALUES (50, 0, N'练习管理', N'FP_Exam', N'sorttree.aspx?channelid=5', N'/exam/admin/testmanage.aspx?channelid=5', 4, 1, 0)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (1, 1, N'新用户激活邮件', N'email_register', N'方配网站管理系统用户注册激活邮件', N'亲爱的【姓名】, 您好！<br />
<br />
感谢您注册方配网站管理系统的用户，您登录的邮箱帐号为 【邮箱帐号】<br />
请在三天内点击或将该链接复制到浏览器地址栏中访问，确认您的邮件地址并激活账号。<br />
【激活链接】<br />
(如果链接无法点击，请将它拷贝到浏览器的地址栏中)<br />
感谢您对我们的支持！<br />
<br />
-----------------------------------------------------------------------<br />
此为系统邮件，请勿回复。<br />
方配软件技术有限公司<br />
如有任何疑问，可访问 <a href="http://www.fangpage.com" target="_blank">http://www.fangpage.com</a> <br />
<p>
	<br />
</p>', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (3, 1, N'新用户激活成功邮件', N'email_registed', N'方配网站管理系统用户激法成功！', N'尊敬的【姓名】，您好！<br />
恭喜您成功注册账号 <span>【邮箱帐号】</span>！<br />
<p>
	为了让您正常愉快的享受我们的服务，请妥善保管您好的账号和密码，以免遭到泄漏被他人盗用。
</p>
<p>
	<br />
</p>
<p>
	<span>-----------------------------------------------------------------------</span><br />
<span>此为系统邮件，请勿回复。</span><br />
<span>方配软件技术有限公司</span><br />
<span>如有任何疑问，可访问 </span><a href="http://www.fangpage.com/" target="_blank">http://www.fangpage.com</a><span> </span> 
</p>', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (5, 1, N'重置密码邮件', N'email_resetpassword', N'方配网站管理系统重置密码邮件', N'亲爱的【姓名】，您好：<br />
<br />
很高兴您使用方配网站管理系统(WMS)。<br />
<br />
请在30分钟内点击以下链接重置您的密码：<br />
【激活链接】<br />
(如果链接无法点击，请将它拷贝到浏览器的地址栏中)<br />
感谢您对我们的支持！<br />
<br />
-----------------------------------------------------------------------<br />
此为系统邮件，请勿回复。<br />
方配软件技术有限公司<br />
如有任何疑问，可访问 http://www.fangpage.com <br />
<br />', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (6, 1, N'注册成功邮件', N'email_success', N'恭喜您成功注册账号', N'<h4 style="font-size:14px;font-family:''lucida Grande'', Verdana, ''Microsoft YaHei'';background-color:#FFFFFF;">
	尊敬的客户，您好！
</h4>
<h4 style="text-align:start;font-size:14px;font-family:''lucida Grande'', Verdana, ''Microsoft YaHei'';background-color:#FFFFFF;">
	<span style="line-height:1.5;"> </span><span style="font-weight:normal;line-height:1.5;">恭喜您成功注册账号 【用户名】（【姓名】）</span><span style="font-weight:normal;line-height:1.5;">！</span> 
</h4>
<div style="font-family:''lucida Grande'', Verdana, ''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;margin:0px;">
	为了让您正常愉快的享受我们的服务，请妥善保管您的账号和密码，以免遭到泄漏被他人盗用。如果您忘记了密码，请点击【重置密码】。
</div>', 0)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (7, 1, N'测试发送邮件', N'email_test', N'方配网站管理系统(WMS)发送系统测试邮件', N'您好，这是一封方配网站管理系统(WMS)邮箱设置页面发送的测试邮件!，如果您收到这款邮件说明您的邮箱配置是正确的。', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (8, 2, N'测试发送短信', N'sms_test', N'', N'您的验证码是：【验证码】。请不要把验证码泄露给其他人。如非本人操作，可不用理会！', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (9, 2, N'验证码短信', N'sms_verify', N'', N'您的验证码是：【验证码】。请不要把验证码泄露给其他人。如非本人操作，可不用理会！', 1)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (10, 2, N'短信前辍', N'sms_prefix', N'', N'【${name}】', 0)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [subject], [content], [status]) VALUES (11, 2, N'短信后辍', N'sms_suffix', N'', N'【方配软件】', 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (1, N'栏目管理', N'admin/sort/sortmanage.aspx
admin/sort/sortadd.aspx', 1, 1, 0, 0, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (2, N'用户查看', N'admin/user/usermanage.aspx', 0, 0, 0, 0, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (3, N'阅卷权限', N'exam/examread.aspx
exam/examreadpost.aspx', 1, 1, 1, 1, 1)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (1, N'系统管理员', N'', N'', N'', N'7,8,1,2,3,9,6,4', N'29,43,44,45,46,47,48,49,50', N'6,5,2,1,3,4,7', N'', 0, 0, 0, 0)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (2, N'游客', N'', N'', N'', N'', N'', N'', N'', 0, 0, 0, 0)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (3, N'等待验证', N'', N'', N'', N'', N'', N'', N'', 0, 0, 0, 0)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (4, N'禁止访问', N'', N'', N'', N'', N'', N'', N'', 0, 0, 0, 0)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (5, N'考生用户', N'', N'', N'', N'', N'', N'', N'', 0, 1, 1, 0)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [markup], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload], [issms]) VALUES (6, N'教师用户', N'', N'', N'', N'1,2,3,6,,4,7,8', N'29,47,49,48', N'3,4', N'2,3', 1, 1, 1, 0)
INSERT [dbo].[FP_WMS_SessionInfo] ([id], [sid], [uid], [username], [password], [realname], [avatar], [platform], [token], [address], [roleid], [rolename], [departid], [departname], [createtime], [updatetime], [timeout], [invisible], [state]) VALUES (149, N'4F8208662TNJ86XTXPP82J0T602DXN84', 5, N'fangpage', N'e10adc3949ba59abbe56e057f20f883e', N'方配', N'common/avatar/u_avatar.gif', N'FP_Exam', N'024b09542adc2b47e56110c66a3d3849', N'127.0.0.1', 5, N'考生用户', 0, N'', CAST(0x0000A827012097B0 AS DateTime), CAST(0x0000A827012097B0 AS DateTime), 200, 0, 1)
INSERT [dbo].[FP_WMS_SessionInfo] ([id], [sid], [uid], [username], [password], [realname], [avatar], [platform], [token], [address], [roleid], [rolename], [departid], [departname], [createtime], [updatetime], [timeout], [invisible], [state]) VALUES (502, N'0840F0TDB86P8DNVFZ8HH0HR60V20JH6', 1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'方配', N'common/avatar/u_avatar.gif', N'FP_Exam', N'fb796722df994a9dde3702e034541bae', N'127.0.0.1', 1, N'系统管理员', 1, N'方配软件', CAST(0x0000A9FA00E089A4 AS DateTime), CAST(0x0000A9FA00E089A4 AS DateTime), 200, 0, 1)
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (1, N'6a0b99b8-8b57-403c-b6bf-70e19b73af1d', N'sites', N'exam', N'试题管理', N'question', N'admin/questionmanage.aspx')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (2, N'6a0b99b8-8b57-403c-b6bf-70e19b73af1d', N'sites', N'exam', N'正式考试', N'exam_formal', N'admin/exammanage.aspx')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (3, N'6a0b99b8-8b57-403c-b6bf-70e19b73af1d', N'sites', N'exam', N'模似考试', N'exam_test', N'admin/exammanage.aspx')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (4, N'834cc76b-ad23-4a10-9624-f1cf12e87f8c', N'app', N'course', N'在线课程', N'course', N'course_manage.aspx')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [guid], [type], [installpath], [name], [markup], [indexpage]) VALUES (5, N'6a0b99b8-8b57-403c-b6bf-70e19b73af1d', N'sites', N'exam', N'练习管理', N'test', N'admin/testmanage.aspx')
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (1, 1, 1, 1, 0, N'0,1', N'信息化考试题库', N'', 20, N'', N'', N'', N'', N'6T2N888ZT40242Z0F6T2', 2, N'', 0, N'', 314)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (2, 1, 1, 1, 1, N'0,1,2', N'计算机网络基础', N'', 20, N'', N'', N'', N'', N'0V4BX6V6PRN80LHH68Z2', 0, N'1', 1, N'', 96)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (3, 1, 1, 2, 1, N'0,1,3', N'办公自动化', N'', 20, N'', N'', N'', N'', N'6HLZ00J6826TB4F24P6X', 0, N'', 0, N'', 218)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (4, 4, 2, 1, 0, N'0,4', N'信息化正式考试', N'', 20, N'', N'', N'', N'', N'JPX4F4RFRX0XJ2FF8HF4', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (6, 2, 3, 2, 0, N'0,6', N'信息化模似考试', N'', 20, N'', N'', N'', N'', N'J64820J86HXD82LP402Z', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (7, 3, 4, 1, 0, N'0,7', N'网络基础课程', N'', 20, N'', N'', N'', N'', N'H4JH4R4828844866PVDF', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (8, 3, 4, 2, 0, N'0,8', N'办公软件课程', N'', 20, N'', N'', N'', N'', N'DJ08620P68668Z2680DL', 0, N'', 0, N'', 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [pagesize], [description], [icon], [attach_icon], [img], [attach_img], [subcounts], [types], [showtype], [otherurl], [posts]) VALUES (9, 5, 5, 1, 0, N'0,9', N'信息化练习', N'', 20, N'', N'', N'', N'', N'0R480406V2PZHLVT2D48', 0, N'', 1, N'', 0)
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (1, 0, N'计算机网络知识点', N'', 0, 0, N'', N'', 1, N'', N'4Z04BF0F2288NR66ZJV0', 2, N'1', N'0')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (2, 1, N'网络理论', N'', 0, 0, N'', N'', 2, N'', N'VD86XXH84HZR2B4X0RLD', 0, N'2', N'1')
INSERT [dbo].[FP_WMS_TypeInfo] ([id], [parentid], [name], [markup], [type], [required], [description], [otherurl], [display], [img], [attach_img], [subcounts], [sortids], [posts]) VALUES (3, 1, N'网络基础', N'', 0, 0, N'', N'', 3, N'', N'488NF8HRVHPB664RH88X', 0, N'2', N'1')
INSERT [dbo].[FP_WMS_UserInfo] ([id], [roleid], [roles], [departid], [departname], [departlist], [departs], [display], [gradeid], [types], [username], [password], [password2], [email], [isemail], [mobile], [ismobile], [realname], [cardtype], [idcard], [isreal], [usercode], [nickname], [avatar], [sex], [exp], [credits], [regip], [joindatetime], [sumlogin], [lastip], [lastvisit], [secques], [authstr], [authtime], [authflag], [vipdate], [state], [issso], [extend]) VALUES (1, 1, N'', 1, N'方配软件', N'', N'', 2, 1, N'', N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'', N'12677206@qq.com', 1, N'13481092810', 1, N'方配', N'', N'134234234234234', 1, N'', N'方配', N'common/avatar/u_avatar.gif', N'男', 0, 0, N'', CAST(0x0000A31900000000 AS DateTime), 1, N'0.0.0.0', CAST(0x0000A6A7012DAE14 AS DateTime), N'', N'', CAST(0x0000A31900000000 AS DateTime), 0, N'', 1, 0, N'{"bday":"2018-08-30","nation":"汉","shcool":"sdfdd","profession":"sdf","company":"dsfaf","politics":"方配","joblimit":"324"}')
INSERT [dbo].[FP_WMS_UserInfo] ([id], [roleid], [roles], [departid], [departname], [departlist], [departs], [display], [gradeid], [types], [username], [password], [password2], [email], [isemail], [mobile], [ismobile], [realname], [cardtype], [idcard], [isreal], [usercode], [nickname], [avatar], [sex], [exp], [credits], [regip], [joindatetime], [sumlogin], [lastip], [lastvisit], [secques], [authstr], [authtime], [authflag], [vipdate], [state], [issso], [extend]) VALUES (2, 5, N'', 2, N'方配软件研发部', N'', N'', 2, 0, N'', N'test', N'e10adc3949ba59abbe56e057f20f883e', N'', N'', 0, N'', 0, N'test', N'', N'', 0, NULL, N'', N'common/avatar/u_avatar.gif', N'男', 0, 0, N'127.0.0.1', CAST(0x0000A6AB012D96A4 AS DateTime), 0, N'127.0.0.1', CAST(0x0000A6AB012D96A4 AS DateTime), N'', N'', CAST(0x0000A6AB012D96A4 AS DateTime), 0, N'', 1, 0, N'{"bday":"","nation":"","joblimit":"","shcool":"","profession":"","company":""}')
USE [master]
GO
ALTER DATABASE [FP_Exam_V2] SET  READ_WRITE 
GO
