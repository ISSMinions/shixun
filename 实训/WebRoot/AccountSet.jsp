<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'AccountSet.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
.main {
	width: 100%;
	margin: 0 auto;
	background:url(images/wtf.jpg);
}

img.logo {
	width: 100%;
	height: 220px;
	margin-bottom: 50px;
}

.sider-bar {
	height: auto;
	margin-top:100px;
	width: 330px;
	text-indent: 80px;
	font-size: 20px;
	overflow: auto;
	float: left;
}

.info-check {
	height: 60px;
}

.results-check {
	height: 60px;
}

.help-check {
	height: 60px;
}

.account-check {
	height: 60px;
}

.quit-check {
	height: 60px;
}

a {
	text-decoration: none;
	color: #000000;
}

a:hover {
	text-decoration: none;
	color: #fe7140;
}

.password-change label.tit {
	font-size: 25px;
	font-weight: bold;
	color: #333;
	margin-top:50px;
}

.password-change .con {
	padding: 15px 30px;
}

.password-change .backError,.password-change .pwdBackError {
	padding-left: 128px;
	color: #a94442;
}

.password-change .con li {
	margin-top: 10px;
}

.password-change .con li label {
	min-width: 14%;
	margin-right: 30px;
	text-align: right;
	font-size: 20px;
	font-weight: normal;
	color: #666;
	height: 32px;
	line-height: 32px;
}

.password-change li {
	padding: 15px 0;
	list-style:none;
}
.password-change .form li input[type='password'] {
	width: 200px;
	height: 30px;
	line-height: 30px;
	border-radius: 3px;
	background: transparent;
}

.form input[type='password']:focus,.form input[type='password'].input_focus
	{
	border: 1px solid #3bc46f;
	outline: 0;
	box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.075), 0px 0px 8px
		rgba(59, 197, 112, 0.6);
	transition: all .075s;
	-moz-transition: all .075s;
	-webkit-transition: all .075s;
	-o-transition: all .075s;
}

.form input[type='password'] {
	padding: 0 5px;
	height: 34px;
	line-height: 34px;
	border: 1px solid #e5e5e5;
	outline: 0;
}

label {
	display: inline-block;
	max-width: 100%;
	margin-bottom: 5px;
	font-weight: 700;
}

.password-change .con li .pwdFrontEr {
	display: inline-block;
}

input {
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
}

.btn {
	display: inline-block;
	padding: 6px 12px;
	margin-bottom: 0px;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.4285;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.password-change .con input.btn {
	margin: 20px 10px 0 550px;
	width: 74px;
	color: #fff;
	background: #fe7140;
	border: 1px solid #fe7140;
	border-radius: 3px;
	cursor: pointer;
	transition: all .4s;
	-moz-transition: all .4s;
	-webkit-transition: all .4s;
	-o-transition: all .4s;
	display: inline-block;
	*display: inline:;
	*zoom: 1:;
	vertical-align: middle;
	-webkit-appearance: none;
}

html input[type=submit] {
	-webkit-appearance: button;
	cursor: pointer;
}

.password-change {
	padding: 20px 45px 50px;
	color: #666;
	float:left;
	background-color:#fff;
}

.container {
	min-height: 600px;
	height: auto !important;
	height: 600px;
}
</style>
</head>

<body>
<body>
	<div class="main">
		<div class="logo">
			<a class="logo" title="学生消费调查系统logo" href="Login.jsp"> <img
				class="logo" alt="学生消费调查系统logo" src="img/10.png">
			</a>
		</div>
		<div class="sider-bar">
			<div class="sections">
				<div class="info-check">
					<a href="PersonalInfo.jsp">个人资料</a>
				</div>
				<div class="results-check">
					<a href="Analyse.jsp">查看分析结果</a>
				</div>
				<div class="help-check">
					<a href="HelpPage.jsp">帮助中心</a>
				</div>
				<div class="account-check">
					<a href="AccountSet.jsp">账户设置</a>
				</div>
				<div class="quit-check">
					<a href="index.jsp">退出登录</a>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="password-change">
				<label class="tit" for="login_pwd">修改密码</label>
				<div class="con form">
					<div class="pwdBackError"></div>
					<form name="password-change-form" method="post" action="login.jsp"><ul>
							<li><label class="required" for="form-password">当前密码</label>
								<input name="form[password]" id="form-password"
								required="required" type="password">
								<div class="pwdFrontEr"></div></li>
							<li><label class="required" for="form_new_password_first">新密码</label>
								<input name="form[new_password][first]"
								id="form_new_password_first" required="required" type="password">
								<div class="pwdFrontEr"></div></li>
							<li><label class="required" for="form_new_password_second">确认密码</label>
								<input name="form[new_password][second]"
								id="form_new_password_second" required="required"
								type="password">
								<div class="pwdFrontEr"></div></li>
						</ul>
						<input name="form[_token]" id="form__token" type="hidden"
							value="7ef45c4ba0b9bd2219076175f79920740298cf65"> <input
							tabindex="0" class="btn" id="pwd_error" type="submit" value="保存">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
