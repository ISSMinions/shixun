<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>基本信息</title>

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

a {
	text-decoration: none;
	color: #000000;
}

a:hover {
	text-decoration: none;
	color: #ffa631;
}

.g-gc first, .g-gc {
	float: left;
	margin-left: 50px;
}

li {
	list-style: none;
}

.infomation {
	height: auto;
	float: left;
	font-size: 20px;
	border-style: outset;
	border-width: 3px;
	margin: auto;
	width: 70%;
	padding-left: 50px;
	padding-right: 50px;
	padding-top: 5px;
	padding-bottom: 20px;
}
iframe{
	margin-top:100px;
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
</style>
</head>

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
		<div class="infomation">
			<div class="basic-info">
				<div class="info-menus">
					<ul class="info-type">
						<li class="g-gc first"><a class="link toBasicInfo"
							href="PersonalInfo_basic.jsp">基本信息</a></li>
						<li class="g-gc"><a class="link toDetailInfo"
							href="PersonalInfo_detail.jsp">详细信息</a></li>
					</ul>
				</div>
				<div class="info-details">
					<iframe width="100%" height="600px" id="iframe" src="test.jsp"
						scrolling="no" frameborder="0"> </iframe>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
