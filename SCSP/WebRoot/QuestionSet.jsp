
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'QuesPageJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
		
	<script>
	function isHidden(flag){
	document.getElementById("more1").style.display=flag?"block":"none"
	document.getElementById("more2").style.display=flag?"block":"none"
	document.getElementById("more3").style.display=flag?"block":"none"
	}
	</script>
	
	<style type = "text/css">
	body{
	    background-image:url("img/15.png")
	   
	    
	}
	form{
		padding:0 15em;
		font-size:25px;
	}
	h1{
		font-size:40px;
	}
	table{
		font-size:25px;
	}
	#OK{
		background-color:#ff9a4a;
		width:220px;
		height:35px;
		font-size:25px;
		border-style:outset;
		border-width:3px;
	}
	#Reset{
		background-color:#ff9a4a;
		width:220px;
		height:35px;
		font-size:25px;
		border-style:outset;
		border-width:3px;
	}
	
	</style>

  </head>
  
  <body>
    <h1 align = "center">学生消费调查问卷</h1><br>
    
    <form name = "questions" method = "post" action = "recieveAnswers">
    <ol>
    <li>年级：<br>
    <input type = "radio" name = "grade" value = "a">大一
    <input type = "radio" name = "grade" value = "b">大二  
    <input type = "radio" name = "grade" value = "c">大三   
    <input type = "radio" name = "grade" value = "d ">大四  
    <input type = "radio" name = "grade" value = "e">硕士研究生</li>
    
    <li>学校所在城市：<br>
    <input type = "radio" name = "city" value = "a">一线城市
    <input type = "radio" name = "city" value = "b">二线城市
    <input type = "radio" name = "city" value = "c">三线城市
    <input type = "radio" name = "city" value = "d">其它城市</li>
    
    <li>性别：<br>
    <input type = "radio" name = "sex" value = "a">男
    <input type = "radio" name = "sex" value = "b">女</li>
    
    <li>每月消费总额：<br>
    <input type = "radio" name = "total_cost" value = "a">0-500元
    <input type = "radio" name = "total_cost" value = "b">500-1000元
    <input type = "radio" name = "total_cost" value = "c">1000-1500元
    <input type = "radio" name = "total_cost" value = "d">1500-2000元
    <input type = "radio" name = "total_cost" value = "e">2000元以上</li>
    
    <li>消费项目：<br>
    <input type = "checkbox" name = "cost_type" value = "a">饮食
    <input type = "checkbox" name = "cost_type" value = "b">出行
    <input type = "checkbox" name = "cost_type" value = "c">通讯
    <input type = "checkbox" name = "cost_type" value = "d">学习
    <input type = "checkbox" name = "cost_type" value = "e">娱乐
    <input type = "checkbox" name = "cost_type" value = "f">交际
    <input type = "checkbox" name = "cost_type" value = "g">购物
    <input type = "checkbox" name = "cost_type" value = "h">其它</li>
    
    <li>每月饮食消费:<br>
    <input type = "radio" name = "food_cost" value = "a">0-300元
    <input type = "radio" name = "food_cost" value = "b">300-600元
    <input type = "radio" name = "food_cost" value = "c">600-900元
    <input type = "radio" name = "food_cost" value = "d">900元以上</li>
    
    <li>每月购物消费:<br>
    <input type = "radio" name = "shopping_cost" value = "a">0-300元
    <input type = "radio" name = "shopping_cost" value = "b">300-600元
    <input type = "radio" name = "shopping_cost" value = "c">600-900元
    <input type = "radio" name = "shopping_cost" value = "d">900元以上</li>
    
    <li>每月娱乐消费:<br>
    <input type = "radio" name = "amusement_cost" value = "a">0-300元
    <input type = "radio" name = "amusement_cost" value = "b">300-600元
    <input type = "radio" name = "amusement_cost" value = "c">600-900元
    <input type = "radio" name = "amusement_cost" value = "d">900元以上</li>
    
    <li>每月学习消费:<br>
    <input type = "radio" name = "study_cost" value = "a">0-300元
    <input type = "radio" name = "study_cost" value = "b">300-600元
    <input type = "radio" name = "study_cost" value = "c">600-900元
    <input type = "radio" name = "study_cost" value = "d">900元以上</li>
    
    <li>每月聚会次数：<br>
    <input type = "radio" name = "together_times" value = "a">0-3次
    <input type = "radio" name = "together_times" value = "b">3-5次
    <input type = "radio" name = "together_times" value = "c">5-8次
    <input type = "radio" name = "together_times" value = "d">8-10次
    <input type = "radio" name = "together_times" value = "e">10次以上</li>
    
    <li>每次聚会人均消费：<br>
    <input type = "radio" name = "together_cost" value = "a">0-50元
    <input type = "radio" name = "together_cost" value = "b">50-100元
    <input type = "radio" name = "together_cost" value = "c">100-150元
    <input type = "radio" name = "together_cost" value = "d">150-200元
    <input type = "radio" name = "together_cost" value = "e">200元以上</li>
    
    <li>是否冲动消费:<br>
    <input type = "radio" name = "isImpulse" value = "a">是
    <input type = "radio" name = "isImpulse" value = "b">否</li>
    
    <li>有无借钱习惯:<br>
    <input type = "radio" name = "isBorrowing" value = "a">有
    <input type = "radio" name = "isBorrowing" value = "b">无</li>
    
    <li>对消费有无预算:<br>
    <input type = "radio" name = "isBudget" value = "a">有
    <input type = "radio" name = "isBudget" value = "b">无</li>
    
    <li>有无理财记账习惯:<br>
    <input type = "radio" name = "isRecord" value = "a">有
    <input type = "radio" name = "isRecord" value = "b">无</li>
    
    <li>生活费来源：<br>
    <input type = "checkbox" name = "living_supports" value = "a">家庭
    <input type = "checkbox" name = "living_supports" value = "b">兼职
    <input type = "checkbox" name = "living_supports" value = "c">奖、助学金
    <input type = "checkbox" name = "living_supports" value = "d">其它</li>
    
    <li>一般情况下，你每月的生活费：<br>
    <input type = "radio" name = "isEnough" value = "a">完全不够
    <input type = "radio" name = "isEnough" value = "b">勉强刚好
    <input type = "radio" name = "isEnough" value = "c">还有剩余</li>
    
    <li>周边有无攀比现象：<br>
    <input type = "radio" name = "isCompare" value = "a">有
    <input type = "radio" name = "isCompare" value = "b">无</li>
    
    <li>当你在消费时，考虑的因素有：<br>
    <input type = "checkbox" name = "factors" value = "a">价格
    <input type = "checkbox" name = "factors" value = "b">质量
    <input type = "checkbox" name = "factors" value = "c">品牌
    <input type = "checkbox" name = "factors" value = "d">其它</li>
    
    <li>对现在消费状况是否满意：<br>
    <input type = "radio" name = "isSatisfied" value = "a">是
    <input type = "radio" name = "isSatisfied" value = "b">否</li>
    
    <li>是否有男、女朋友：<br>
    <input type = "radio" name = "hasLover" value = "a" onclick = "isHidden(1)">是
    <input type = "radio" name = "hasLover" value = "b" onclick = "isHidden(0)">否</li>

	<table style = "display:none" id = "more1">
    <tr><td><p>(1). 恋爱消费：<br>
	<input type = "radio" name = "love_cost" value = "a">0-300元
    <input type = "radio" name = "love_cost" value = "b">300-600元
    <input type = "radio" name = "love_cost" value = "c">600-900元
    <input type = "radio" name = "love_cost" value = "d">900元以上
   	</td></tr></table>

	<table style = "display:none" id = "more2">
	<tr><td><p>(2). 恋爱消费是否AA：<br>
    <input type = "radio" name = "isAA" value = "a">是
    <input type = "radio" name = "isAA" value = "b">否
    </td></tr></table>
    
    <table style = "display:none" id = "more3">
 	<tr><td><p>(3). 恋爱是否增加了你的消费：<br>
    <input type = "radio" name = "isIncrease" value = "a">是
    <input type = "radio" name = "isIncrease" value = "b">否
    </td></tr></table>
    
    <li>你认为学生应该树立怎样的消费观？<br><br>
    <textarea name = "consumption_view" rows = 8 cols = 50></textarea></li>
    
    </ol>
    <br><br>
   	<input type = "submit" name = "OK" id = "OK" value = "确认" >
   	<input type = "reset" name = "Reset" id = "Reset" value = "重置">
    </form>
	
  </body>
</html>
