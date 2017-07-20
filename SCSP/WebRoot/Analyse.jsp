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

<title>My JSP 'Analyse.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/style2.css">



</head>

<body>
	<form action="showReport" method="post">
		<input type="submit" value="生成报表">
	</form>

	<%
		System.out.println("main" + '1');
	%>
	<%
		int option;
		int[][] array = new int[24][8];
		if (session.getAttribute("report") != null) {
			array = (int[][]) session.getAttribute("report");
		}
	%>
	<%
		double i1 = 100 * (double) array[0][0]
				/ (array[0][0] + array[0][1] + array[0][2] + array[0][3] + array[0][4]);
		double i2 = 100 * (double) array[0][1]
				/ (array[0][0] + array[0][1] + array[0][2] + array[0][3] + array[0][4]);
		double i3 = 100 * (double) array[0][2]
				/ (array[0][0] + array[0][1] + array[0][2] + array[0][3] + array[0][4]);
		double i4 = 100 * (double) array[0][3]
				/ (array[0][0] + array[0][1] + array[0][2] + array[0][3] + array[0][4]);
		double i5 = 100 * (double) array[0][4]
				/ (array[0][0] + array[0][1] + array[0][2] + array[0][3] + array[0][4]);
	%>
	<div class="main">
		<div class="logo">
			<a class="logo" title="学生消费调查系统logo" href="http://localhost:8080/实训/index.jsp"> <img
				class="logo" alt="学生消费调查系统logo" src="img/10.png">
			</a>
		</div>
		<div class="sider-bar">
			<div class="sections">
				<div class="info-check">
					<a href="PersonalInfo.jsp">个人资料</a>
				</div>
				<div class="results-check">
					<a href="QuesPageJsp.jsp">查看分析结果</a>
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
		<div class="container">
			<div class=results-detail">
				<label class="tit" for="analyse-every-question">各小题分析结果</label>
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						1. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]1
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(1,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(1,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(1,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>

				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main1" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>

				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						2. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]2
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(2,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(2,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(2,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main2" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>


				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						3. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]3
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(3,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(3,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(3,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main3" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>

				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						4. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]4
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(4,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(4,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(4,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main4" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>

				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						5. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]5
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(5,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(5,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(5,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main5" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>


				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						6. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]6
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(6,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(6,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(6,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main6" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						7. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]7
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(7,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(7,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(7,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main7" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						8. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]8
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(8,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(8,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(8,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main8" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						9. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]9
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(9,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(9,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(9,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main9" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						10. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]10
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(10,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(10,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(10,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main10" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						11. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]11
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(11,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(11,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(11,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main11" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						12. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]12
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(12,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(12,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(12,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main12" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						13. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]13
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(13,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(13,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(13,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main13" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						14. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]14
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(14,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(14,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(14,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main14" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						15. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]15
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(15,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(15,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(15,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main15" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						16. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]16
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(16,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(16,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(16,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main16" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						17. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]17
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(17,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(17,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(17,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main17" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						18. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]18
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(18,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(18,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(18,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main18" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						19. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]19
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(19,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(19,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(19,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main19" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						20. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]20
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(20,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(20,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(20,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main20" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						21. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]21
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(21,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(21,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(21,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main21" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						22. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]22
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(22,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(22,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(22,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main22" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						23. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]23
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(23,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(23,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(23,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main23" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						24. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]24
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(24,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(24,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(24,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main24" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
				
				<div style="border-bottom: 1px solid #eeeeff; padding: 5px 0 10px;">
					<div style="margin: 5px 0; line-height: 24px;">

						25. 题目<span style="color: #0066FF;">&nbsp;&nbsp;</span>[单选题]25
					</div>
					<div style="margin-top: 5px;">

						<table class="tableResult" id="table-result"
							style="background-color: #e0e0e0; width: 100%; border-collapse: collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>

								<tr align="center" class="text2" style="font-weight: bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width: 50px; cursor: pointer; white-space: nowrap;">小计</td>
									<td align="left" style="width: 360px;">比例</td>
								</tr>
								<tr style="background: white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0]%></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i1%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i2%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i3%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: #f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i4%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr style="background: white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4]%></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top: 3px; float: left;"><%=i5%>%
										</div>
										<div style="clear: both;"></div></td>
								</tr>
								<tr total="1">
									<td><b>本题有效填写人次</b></td>
									<td align="center"><b>0</b></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="divResultCss" id="divChart1"
						style="float: right; margin-top: 10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(25,2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(25,3)">柱状图</button></li>
							<li><button id="BinTu" onclick="option(25,4)">条形图</button></li>
						</ul>
					</div>
					<div style="clear: both;"></div>
					<div id="divChart1_img"
						style="width: 800px; height: 300px; display: none; margin: 10px auto; text-align: center;"></div>
				</div>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main25" style="height: 400px; display: none"></div>
				<!-- ECharts单文件引入 -->
				<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
				<script src="js/TuXing.js"></script>
			</div>
		</div>
	</div>
</body>
</html>
