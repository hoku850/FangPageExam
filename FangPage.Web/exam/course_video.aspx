<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Course.Controller.course_video" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Course.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html lang=\"zh-CN\" class=\"default-layout\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<title>" + echo(videoinfo.name) + "|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
	ViewBuilder.Append("<!--[if lte IE 8]><link id=\"ie8Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie8.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if lte IE 7]><link id=\"ie7Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie7.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]><link id=\"ie9Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/gte-ie9.css\"\"/><![endif]-->\r\n");
	ViewBuilder.Append("<script src=\"" + echo(webpath) + "plugins/fpplayer/fpplayer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/report.css\">\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]>\r\n");
	ViewBuilder.Append("  <style type=\"text/css\">\r\n");
	ViewBuilder.Append("    .gradient {\r\n");
	ViewBuilder.Append("       filter: none;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("  </style>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<div class=\"wrap\">\r\n");
	ViewBuilder.Append("<div class=\"repeat-x default-t\">\r\n");
	ViewBuilder.Append("    <div class=\"header-left layout default-lt\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"header-right layout default-rt\"></div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"default-left repeat-y default-l\"></div>\r\n");
	ViewBuilder.Append("<div class=\"default-right repeat-y default-r\"></div>\r\n");
	ViewBuilder.Append("<div class=\"header\">\r\n");
	ViewBuilder.Append("    <div class=\"navbar-hd clearfix\">\r\n");
	ViewBuilder.Append("        <div class=\"pull-left nav-bar-links\" style=\"width:600px;\">\r\n");
	ViewBuilder.Append("            <a href=\"index.aspx\" class=\"course-link course-menu-trigger\" style=\"color:#ffffff;width:600px;\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/logo_top.png\" style=\"width:32px;height:32px;\"><strong>" + echo(sitetitle) + "，版本：V" + echo(version) + "</strong></a>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"pull-right navbar-links\">\r\n");
	ViewBuilder.Append("            <a href=\"profile.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-profile i-20\"></span>" + echo(user.realname) + "</a>\r\n");
	ViewBuilder.Append("            <a href=\"userpwd.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-password i-20\"></span>修改密码</a>\r\n");

	if (isadmin)
	{
	ViewBuilder.Append("<a href=\"" + echo(adminpath) + "index.aspx\" target=\"_blank\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-admin i-20\"></span>系统后台</a>\r\n");
	}//end if
	ViewBuilder.Append("            <a href=\"logout.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-logout i-20\"></span>退出系统</a>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"navbar-bd\">\r\n");
	ViewBuilder.Append("        <div class=\"container\">\r\n");
	ViewBuilder.Append("            <div class=\"logo\" style=\"width:220px;\">\r\n");
	ViewBuilder.Append("               <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/logo.png\" height=\"32\" width=\"220\" alt=\"" + echo(siteinfo.name) + "\">\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <ul class=\"nav main-nav\">\r\n");
	ViewBuilder.Append("                <li class=\""+(pagename=="index.aspx"?echo(" "+"active"):echo(""))+"\"><a href=\"index.aspx\">首页</a></li>\r\n");
	ViewBuilder.Append("                <li class=\""+(pagename=="examreport.aspx"?echo("active"):echo(""))+"\"><a href=\"examreport.aspx\">能力评估报告</a></li>\r\n");
	ViewBuilder.Append("                <li class=\""+(pagename=="examhistory.aspx"||pagename=="incorrect.aspx"||pagename=="examnote.aspx"||pagename=="favorite.aspx"?echo("active"):echo(""))+"\"><a href=\"examhistory.aspx\">考试历史</a></li>\r\n");

	if (pagename=="course_list.aspx"||pagename=="course_view.aspx"||pagename=="course_video.aspx")
	{
	ViewBuilder.Append("<li class=\"active\"><a href=\"course_list.aspx?channelid=3\">在线课程</a></li>\r\n");
	}//end if
	else if (pagename=="examlist-2.aspx")
	{
	ViewBuilder.Append("<li class=\"active\"><a href=\"newslist.aspx?channelid=3\">模拟考试</a></li>\r\n");
	}//end if
	else if (pagename=="examlist-4.aspx")
	{
	ViewBuilder.Append("<li class=\"active\"><a href=\"newslist.aspx?channelid=3\">正式考试</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <span class=\"repeat-x header-shadow-repeat header-shadow-repeat-l\"></span>\r\n");
	ViewBuilder.Append("    <div class=\"header-shadow\"></div>\r\n");
	ViewBuilder.Append("    <span class=\"repeat-x header-shadow-repeat header-shadow-repeat-r\"></span>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("  <div class=\"container body-wrap main\">\r\n");
	ViewBuilder.Append("    <div class=\"box-wrap history-wrap\">\r\n");
	ViewBuilder.Append("      <div class=\"box\">\r\n");
	ViewBuilder.Append("        <div class=\"box-hd\">\r\n");
	ViewBuilder.Append("          <ul class=\"nav nav-underline\">\r\n");
	ViewBuilder.Append("            <li style=\"text-align:center; width:100%\"><strong>" + echo(videoinfo.name) + "</strong>\r\n");
	ViewBuilder.Append("            </li>\r\n");
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"box-bd\">\r\n");
	ViewBuilder.Append("          <div class=\"exercise-list-wrap list-wrap\">\r\n");
	ViewBuilder.Append("            <div class=\"list\">\r\n");
	ViewBuilder.Append("              <div class=\"list-bd\">\r\n");

	if (videoinfo.filetype==".flv"||videoinfo.filetype==".mp4")
	{
	ViewBuilder.Append("<div style=\"text-align:center\" class=\"player\">\r\n");
	ViewBuilder.Append("                 <div id=\"video\" style=\"width: 750px; height: 600px;text-align:center;\"></div>\r\n");
	ViewBuilder.Append("                  <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("			            var videoObject = {\r\n");
	ViewBuilder.Append("				            container: '#video', \r\n");
	ViewBuilder.Append("				            flashplayer:true,\r\n");
	ViewBuilder.Append("				            poster: '" + echo(videoinfo.img) + "',\r\n");
	ViewBuilder.Append("				            video: '" + echo(videoinfo.videofile) + "'\r\n");
	ViewBuilder.Append("			            };\r\n");
	ViewBuilder.Append("			            var player = new fpplayer(videoObject);\r\n");
	ViewBuilder.Append("		             </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<div style=\"text-align:center\" class=\"player\">\r\n");

	if (videoinfo.img!="")
	{
	ViewBuilder.Append("<div> " + echo(videoinfo.img) + "</div>\r\n");
	}//end if
	ViewBuilder.Append("                 <div>\r\n");
	ViewBuilder.Append("                  <a href=\"" + echo(videoinfo.videofile) + "\"><img src=\"" + echo(videoinfo.icon) + "\" style=\"width:32px;height:32px;\">" + echo(videoinfo.name) + "</a>  \r\n");
	ViewBuilder.Append("                 </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("              <div class=\"list-ft\"> </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("<div class=\"footer repeat-x default-b\">\r\n");
	ViewBuilder.Append("    <div class=\"footer-left layout default-lb\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"footer-right layout default-rb\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"container\">\r\n");
	ViewBuilder.Append("        <div class=\"links\">\r\n");
	ViewBuilder.Append("            <p class=\"text-center\">\r\n");
	ViewBuilder.Append("               Copyright &copy; " + echo(verdate) + " <a target=\"_blank\" href=\"" + echo(siteinfo.homepage) + "\">" + echo(siteinfo.copyright) + "</a>&nbsp;&nbsp;版权所有，版本：V" + echo(version) + "\r\n");
	ViewBuilder.Append("            </p>\r\n");

	if (siteinfo.notes!="")
	{
	ViewBuilder.Append("<p class=\"text-center\">" + echo(siteinfo.notes) + "</p>\r\n");
	}//end if
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	if(iswrite==0)
	{
	Response.Write(ViewBuilder.ToString());
	}
	else if(iswrite==1)
	{
	Hashtable hash = new Hashtable();
	hash["errcode"] = 0;
	hash["errmsg"] ="";
	hash["html"]=ViewBuilder.ToString();
	FPResponse.WriteJson(hash);
	}
}
</script>
