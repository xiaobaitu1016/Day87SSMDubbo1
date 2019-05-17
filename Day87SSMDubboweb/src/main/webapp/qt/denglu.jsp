<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta http-equiv="Content-Type" content="text/html; charset=UFT-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/qt/static/css/reset.css" />
<link rel="stylesheet" href="/qt/static/css/login.css" />
<script type="text/javascript" src="/qt/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/qt/static/js/login.js"></script>

<style type="text/css">
.foot {
	height: 500px;
	width: 1338px;
	float: left;
	border: 5px solid red;

}

#check {
	display: inline-block;
	width: 50px;
	height: 30px;
	border: 1px solid #000;
	text-align: center;
	line-height: 30px;
	
}
</style>

</head>
<body>
	<script type="text/jscript">
		
		window.onload = function() {
				is = document.getElementsByTagName("input");
				checkcode = window.document.getElementById("check");
				check2();
				//code=document.getElementById("checkcode");
				code = document.getElementById("checkcode");
			}
			function check2() {
				var r = Math.random();
				check.innerHTML = Math.floor(r * 9000) + 1000;
				return false;
			}
			function f() {
				var reg = /^[0-9a-zA-Z]{6,20}$/;
				var uname = is[0].value;
				if (!reg.test(uname)) {
					is[0].nextElementSibling.innerHTML = "<font color='#F00'>用户名有误</font>";
					return false;
				} else {
					is[0].nextElementSibling.innerHTML = "";
				}
				var reg = /^\w{6,}$/;
				var upwd = is[1].value;
				if (!reg.test(upwd)) {
					is[1].nextElementSibling.innerHTML = "<font color='#F00'>密码有误</font>";
					return false;
				} else {
					is[1].nextElementSibling.innerHTML = "";
				}

				if (is[2].value != check.innerHTML) {
					alert("验证码有误！");
					return false;
				}
				return true;
			}
	</script>
	<form  action="user" onsubmit="return f();" method="post">
		<div class="page">
			<div class="loginwarrp">
				<div class="logo">用户登陆</div>
				<div class="login_form">
	<li class="login-item"><span>用户名：</span> 
<input type="text" id="username" name="uname" class="login_input" placeholder="用户名">
						<span></span></li>
					<li class="login-item"><span>密 码：</span> <input
						type="password" id="password" name="password" class="login_input">
						<span></span></li>

					<div class="clearfix"></div>
					<li class="login-sub"><input type="submit" value="登录" /> <input
						type="reset" value="重置" /></li>

				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		window.onload = function() {
			var config = {
				vx : 4,
				vy : 4,
				height : 2,
				width : 2,
				count : 100,
				color : "121, 162, 185",
				stroke : "100, 200, 180",
				dist : 6000,
				e_dist : 20000,
				max_conn : 10
			}
			CanvasParticle(config);
		}
	</script>
	<script type="text/javascript" src="/qt/static/js/canvas-particle.js"></script>
</body>

</html>