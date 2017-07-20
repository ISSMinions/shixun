<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <base href="<%=basePath%>">
    
    <title>注册界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Simple Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //For-Mobile-Apps-and-Meta-Tags -->
	
	
	<link rel="stylesheet" href="css/style1.css">
	
  </head>
  
    
    
  
  
  
   <script type="text/javascript">
   var xhr;
   function checkname(){
   if(Window.ActiveXObject){//IE浏览器
              xhr=new ActiveXObject("Microsoft.XMLHTTP");
      }else{//非IE浏览器
         return new XMLHttpRequest(); 
      }
    var url="register?uname="+uname;
   var str1=document.getElementById("uname").value
    xhr.open("get",url);
     xhr.onreadystatechange=callback;
      
     xhr.send(null);}
    function callback(){
     if(xhr.readyState==4&&xhr.status==200){
     var span=document.getElementById("name1");
       var result=xhr.responseText;
       var str1=document.getElementById("uname").value
       var str2=document.getElementById("rname").value
       reg=/^[a-zA-z0-9]\w{3,15}$/;
       if(str1.length!=0){
       if(result=="false"){ span.innerHTML="<font color='red'>用户名已经存在</font>";
       
       } else if(!reg.test(str1)){
      
       span.innerHTML="<font color='red'>用户名不符合命名规则</font>";
       } else {
       span.innerHTML="<font color='green'>可以注册</font>";
       
       }       
       } else {span.innerHTML="<font color='red'>用户名不能为空</font>";}}
    }
   
   
   </script>
   <script type="text/javascript">
   
   function checkupwd(){
   var str=document.getElementById("upwd").value
   if(str.length!=0){    
        reg=/^[a-zA-z0-9]\w{3,15}$/;
    
        if(!reg.test(str)){    
          
            alert("对不起，您输入的密码格式有误！");   
        }    
        }   
   
   
   }
   
   
   
   
   
   </script>
    <script type="text/javascript">
   function checkupwd1(){
   var str1=document.getElementById("upwd").value
    var str2=document.getElementById("upwd1").value
   if(str1!==str2){    
        
    
            
            alert("对不起，您两次输入的密码不同！");    
        }    
           
   
   
   }
   
   
   
   
   
   </script>
    
    <script type="text/javascript">
   function checknumber(){
   var str=document.getElementById("number").value
    
   if(str!=="minions"){    
        
    
            
            alert("对不起，您输入的邀请码不正确!");    
        }    
           
   
   
   }
   
    </script>
    
    
    
    
    
    
    
 <script type="text/javascript">
 function Check(){
 var str1=document.getElementById("upwd").value
 var str2=document.getElementById("uname").value
  var str3=document.getElementById("number").value
    if(str1!==""&&str2!==""&&str3!==""){
    alert("注册成功!接下来将跳转至主界面");
    
    window.location.href="http://localhost:8080/实训/登陆.jsp"; 
    
    }
    else 
    alert("账号，密码或验证码不能为空!");
    
 
 
 
 
 }
 </script>   
    

        
   
  <body>
   <h1>学生消费调查系统 </h1>
    <div class="container w3">
        <h2>现在注册</h2>
		<form action="#" method="post">
			<div class="username">
				<span class="username" style="height:19px">用户:</span>
				<input type="text" name="name" class="name" id="uname" onblur="checkname()"  onfocus="if(this.value=='输入4-16位字母')this.value=''" value="输入4-16位字母" maxlength="10">
				

				<div class="clear"></div>
			</div>
			<div class="password-agileits">
				<span class="username" style="height:19px">密码:</span>
				<input type="password" name="password" class="password" id="upwd" onblur="checkupwd()" >
				
			    <div class="clear"></div>
			</div>
			
			<div class="password-agileits">
				<span class="username"style="height:19px">确认密码:</span>
				<input type="password" name="password" class="password" id="upwd1" onblur="checkupwd1()" >
				<div class="clear"></div>
			</div>
			
			<div class="password-agileits">
				<span class="username"style="height:19px">邀请码:</span>
				<input type="password" name="password" class="password" id="number" onblur="checknumber()" > 
				<div class="clear"></div>
			</div>
			
			<div class="login-w3">
					<input type="submit" class="login" value="注册" onclick="Check()" >
			</div>
			<div class="clear"></div>
		</form>
	</div>
	<div class="footer-w3l">
		<p> 学生消费调查系统</p>
	</div>
     
     
     
     
     
     
     
     
     
     
     
     </body>
</html>
     
     
     
     
     
     
     
     
     