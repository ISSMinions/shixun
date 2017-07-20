
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
    
    <form name = "questions" method = "post" action = "FinishQuiz.jsp">
    <ol>
    <li>年级：<br>
    <input type = "radio" name = "grade" value = "大一">大一
    <input type = "radio" name = "grade" value = "大二">大二  
    <input type = "radio" name = "grade" value = "大三">大三   
    <input type = "radio" name = "grade" value = "大四 ">大四  
    <input type = "radio" name = "grade" value = "硕士研究生">硕士研究生</li>
    
    <li>学校所在城市：<br>
    <input type = "radio" name = "city" value = "一线城市">一线城市
    <input type = "radio" name = "city" value = "二线城市">二线城市
    <input type = "radio" name = "city" value = "三线城市">三线城市
    <input type = "radio" name = "city" value = "其它城市">其它城市</li>
    
    <li>性别：<br>
    <input type = "radio" name = "sex" value = "男">男
    <input type = "radio" name = "sex" value = "女">女</li>
    
    <li>每月消费总额：<br>
    <input type = "radio" name = "total_cost" value = "0-500元">0-500元
    <input type = "radio" name = "total_cost" value = "500-1000元">500-1000元
    <input type = "radio" name = "total_cost" value = "1000-1500元">1000-1500元
    <input type = "radio" name = "total_cost" value = "1500-2000元">1500-2000元
    <input type = "radio" name = "total_cost" value = "2000元以上">2000元以上</li>
    
    <li>消费项目：<br>
    <input type = "checkbox" name = "cost_type" value = "饮食">饮食
    <input type = "checkbox" name = "cost_type" value = "出行">出行
    <input type = "checkbox" name = "cost_type" value = "通讯">通讯
    <input type = "checkbox" name = "cost_type" value = "学习">学习
    <input type = "checkbox" name = "cost_type" value = "娱乐">娱乐
    <input type = "checkbox" name = "cost_type" value = "交际">交际
    <input type = "checkbox" name = "cost_type" value = "购物">购物
    <input type = "checkbox" name = "cost_type" value = "其它">其它</li>
    
    <li>每月饮食消费:<br>
    <input type = "radio" name = "food_cost" value = "0-300元">0-300元
    <input type = "radio" name = "food_cost" value = "300-600元">300-600元
    <input type = "radio" name = "food_cost" value = "600-900元">600-900元
    <input type = "radio" name = "food_cost" value = "900元以上">900元以上</li>
    
    <li>每月购物消费:<br>
    <input type = "radio" name = "shopping_cost" value = "0-300元">0-300元
    <input type = "radio" name = "shopping_cost" value = "300-600元">300-600元
    <input type = "radio" name = "shopping_cost" value = "600-900元">600-900元
    <input type = "radio" name = "shopping_cost" value = "900元以上">900元以上</li>
    
    <li>每月娱乐消费:<br>
    <input type = "radio" name = "amusement_cost" value = "0-300元">0-300元
    <input type = "radio" name = "amusement_cost" value = "300-600元">300-600元
    <input type = "radio" name = "amusement_cost" value = "600-900元">600-900元
    <input type = "radio" name = "amusement_cost" value = "900元以上">900元以上</li>
    
    <li>每月学习消费:<br>
    <input type = "radio" name = "study_cost" value = "0-300元">0-300元
    <input type = "radio" name = "study_cost" value = "300-600元">300-600元
    <input type = "radio" name = "study_cost" value = "600-900元">600-900元
    <input type = "radio" name = "study_cost" value = "900元以上">900元以上</li>
    
    <li>每月聚会次数：<br>
    <input type = "radio" name = "together_times" value = "0-3次">0-3次
    <input type = "radio" name = "together_times" value = "3-5次">3-5次
    <input type = "radio" name = "together_times" value = "5-8次">5-8次
    <input type = "radio" name = "together_times" value = "8-10次">8-10次
    <input type = "radio" name = "together_times" value = "10次以上">10次以上</li>
    
    <li>每次聚会人均消费：<br>
    <input type = "radio" name = "together_cost" value = "0-50元">0-50元
    <input type = "radio" name = "together_cost" value = "50-100元">50-100元
    <input type = "radio" name = "together_cost" value = "100-150元">100-150元
    <input type = "radio" name = "together_cost" value = "150-200元">150-200元
    <input type = "radio" name = "together_cost" value = "200元以上">200元以上</li>
    
    <li>是否冲动消费:<br>
    <input type = "radio" name = "isImpulse" value = "是">是
    <input type = "radio" name = "isImpulse" value = "否">否</li>
    
    <li>有无借钱习惯:<br>
    <input type = "radio" name = "isBorrowing" value = "有">有
    <input type = "radio" name = "isBorrowing" value = "无">无</li>
    
    <li>对消费有无预算:<br>
    <input type = "radio" name = "isBudget" value = "有">有
    <input type = "radio" name = "isBudget" value = "无">无</li>
    
    <li>有无理财记账习惯:<br>
    <input type = "radio" name = "isRecord" value = "有">有
    <input type = "radio" name = "isRecord" value = "无">无</li>
    
    <li>生活费来源：<br>
    <input type = "checkbox" name = "living_supports" value = "家庭">家庭
    <input type = "checkbox" name = "living_supports" value = "兼职">兼职
    <input type = "checkbox" name = "living_supports" value = "奖、助学金">奖、助学金
    <input type = "checkbox" name = "living_supports" value = "其他">其它</li>
    
    <li>一般情况下，你每月的生活费：<br>
    <input type = "radio" name = "isEnough" value = "完全不够">完全不够
    <input type = "radio" name = "isEnough" value = "勉强刚好">勉强刚好
    <input type = "radio" name = "isEnough" value = "还有剩余">还有剩余</li>
    
    <li>周边有无攀比现象：<br>
    <input type = "radio" name = "isCompare" value = "有">有
    <input type = "radio" name = "isCompare" value = "无">无</li>
    
    <li>当你在消费时，考虑的因素有：<br>
    <input type = "checkbox" name = "factors" value = "价格">价格
    <input type = "checkbox" name = "factors" value = "质量">质量
    <input type = "checkbox" name = "factors" value = "品牌">品牌
    <input type = "checkbox" name = "factors" value = "其他">其它</li>
    
    <li>对现在消费状况是否满意：<br>
    <input type = "radio" name = "isSatisfied" value = "是">是
    <input type = "radio" name = "isSatisfied" value = "否">否</li>
    
    <li>是否有男、女朋友：<br>
    <input type = "radio" name = "hasLover" value = "是" onclick = "isHidden(1)">是
    <input type = "radio" name = "hasLover" value = "否" onclick = "isHidden(0)">否</li>

	<table style = "display:none" id = "more1">
    <tr><td><p>(1). 恋爱消费：<br>
	<input type = "radio" name = "love_cost" value = "0-300元">0-300元
    <input type = "radio" name = "love_cost" value = "300-600元">300-600元
    <input type = "radio" name = "love_cost" value = "600-900元">600-900元
    <input type = "radio" name = "love_cost" value = "900元以上">900元以上
   	</td></tr></table>

	<table style = "display:none" id = "more2">
	<tr><td><p>(2). 恋爱消费是否AA：<br>
    <input type = "radio" name = "isAA" value = "是">是
    <input type = "radio" name = "isAA" value = "否">否
    </td></tr></table>
    
    <table style = "display:none" id = "more3">
 	<tr><td><p>(3). 恋爱是否增加了你的消费：<br>
    <input type = "radio" name = "isIncrease" value = "是">是
    <input type = "radio" name = "isIncrease" value = "否">否
    </td></tr></table>
    
    <li>你认为学生应该树立怎样的消费观？<br><br>
    <textarea name = "consumption_view" rows = 8 cols = 50></textarea></li>
    
    </ol>
    <br><br>
   	<input type = "submit" name = "OK" id = "OK" value = "确认"  >
   	<input type = "reset" name = "Reset" id = "Reset" value = "重置">
    </form>
	
  </body>
</html>
