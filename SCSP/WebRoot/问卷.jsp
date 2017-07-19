<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注意事项</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<style>
.container {
	width: auto;
	height: auto;
	font-size: 30px;
}

.button1 {
	margin-top :800px;
	margin-left:400px;
	height:50px;
	width:150px;
	float:left;
}

.button2 {
margin-left:200px;
margin-top:800px;
	height:50px;
	width:150px;
	float:left;
}

.button3 {
margin-left:200px;
margin-top:800px;
	height:50px;
	width:150px;
	float:left;
}

a {
	text-decoration: none;
	color: #000000;
}

a:hover {
	text-decoration: none;
	color: #fe7140;
}
</style>








</head>

<body>
<body background="img/13.png">


	<div class = "container">


		<div class="button-set">
		<div class="button1">
				<a href="http://localhost:8080/实训/quiz.jsp">开始答题！</a>
			</div>
			<div class="button2">
				<a href="http://localhost:8080/实训/index.html">回到首页！</a>
			</div>
			<div class="button3">
				<a href="http://localhost:8080/实训/HelpPage.jsp">寻求帮助！</a>
			</div>

			


			
		</div>
	</div>
</body>
</html>