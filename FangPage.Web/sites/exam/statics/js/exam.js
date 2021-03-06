//产生多个重复的字符,n为产生的个数
String.prototype.copyN=function(n){
	var s="";
	n=n || 1;
	for(var i=0;i<n;i++){
		s+=this;
	}
	return s;
};
//格式化数字,n为最小长度，s为前导填充字符
Number.prototype.formatLen=function(n,s){
	s=s || "0",n=n || 0;
	var l=String(this).length;
	if(n==0 || l>=n){
		return this+"";	
	}else{
		return s.copyN(n-l)+this;
	}
};
$(function () {
    $(window).scroll(function () {
        var wst = $(window).scrollTop() >= 67, hbx = $(".hbx1:eq(0)"), hbx2 = hbx.nextAll(".hbx2,.wp"), fixed = hbx.hasClass("fixed"), rnav = $(".rnav"), niceback = window.niceback || function () { };
        if (wst) {
            if (!fixed) {
                hbx.addClass("fixed");
                hbx.after("<div class='hbx1 _hbx1_'/>");
                hbx2.addClass("hbx2_f");
                rnav.size() && rnav.addClass("rnavf") && $(window).resize(),niceback(true);;
            }
        } else {
            fixed && (hbx.removeClass("fixed") && $("._hbx1_").remove() && hbx2.removeClass("hbx2_f") && rnav.size() && rnav.removeClass("rnavf") && $(window).resize(), niceback(false));
        }
    });
    $(".rnav").size() && $(window).resize(function () {
        var rnav = $(".rnav"), fixed = rnav.hasClass("rnavf");
        if (fixed) {
            rnav.css("right", ($("body").width() - 960) / 2 + "px");
        } else {
            rnav.css("right", "");
        }
    });

    var isexam = parseInt($("#isexam").val());//是否在进行考试页面
    var autotime = parseInt($("#autotime").val() * 60); //自动保存答案的时间
    var examtime = parseInt($("#examtime").val() * 60);//考试时间多少分钟
    var flag = true;
    
    if (isexam == 1) {
        var testCountdown = setInterval(function () {

            var theTime = $("#thetime"), time = theTime.data("time"), s1 = (theTime.text() || "0:0:0").split(":"), s2, h, m, s;

            time = (time || parseInt(s1[0]) * 3600 + parseInt(s1[1]) * 60 + parseInt(s1[2])) - 1;

            h = parseInt(time / 3600);
            m = parseInt((time - h * 3600) / 60);
            s = parseInt((time - h * 3600 - m * 60) % 60);
            s2 = h.formatLen(2) + ":" + m.formatLen(2) + ":" + s.formatLen(2);
            theTime.text(s2);
            theTime.data("time", time);

            $("#utime").val(examtime - time); //赋值已用了多少时间，秒为单位

            //自动保存答案,默认每隔2分钟保存一次
            if (autotime > 0 && (time % autotime == 0)) {
                var options = {
                    url: 'examsave.aspx', //提交给哪个执行
                    type: 'POST',
                    success: function () { } //显示操作提示
                };
                $('#testProcessForm').ajaxSubmit(options);
                return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
            }
            //时间到，提交试卷
            if (examtime != 0 && time < 1 && flag) {
                flag = false;
                window.clearInterval(testCountdown);
                limitTimeSubmit();
            }
        }, 1000);
    }
});

//保存答案
function extemporeSave() {
    var ele = dialog1("正在保存答案…", "save");
    var options = {
        url: 'examsave.aspx', //提交给哪个执行
        type: 'POST',
        success: function (data) {
            dialog1(false, "save");
            ele = dialog1("保存答案成功!", "save");
            setTimeout(function () {
                dialog1(false, "save");
            }, 2000);
        } //显示操作提示
    };
    $('#testProcessForm').ajaxSubmit(options);
    return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
}

//按钮提交考试试卷
function submitExam() {
    var rc_pop = new Popup({
        contentType: 4,
        isReloadOnClose: false,
        width: 420,
        isAutoSize: true
    });
    rc_pop.setContent("title", "方配在线考试系统");
    rc_pop.setContent("alertCon", "<div class='ft8 ta_c mb10'>考试提交</div><div class='mb20 bx1 bx1_p1 ft4'>\
			您还有时间继续答题，确定要交卷吗？\
		</div><div class='ta_c ft4 mb20'><a href='#' class='btnq1' onClick='submit()'>确定交卷</a><a href='' class='btnq1 ml2 goOn'>继续答题</a></div>");
    rc_pop.build();
    rc_pop.show();
    $("#confirmConTxt .goOn").click(function () {
        rc_pop.close();
        return false;
    });
    $("#dialogYES").parent().remove();
    setPosi("#dialogBox");
    return rc_pop;
}

//按钮提交练习
function submitTest() {
    var rc_pop = new Popup({
        contentType: 4,
        isReloadOnClose: false,
        width: 420,
        isAutoSize: true
    });
    rc_pop.setContent("title", "方配在线考试系统");
    rc_pop.setContent("alertCon", "<div class='ft8 ta_c mb10'>考试提交</div><div class='mb20 bx1 bx1_p1 ft4'>\
			您还有时间继续答题，确定要交卷吗？\
		</div><div class='ta_c ft4 mb20'><a href='#' class='btnq1' onClick='submittest()'>确定交卷</a><a href='#' class='btnq1 ml2 goOn'>继续答题</a></div>");
    rc_pop.build();
    rc_pop.show();
    $("#confirmConTxt .goOn").click(function () {
        rc_pop.close();
        return false;
    });
    $("#dialogYES").parent().remove();
    setPosi("#dialogBox");
    return rc_pop;
}

