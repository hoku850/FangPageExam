<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.questionmanage" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司，官方网站：http://www.fangpage.com，站点版本：V3.9*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>考试题目管理</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + adminpath.ToString() + "css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + adminpath.ToString() + "css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("" + plugins("jquery") + "\r\n");
	ViewBuilder.Append("" + plugins("layer") + "\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + adminpath.ToString() + "js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,pagename).ToString() + "\");\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitclear\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要清空该题库的试题吗？清空之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"clear\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btnexport\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"export\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btnmove\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"move\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btnsearch\").click(function () {\r\n");
	ViewBuilder.Append("            index = $.layer({\r\n");
	ViewBuilder.Append("                type: 1,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '题目搜索',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                page: { dom: '#showsearch' },\r\n");
	ViewBuilder.Append("                area: ['400px', '200px']\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $('#btnback').click(function () {\r\n");
	ViewBuilder.Append("            layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmsearch\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteTopic(id) {\r\n");
	ViewBuilder.Append("        if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $('#chkid_' + id).attr(\"checked\", \"checked\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function EditStatus(qid, status) {\r\n");
	ViewBuilder.Append("        $.post(\"questionajax.aspx\", {\r\n");
	ViewBuilder.Append("            qid: qid,\r\n");
	ViewBuilder.Append("            status: status\r\n");
	ViewBuilder.Append("        }, function (data) {\r\n");
	ViewBuilder.Append("            if (data.error > 0) {\r\n");
	ViewBuilder.Append("                alert(data.message);\r\n");
	ViewBuilder.Append("                return;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            if (data.status == 0) {\r\n");
	ViewBuilder.Append("                $(\"#addtopic_\" + qid).html(\"<a href=\\\"javascript:EditStatus(\" + qid + \",1);\\\"><img title=\\\"点击添加随机\\\" src=\\\"" + webpath.ToString() + "sites/exam/admin/images/state0.gif\\\" /></a>\");\r\n");
	ViewBuilder.Append("                layer.msg('取消随机成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else if (data.status = 1) {\r\n");
	ViewBuilder.Append("                $(\"#addtopic_\" + qid).html(\"<a href=\\\"javascript:EditStatus(\" + qid + \",0);\\\"><img title=\\\"点击取消随机\\\" src=\\\"" + webpath.ToString() + "sites/exam/admin/images/state1.gif\\\" /></a>\");\r\n");
	ViewBuilder.Append("                layer.msg('选择随机成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }, \"json\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + adminpath.ToString() + "images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + adminpath.ToString() + "images/add.gif) 2px 6px no-repeat\"><a href=\"questionadd.aspx?sortid=" + sortid.ToString() + "\">添加</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + webpath.ToString() + "sites/exam/admin/images/paper.gif) 2px 6px no-repeat\"><a id=\"btnmove\" href=\"javascript:void()\">移动</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + webpath.ToString() + "sites/exam/admin/images/report.png) 2px 6px no-repeat\"><a id=\"btnsearch\" href=\"#\">搜索</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + webpath.ToString() + "sites/exam/admin/images/xls.gif) 2px 6px no-repeat\"><a id=\"btnexport\" href=\"#\">导出</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + webpath.ToString() + "sites/exam/admin/images/xls.gif) 2px 6px no-repeat\"><a href=\"questionimport.aspx?sortid=" + sortid.ToString() + "\">导入</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + adminpath.ToString() + "images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + pagename.ToString() + "?sortid=" + sortid.ToString() + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + webpath.ToString() + "sites/exam/admin/images/clear.gif) 2px 6px no-repeat\"><a id=\"submitclear\" href=\"#\">清空</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\">\r\n");
	ViewBuilder.Append("              <strong>" + sortinfo.name.ToString().Trim() + "：共有" + pager.total.ToString().Trim() + "道题目</strong>\r\n");
	ViewBuilder.Append("              </li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("        	  <td align=\"left\" valign=\"middle\">\r\n");

	if (type==0)
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=0\"><span style=\"color:Red\">所有题型</span></a>&nbsp;&nbsp;\r\n");

	}
	else
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=0\">所有题型</a>&nbsp;&nbsp;\r\n");

	}	//end if


	if (ischecked(1,examconfig.questiontype))
	{


	if (type==1)
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=1\"><span style=\"color:Red\">单选题</span></a>&nbsp;&nbsp;\r\n");

	}
	else
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=1\">单选题</a>&nbsp;&nbsp;\r\n");

	}	//end if


	}	//end if


	if (ischecked(2,examconfig.questiontype))
	{


	if (type==2)
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=2\"><span style=\"color:Red\">多选题</span></a>&nbsp;&nbsp;\r\n");

	}
	else
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=2\">多选题</a>&nbsp;&nbsp;\r\n");

	}	//end if


	}	//end if


	if (ischecked(3,examconfig.questiontype))
	{


	if (type==3)
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=3\"><span style=\"color:Red\">判断题</span></a>&nbsp;&nbsp;\r\n");

	}
	else
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=3\">判断题</a>&nbsp;&nbsp;\r\n");

	}	//end if


	}	//end if


	if (ischecked(4,examconfig.questiontype))
	{


	if (type==4)
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=4\"><span style=\"color:Red\">填空题</span></a>&nbsp;&nbsp;\r\n");

	}
	else
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=4\">填空题</a>&nbsp;&nbsp;\r\n");

	}	//end if


	}	//end if


	if (ischecked(5,examconfig.questiontype))
	{


	if (type==5)
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=5\"><span style=\"color:Red\">问答题</span></a>&nbsp;&nbsp;\r\n");

	}
	else
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=5\">问答题</a>&nbsp;&nbsp;\r\n");

	}	//end if


	}	//end if


	if (ischecked(6,examconfig.questiontype))
	{


	if (type==6)
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=6\"><span style=\"color:Red\">打字题</span></a>&nbsp;&nbsp;\r\n");

	}
	else
	{

	ViewBuilder.Append("              <a href=\"?sortid=" + sortid.ToString() + "&type=6\">打字题</a>&nbsp;&nbsp;\r\n");

	}	//end if


	}	//end if

	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("        	  <td width=\"120\">所在题库</td>\r\n");
	ViewBuilder.Append("              <td width=\"40\">随机题</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(ExamQuestion item in questionlist)
	{
	loop__id++;

	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkid_" + item.id.ToString().Trim() + "\" name=\"chkid\" value=\"" + item.id.ToString().Trim() + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"left\">\r\n");
	ViewBuilder.Append("              <strong>" + (pager.pagesize*(pager.pageindex-1)+loop__id).ToString().Trim() + "、\r\n");
	ViewBuilder.Append("                      " + TypeStr(item.type).ToString() + "：\r\n");
	ViewBuilder.Append("                      " + FmAnswer(item.title).ToString() + "\r\n");
	ViewBuilder.Append("              </strong>\r\n");

	if (item.type==1||item.type==2)
	{

	ViewBuilder.Append("              <div style=\"height: 2px; overflow: hidden;\"></div>\r\n");
	ViewBuilder.Append("              " + Option(item.option,item.ascount).ToString() + "\r\n");

	}	//end if

	ViewBuilder.Append("             <div style=\"height: 5px; overflow: hidden; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 1px; border-bottom-style: dashed;\"></div>\r\n");
	ViewBuilder.Append("             <div class=\"tips\">\r\n");

	if (item.type!=6)
	{

	ViewBuilder.Append("             <div style=\"color:Red\">\r\n");

	if (item.type==3)
	{


	if (item.answer=="Y")
	{

	ViewBuilder.Append("                 参考答案：正确\r\n");

	}
	else if (item.answer=="N")
	{

	ViewBuilder.Append("                 参考答案：错误\r\n");

	}	//end if


	}
	else
	{

	ViewBuilder.Append("                 参考答案：" + item.answer.ToString().Trim() + "\r\n");

	}	//end if

	ViewBuilder.Append("             </div>\r\n");

	}	//end if

	ViewBuilder.Append("             <span style=\"color:Red\">难易程度：" + DifficultyStr(item.difficulty).ToString() + "，考过次数：" + item.exams.ToString().Trim() + "，做错次数：" + item.wrongs.ToString().Trim() + "</span><br>\r\n");

	if (item.explain!="")
	{

	ViewBuilder.Append("             <span style=\"color:Red\">答案解析：" + item.explain.ToString().Trim() + "</span> \r\n");

	}
	else
	{

	ViewBuilder.Append("             <span style=\"color:Red\">答案解析：暂无解析</span>\r\n");

	}	//end if

	ViewBuilder.Append("             </div>\r\n");
	ViewBuilder.Append("             </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + item.SortInfo.name.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\" id=\"addtopic_" + item.id.ToString().Trim() + "\">\r\n");

	if (item.status==1)
	{

	ViewBuilder.Append("              <a href=\"javascript:EditStatus(" + item.id.ToString().Trim() + ",0);\"><img title=\"点击取消随机\" src=\"" + webpath.ToString() + "sites/exam/admin/images/state1.gif\"></a> \r\n");

	}
	else
	{

	ViewBuilder.Append("              <a href=\"javascript:EditStatus(" + item.id.ToString().Trim() + ",1);\"><img title=\"点击选择随机\" src=\"" + webpath.ToString() + "sites/exam/admin/images/state0.gif\"></a>\r\n");

	}	//end if

	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"questionadd.aspx?id=" + item.id.ToString().Trim() + "&backtype=" + type.ToString() + "\">编辑</a><br><br>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"javascript:DeleteTopic(" + item.id.ToString().Trim() + ")\">删除</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	}	//end loop

	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + pager.total.ToString().Trim() + "道题目，页次：" + pager.pageindex.ToString().Trim() + "/" + pager.pagecount.ToString().Trim() + "，" + pager.pagesize.ToString().Trim() + "道每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + pager.pagenum.ToString().Trim() + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("  <div id=\"showsearch\" style=\"display:none\">\r\n");
	ViewBuilder.Append("  <form id=\"frmsearch\" method=\"get\" name=\"frmsearch\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"sortid\" id=\"sortid\" value=\"" + sortid.ToString() + "\">\r\n");
	ViewBuilder.Append("  <table style=\"width:400px;height:163px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;\"> 搜索： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\"><input name=\"keyword\" type=\"text\" value=\"" + keyword.ToString() + "\" id=\"keyword\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td height=\"80\" colspan=\"2\" align=\"center\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnback\" value=\"取消\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("   </table>\r\n");
	ViewBuilder.Append("   </form>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
