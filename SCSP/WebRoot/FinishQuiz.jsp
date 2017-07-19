
 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'IntoQues.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type = "text/css">
  		body{
			background-image:url("img/3.jpg")
		}
		.main{
			width:820px;
			margin-top:auto;
			margin-right:auto;
			margin-bottom:auto;
			margin-left:auto;
		}
		.survey-wrap{
			margin:80px auto auto;
			line-height:22px;
			text-align:center;
			padding:80px;
			border:1px solid;
		}
		
		.by{
		    background:url("img/good.png") center center no-repeat;
			width:100%px;
			height:240px;
			
		}
		.survey-finish-tip{
			font-size:20px;
			margin-top:30px;
			margin-bottom:40px;
		}
		a:link{
			background-color:#fef0c3;
		}
		a:visited{
			background-color:#FFFF85;
		}
		a:hover{
			background-color:#fef0c3;
		}
		a:active{
			background-color:#fef0c3;
		}
		a{
			text-decoration:none;
		}
		.survey-check-button{
			cursor:point;
			display:block;
			font-weight:bold;
			width:8px;
			text-align:center;
			padding:3px;
			text-decoration:none;
			font-size:10px;
		}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </style>

	
	
  </head>
  
  <body>
  
  
  
  
    <div class = "main">
    	<div class = "survey-wrap">
    		 <div class = "by"></div> 
    		<br>                                                 
    		<div class = "survey-finish-tip">您已完成本次答卷，感谢您的帮助与支持！</div>
    		<div class = "survey-check-botton"><a href = "http://localhost:8080/SCSP/PersonalReport.jsp">查看当前问卷填写结果</a></div>
    	</div>
    </div>
  </body>
</html>