//提交试卷
function submit() {
    var form = $("#testProcessForm");
    form.attr("action", "exampost.aspx");
    form.submit();
}
//提交练习
function submittest() {
    var form = $("#testProcessForm");
    form.attr("action", "testpost.aspx");
    form.submit();
}

//时间到提交试卷
function limitTimeSubmit() {
    var rc_pop = new Popup({
        contentType: 4,
        isReloadOnClose: false,
        width: 420,
        isAutoSize: true
    });

    rc_pop.setContent("alertCon", "<div class='ft8 ta_c mb10'>考试时间已到</div><div class='mb20 bx1 bx1_p1 ft4'>\
					    本次考试时间已到，你可以点击 <b>确定交卷</b> 完成本次考试。<span id='subTime' class='ft2'>30</span>秒钟后，系统将自动进行本次提交。\
				    </div><div class='ta_c ft4 mb20'><a href='#' class='btnq1' onClick='submit()'>确定交卷</a></div>");
    //30秒钟后提交
    var time = 30;
    var subCountdown = setInterval(function () {
        time = time - 1;
        $("#subTime").text(time);
        if (time == 0 || time < 0) {
            window.clearInterval(subCountdown);
            submit();
        }
    }, 1000);

    rc_pop.setContent("title", "方配在线考试系统");
    rc_pop.build();
    rc_pop.show();
    $("#dialogYES").parent().remove();
    $("#dialogClose").remove();
    setPosi("#dialogBox");
    return rc_pop;
}

//提交阅卷
function ExamReadSave() {
    var ele = dialog1("正在提交阅卷…", "selfsave");
    var options = {
        url: 'examreadpost.aspx', //提交给哪个执行
        type: 'POST',
        success: function (data) {
            dialog1(false, "selfsave");
            ele = dialog1("阅卷提交成功!", "selfsave2");
            setTimeout(function () {
                dialog1(false, "selfsave2"); 
                window.location.reload();
            }, 2000);
        },
        error: function (data) {
            dialog1(false, "selfsave");
            ele = dialog1("阅卷提交失败! ", "selfsave2");
            setTimeout(function () {
                dialog1(false, "selfsave2"); 
            }, 3000);
        }
    };
    $('#testProcessForm').ajaxSubmit(options);
    return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
}

//弹出提示框
function dialog1(s,name){
	var ele = dialog1[name];
	if(!s){
		ele && ele.dialog("destroy") && ele.remove();
		dialog1[name] = null;
		return;
	}
	if (!ele) {
		ele = $("<div class='dialog1'>" + s + "</div>");
		$("body").append(ele);
		dialog1[name] = ele;
	}
	var st = $(window).scrollTop();
	ele.dialog({ draggable: false,closeText: "", disabled: true, title: false,minHeight: 20,minWidth: 100,position: ["center","center"] });
	$(window).scrollTop(st);
	return ele;
}

$(".st .tb1").live("mouseover",function(){
	$(this).addClass("tb1_hv");
}).live("mouseout",function(){
	$(this).removeClass("tb1_hv");
}).live("click",function(){
	var st = $(this).closest(".st"), txt = st.find(".ft8").text();
	$(".tb1:hidden",st).show().next("strong").remove();
	$(this).hide().after("<strong>"+txt+"</strong>");
	$(this).closest("div .mb10").children("input:hidden").val($(this).text()-1);
});

//单选点句   点句多选
$(".st .tb4").live("mouseover",function(){
	$(this).addClass("tb4_hv");
}).live("mouseout",function(){
	$(this).removeClass("tb4_hv");
}).live("click",function(){
	var st = $(this).closest(".st"), checkbox = (st.attr("checkbox")=='true');
	var p = $(this).closest("div"), data = p.attr("data"), ipt = p.children("input:hidden"),tb4 = $(this);
	if(checkbox){
		if(tb4.hasClass("tb4_cl")){
			tb4.removeClass("tb4_cl");
			return false;
		}
	}
	else{
		$(".tb4_cl",st).removeClass("tb4_cl");
		eval("data="+data);
		var md5=$.md5(tb4.text());
		$.each(data,function(i,n){
			if(n[0]==md5){
				ipt.val(n[1]);
			}
		});
	}
	tb4.addClass("tb4_cl");
	return false;
});

$(".toggle").live("click",function(){
	var ele = $(this).closest("div").prev();
	if($(this).hasClass("toggleOpen")){
		$(this).removeClass("toggleOpen").text("展开");
		ele.addClass("hd");
	}else{
		$(this).addClass("toggleOpen").text("收起");
		ele.removeClass("hd");
	}
});
$(".dAn label").live("hover",function(event){
	if (event.type =='mouseover'){
		$(this).addClass("hv");
    }else {
		$(this).removeClass("hv");
    }
}).live("click",function(){
	var ipt=$(this).parent().find("label input");
	ipt.parent().removeClass("sd");
	ipt.filter(":checked").parent().addClass("sd");
	var fkid = ipt.attr("id");
	$("#fc" + fkid).removeClass("bg3");
	$("#fc" + fkid).addClass("bg1");
});

//setPosi(".addimg_bx");
/*弹框定位的封装函数*/
function setPosi(obj){
	var iW = document.documentElement.clientWidth,
		iH = $(obj).height(),
		iT = 0,
		iTop = document.documentElement.scrollTop || document.body.scrollTop,
		iClient = document.documentElement.clientHeight;
	if(window!=top){
		iClient = $(window.top).height(),
		iTop = $(window.top).scrollTop(),
		iT = $("#"+window.name,window.top.document).offset().top;
	}
	$(obj).css({
		"top":(iClient-iH)/2+(iTop-iT)+"px",
		"left":(iW-$(obj).width())/2+"px"
	});
}
