<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>${sessionScope.sysName}</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="FH Admin QQ313596790" />

    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/layouts/dark.css">
    
    <!-- 登录页动态效果 -->
	<link rel="stylesheet" href="assets/login/css/templatemo-style.css">

</head>

<body>
	
	<!-- 登录页动态效果 -->
	<div id="particles-js"></div>
	
    <div class="auth-wrapper aut-bg-img" style="background-image: url('assets/images/bg-images/bg3.jpg');">
        <div class="auth-content">
            <div class="text-white">
                <div class="card-body text-center">
                    <div class="mb-4">
                        <i class="feather icon-unlock auth-icon"></i>
                    </div>
                    <h3 class="mb-4 text-white">交行金融服务中心管理OA</h3>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="请输入用户名" name="USERNAME" id="USERNAME">
                    </div>
                    <div class="input-group mb-4">
                        <input type="password" class="form-control" placeholder="请输入密码" name="PASSWORD" id="PASSWORD">
                    </div>
                    <div class="form-group text-left">
                        <div class="checkbox checkbox-fill d-inline">
                            <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-a1" onclick="savePaw();">
                            <label for="checkbox-fill-a1" class="cr"> 记住密码</label>
                        </div>
                    </div>
                    <button class="btn btn-primary shadow-2 mb-4" onclick="check();" id="to-login">登录</button>
                    <p class="mb-0 text-muted">没有帐户? <a class="text-white" href="admin/toregister">注册</a></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Required Js -->
    <script src="assets/js/vendor-all.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    
	<script src="assets/plugins/sweetalert/js/sweetalert.min.js"></script>
    
    <!-- 登录页动态效果 -->
    <script type="text/javascript" src="assets/login/js/particles.js"></script>
	<script type="text/javascript" src="assets/login/js/app.js"></script>
	
	<!-- 登录表单提交 -->
	<script src="assets/js/login.js"></script>
	<!-- 表单验证提示插件 -->
	<script src="assets/js/jquery.tips.js"></script>
	<!-- cookie -->
	<script src="assets/js/jquery.cookie.js"></script>
	
	<script type="text/javascript">
    	var local = "<%=basePath%>";
    </script>

    <c:if test="${'1' == msg}">
		<script type="text/javascript">
			$(tsMsg());
			function tsMsg(){
				swal("登录失败!", "此用户在其它终端已经早于您登录,您暂时无法登录!", "warning");
			}
		</script>
	</c:if>
	<c:if test="${'2' == msg}">
		<script type="text/javascript">
			$(tsMsg());
			function tsMsg(){
				swal("强制下线!", "您被系统管理员强制下线或您的帐号在别处登录!", "warning");
			}
		</script>
	</c:if>

</body>
</html>
