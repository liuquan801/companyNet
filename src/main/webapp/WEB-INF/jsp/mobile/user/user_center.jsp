<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
    <title>个人中心</title>
    <meta charset="utf-8">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta name="x5-orientation" content="portrait">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,minimal-ui,maximum-scale=1.0">
	<meta name="format-detection" content="telephone=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-touch-fullscreen" content="yes">
	<link rel="stylesheet" type="text/css" href="mobile/static/css/ws-reset.css">
	<link rel="stylesheet" type="text/css" href="mobile/static/font/iconfont.css">
	<link rel="stylesheet" type="text/css" href="mobile/static/css/ws-style.css">
	<script type="text/javascript" src="mobile/static/js/Adaptive.js"></script>
	<script type="text/javascript" src="mobile/static/js/jquery-3.1.1.min.js"></script>
</head>

<body>
<!--loading加载-->
<div class="loading">加载中...</div>
<div class="index-admin">
	<div class="admin-headimg">
    	<img src="assets/images/user/avatar-2.jpg" id="userPhoto" onclick="javascript:window.location.href='mobileuser/goEditPhoto'"/>
    </div>
	<div class="admin-infor">
    	<a><span id="username"></span></a>
        <p><span id="uname"></span></p>
    </div>
</div>
<div id="userinfo"></div>
<div class="index-tips">
	<div class="tips-mess">
    	<ul>
        	<li>
            	<a href="mobileindex/goIm">
            		<div class="liao-image"><i class="iconfont icon-icon3"></i><sup></sup></div>
                	<p class="liao-text">即时聊天</p>
                </a>
            </li>
            <li>
            	<a href="mobiletask/list">
            		<div class="mess-image"><i class="iconfont icon-weifenxiaopcjiemianzhuanhuan"></i><sup id="taskCount">0</sup></div>
                	<p class="mess-text">待办任务</p>
                </a>
            </li>
        </ul>
    </div>
    <div class="tips-sell">
    </div>
</div>

<!--个人中心列表内容-->
<div class="admin-cont">
    <a href="mobileuser/goEditPhoto">
        <ul>
            <li><i class="iconfont icon-icon09 admin-img-dz"></i></li>
            <li>
            	<span>修改头像</span><i class="iconfont icon-yousvg"></i>
            </li>
        </ul>
    </a>
    <a href="mobileuser/goEditUser">
        <ul>
            <li><i class="iconfont icon-dailixinxi admin-img-td"></i></li>
            <li>
            	<span>修改资料</span><i class="iconfont icon-yousvg"></i>
            </li>
        </ul>
    </a>
</div>
<div class="cont-gd">
	<a href="mobmain/logout">
    	<ul>
        	<li><i class="iconfont icon-ai238 admin-img-gd"></i></li>
            <li class="gd-bor">
            	<span>退出系统</span>
            </li>
        </ul>
    </a>
</div>  

<footer class="index-footer">
	<ul>
    	<li>
        	<a onclick="javascript:window.location.href='mobileindex/index'">
        		<i class="iconfont icon-shouye"></i>
            	<p>首页</p>
            </a>
        </li>
        <li>
        	<a onclick="javascript:window.location.href='mobileindex/fhsms'">
        		<i class="iconfont icon-xin"></i><sapn id="fhsmsCount"></sapn>
            	<p id="fhsmstss">站内信件</p>
            </a>
        </li>
        <li>
        	<a onclick="javascript:window.location.href='mobileindex/myim'">
        		<i class="iconfont icon-icon3"></i>
            	<p>我的通讯</p>
            </a>
        </li>
        <li>
        	<a class="footer-color">
        		<i class="iconfont icon-icon09"></i>
            	<p>个人中心</p>
            </a>
        </li>
    </ul>
</footer>
<div id="fhsmsobj"></div>
<script>var locat="<%=basePath%>";</script>
<script type="text/javascript" src="mobile/static/js/head.js"></script>
<script type="text/javascript" src="assets/js/jquery.tips.js"></script>
<script>

//基本信息 (在mobile/static/js/head.js中调用)
function fhonload(){
    $(".loading").fadeOut();
    $("#userPhoto").attr("src",userPhoto);	//用户头像
	$("#username").html(user);				//用户名
	$("#uname").html(NAME);					//姓名
	$("#fhsmsCount").html(fhsmsCount);		//站内信未读数量
	getTaskCount();
};


//获取待办任务数量
function getTaskCount(){
	$.ajax({
		type: "POST",
		url: 'mobiletask/getTaskCount?tm='+new Date().getTime(), //待办任务数量
    	data: encodeURI(""),
		dataType:'json',
		cache: false,
		success: function(data){
			 var taskCount = Number(data.taskCount);
			 $("#taskCount").html(Number(taskCount));				//待办任务总数
			 if(taskCount > 0){
				 $("#taskCount").tips({
						side:3,
			            msg:'待办任务',
			            bg:'#AE81FF',
			            time:30
			     });
			 }
			 
		}
	});
}

var msg = "${msg}";
//修改完个人资料消息
function savemsg(){
	if('editUsuccess' == msg){
		$("#userinfo").tips({
			side:3,
            msg:'修改成功',
            bg:'#AE81FF',
            time:5
        });
	}
}
savemsg();

</script>
</body>
</html>