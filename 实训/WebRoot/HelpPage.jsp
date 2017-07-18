<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    
    
    
    
    <title>My JSP 'HelpPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
body{ background:url(img/18.jpg);
}
   </style>
  </head>

  <body>

    <h1>帮助中心</h1>
    <hr>
    <h2>常见问题</h2>
    <hr>
    <ol>
    <li>问卷涉及到一些个人信息，会保证信息安全吗？<br>
                       回答：此次问卷涉及到的信息我们是用于研究的，不会用作商业用途，也会严格保密。<br></li>
  
    <li>多选题能单选吗？<br>
                       回答：多选题可以只提供一个答案，但包括问答题，所有的题目都要提供答案，才能提交问卷。<br></li>
   
    <li>可以随便填写答案吗？<br>
                       回答：  希望您能认真对待这次问卷调查，您的数据对我们的研究很有帮助。<br></li>
    </ol>
    <h2>网站简介</h2><br>
    <embed menu="true" play="true" loop="true" type="application!/x-shockwave-flash" width="50%" height="450px" src = "http://player.video.qiyi.com/ca87425544e50436d874841af897cb3a/0/5959/v_19rr7jwu7s.swf-albumId=205994601-tvId=726423700-isPurchase=0-cnId=6
"></embed>

  </body>
</html>
