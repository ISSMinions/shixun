<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'PersonalPeport.jsp' starting page</title>
    
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

body{
background:url(img/18.jpg);
}
img.logo {
	width: 100%;
	height: 190px;
	margin-bottom: 60px;
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
.help-check{
	height:60px;
}

.return-check {
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

.report label.tit {
	font-size: 25px;
	font-weight: bold;
	color: #333;
	margin-top:50px;
}

.report .con {
	padding: 25px 30px;
	width:600px;
}

.report .con li {
	margin-top: 10px;
	padding: 15px 0;
	list-style:none;
}

.report .con li label .report-left {
	margin-right: 30px;
	text-align: right;
	font-size: 25px;
	font-weight: normal;
	color: #666;
	height: 32px;
	line-height: 32px;
}

.report .con li label .report-right{
	min-width: 14%;
	text-align: left;
	font-size: 25px;
	font-weight: normal;
	color: #666;
	height: 32px;
	line-height: 32px;
}


label {
	display: inline-block;
	max-width: 100%;
	margin-bottom: 5px;
	font-weight: 700;
}

.report {
	padding: 40px 45px 50px;
	color: #666;
	float:left;
	background-color:#ecffff;
	border:3px;
}

.container {
	min-height: 600px;
	height: auto !important;
	height: 600px;
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
			<div class="sections">
				<div class="help-check">
					<a href="HelpPage.jsp">帮助中心</a>
				</div>
				<div class="return-check">
					<a href="index.html">返回</a>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="report">
				<label class="tit">个人问卷分析报告</label>
				<div class="con form">
					<form name="password-change-form" method="post"><ul>
							<li><label class = "report-left">每月消费金额超过了</label>
								<label class = "report-right" id="proportion"></label>
							<li><label class = "report-left">占比最多的部分是</label>
								<label class = "report-right" id = "most-proportion"></label>
							<li><label class = "report-left">您是否具有冲动消费行为</label>
								<label class = "report-right" id = "isImpulse"></label>
						</ul>
						<input name="form[_token]" id="form__token" type="hidden"
							value = "7ef45c4ba0b9bd2219076175f79920740298cf65">
					</form>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
