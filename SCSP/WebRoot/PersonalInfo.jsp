<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>。
<head>
<base href="<%=basePath%>">

<title>My JSP 'PersonalInfo.jsp' starting page</title>

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
}

img.logo {
	width: 100%;
	height: 280px;
	
	margin-bottom: 50px;
}

.sider-bar {
	height: auto;
	width: 330px;
	text-indent: 80px;
	font-size: 20px;
	overflow: auto;
	float: left;
}

.infomation {
	height: auto;
	float: left;
	font-size: 20px;
	border-style: outset;
	border-width: 2px;
	margin: auto;
	width: 70%;
	padding-left: 100px;
	padding-right: 100px;
	padding-top: 15px;
	padding-bottom: 30px;
}

img.avator {
	width: 200px;
	height: 150px;
	margin-top: 40px;
}

.a.avator {
	margin-top: 40px;
	margin-bottom: 40px;
	margin-left: 40px;
	margin-right: 40px;
	float: left;
	margin-left: 40px;
}

.userName {
	height: auto;
	margin-top: 40px;
	margin-bottom: 40px;
	margin-right: 40px;
	margin-left: 40px;
}

.basic-info-details {
	width: auto;
	height: auto;
}

.detail-info-details {
	width: auto;
	height: auto;
	margin-top: 20px;
}

.items {
	width: 100px;
	float: left;
	margin-right: 50px;
	text-align: right;
	line-height: 50px;
}

label {
	height: 30px;
}

.items-answer {
	width: auto;
	test-align: left;
	font-size: 18px;
	float: left;
}

input {
	height: 30px;
	border-radius: 3px;
}

.nickname-text {
	height: 30px;
	margin-top: 10px;
	margin-bottom: 10px;
}

.sex-radio {
	height: 30px;
	margin-top: 20px;
	margin-bottom: 10px;
}

.phone-number-text {
	height: 30px;
	margin-top: 20px;
	margin-bottom: 10px;
}

.email-text {
	height: 30px;
	margin-top: 20px;
	margin-bottom: 10px;
}

.birthday-text {
	height: 30px;
	margin-top: 20px;
	margin-bottom: 10px;
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
	color: #ffa631;
}

p {
	font-size: 14px;
}

#OK {
	margin-left: 500px;
	margin-top: 50px;
	margin-bottom: 50px;
	width: 200px;
	height: 40px;
}
</style>

</head>

<body>
	<div class="main">
		<div class="logo">
			<a class="logo" title="学生消费调查系统logo" href="index.html"> <img
				class="logo" alt="学生消费调查系统logo" src="img/10.png">
			</a>
		</div>
		<div class="sider-bar">
		<body bgcolor="#ffff6f">
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
					<a href="Login.jsp">退出登录</a>
				</div>
			</div>
		</div>
		<div class="infomation">
			<div class="basic-info">
				<h3>基本信息</h3>
				<hr>
				<div class="basic-info-details">
					<div class="avatar">
						<img class="avator" alt="头像" src="img/5.jpg">
					</div>
					<div class="userName">
						<label>用户：</label>
					</div>
				</div>
			</div>
			<hr>
			<div class="detail-info">
				<h3>详细信息</h3>
				<p>您的个人信息将完全保密，请放心填写</p>
				<hr>
				<div class="detail-info-details">
					<form name="detail-info-form" id="detail-info-form"
						action="SaveInfo.jsp" method="post">
						<div class="items">
							<div class="nickname">
								<label class="required">昵称：</label>
							</div>
							<div class="sex">
								<label class="required">性别：</label>
							</div>
							<div class="phone-number">
								<label class="required">手机号码：</label>
							</div>
							<div class="email">
								<label class="required">电子邮箱：</label>
							</div>
							<div class="birthday">
								<label class="required">生日：</label>
							</div>

						</div>

						<div class="items-answer">
							<div class="nickname-text">
								<input type="text" name="nickname" id="nickname">
							</div>
							<div class="sex-radio">
								<input type="radio" name="sex" id="male" value="男">男 <input
									type="radio" name="sex" id="female" value="女">女
							</div>
							<div class="phone-number-text">
								<input type="text" name="phone-number" id="phone-number">
							</div>
							<div class="email-text">
								<input type="text" name="email" id="email">
							</div>
							<div class="birthday-text">
								<input type="text" name="birthday-year" id="birthday-year">年<input
									type="text" name="birthday-month" id="birthday-month">月
								<input type="text" name="birthday-day" id="birthday-day">日
							</div>
						</div>
					</form>
					<div class="submit">
						<input type="submit" name="OK" id="OK" value="确认修改">
					</div>
				</div>

			</div>
		</div>

	</div>
</body>
</html>
