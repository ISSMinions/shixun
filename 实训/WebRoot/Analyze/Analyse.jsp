<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
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
<form action="showReport" method ="post">
<input type="submit" value="生成报表">
</form>

	<%
		int option;
	%>
	<div class="main">
		<div class="logo">
			<a class="logo" title="学生消费调查系统logo" href="Login.jsp"> <img
				class="logo" alt="学生消费调查系统logo" src="images/UP.jpg">
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
				<div style="border-bottom:1px solid #eeeeff;padding:5px 0 10px;">
					<div style="margin:5px 0;line-height: 24px;">
					<% int[][]array= new int[24][8];
								if(session.getAttribute("report")!=null){
									array=(int[][])session.getAttribute("report");
								}	%>
						1. 题目<span style="color:#0066FF;">&nbsp;&nbsp;</span>[单选题]1
					</div>
					<div style="margin-top:5px;">
					
						<table class="tableResult" id="table-result"
							style="background-color:#e0e0e0;width:100%;border-collapse:collapse;"
							border="0" cellspacing="0" cellpadding="3" qi="10000">
							<tbody>
							<%
														
								double i1=100*(double)array[0][0]/(array[0][0]+array[0][1]+array[0][2]+array[0][3]+array[0][4]);
								double i2=100*(double)array[0][1]/(array[0][0]+array[0][1]+array[0][2]+array[0][3]+array[0][4]);
								double i3=100*(double)array[0][2]/(array[0][0]+array[0][1]+array[0][2]+array[0][3]+array[0][4]);
								double i4=100*(double)array[0][3]/(array[0][0]+array[0][1]+array[0][2]+array[0][3]+array[0][4]);
								double i5=100*(double)array[0][4]/(array[0][0]+array[0][1]+array[0][2]+array[0][3]+array[0][4]);
							 %>
								<tr align="center" class="text2" style="font-weight:bold;">
									<td title="点击按选项顺序排序" style="cursor: pointer;">选项</td>
									<td title="点击排序" align="center"
										style="width:50px;cursor: pointer;white-space:nowrap;">小计</td>
									<td align="left" style="width:360px;">比例</td>
								</tr>
								<tr style="background:white;">
									<td val="1">选项1</td>
									<td align="center"><%=array[0][0] %></td>
									<td percent="100"><div class="bar">
											<div class="precent" style="width: 100%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top:3px;float:left;"><%=i1 %>%</div>
										<div style="clear:both;"></div></td>
								</tr>
								<tr style="background:#f9f9f9;">
									<td val="2">选项2</td>
									<td align="center"><%=array[0][1] %></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top:3px;float:left;"><%=i2 %>%</div>
										<div style="clear:both;"></div></td>
								</tr>
								<tr style="background:white;">
									<td val="3">选项3</td>
									<td align="center"><%=array[0][2] %></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top:3px;float:left;"><%=i3 %>%</div>
										<div style="clear:both;"></div></td>
								</tr>
								<tr style="background:#f9f9f9;">
									<td val="4">选项4</td>
									<td align="center"><%=array[0][3] %></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top:3px;float:left;"><%=i4 %>%</div>
										<div style="clear:both;"></div></td>
								</tr>
								<tr style="background:white;">
									<td val="5">选项5</td>
									<td align="center"><%=array[0][4] %></td>
									<td percent="0"><div class="bar">
											<div class="precent" style="width: 0%; display: block;">
												<img width="142" height="12" alt=""
													src="/Images/wjx/viewstat/blue.png">
											</div>
										</div>
										<div style="margin-top:3px;float:left;"><%=i5 %>%</div>
										<div style="clear:both;"></div></td>
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
						style="float:right; margin-top:10px;" type="0" cat="1">
						<ul>
							<li><button id="BinTu" onclick="option(2)">饼图</button></li>
							<li><button id="TiaoXingTu" onclick="option(3)">条形图</button></li>
						</ul>
					</div>
					<div style="clear:both;"></div>
					<div id="divChart1_img"
						style="width:800px;height:300px;display:none;margin:10px auto;text-align:center;"></div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="height:400px"></div>
	<!-- ECharts单文件引入 -->
	<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
	<script type="text/javascript">
		function option(flag) {
			
			// 路径配置
			require.config({
				paths : {
					echarts : 'http://echarts.baidu.com/build/dist'
				}
			});
			// 使用
			if (flag == 2) {
				require([ 'echarts', 'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
				], function(ec) {
					// 基于准备好的dom，初始化echarts图表
					var myChart = ec.init(document.getElementById('main'));

					var op = {

						title : {
							text : '问题答案',
							subtext : '数据来自问卷调查',
							x : 'center'
						},
						tooltip : {
							trigger : 'item',
							formatter : "{a} <br/>{b} : {c} ({d}%)"
						},
						legend : {
							orient : 'vertical',
							x : 'left',
							data : [ '第一项', '第二项', '第三项', '第四项', '第五项' ]
						},
						toolbox : {
							show : true,
							feature : {
								mark : {
									show : true
								},
								dataView : {
									show : true,
									readOnly : false
								},
								magicType : {
									show : true,
									type : [ 'pie', 'funnel' ],
									op : {
										funnel : {
											x : '25%',
											width : '50%',
											funnelAlign : 'left',
											max : 1548
										}
									}
								},
								restore : {
									show : true
								},
								saveAsImage : {
									show : true
								}
							}
						},
						calculable : true,
						series : [ {
							name : '访问来源',
							type : 'pie',
							radius : '55%',
							center : [ '50%', '60%' ],
							data : [ {
								value : 335,
								name : '第一项'
							}, {
								value : 310,
								name : '第二项'
							}, {
								value : 234,
								name : '第三项'
							}, {
								value : 135,
								name : '第四项'
							}, {
								value : 154,
								name : '第五项'
							} ]
						} ]
					};

					// 为echarts对象加载数据 
					myChart.setOption(op);
				});
			}
			if (flag == 3) {
				require([ 'echarts', 'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
				], function(ec) {
					// 基于准备好的dom，初始化echarts图表
					var myChart = ec.init(document.getElementById('main'));

					var op = {
						title : {
							text : '世界人口总量',
							subtext : '数据来自网络'
						},
						tooltip : {
							trigger : 'axis',
							axisPointer : {
								type : 'shadow'
							}
						},
						legend : {
							data : [ '2012年' ]
						},
						grid : {
							left : '3%',
							right : '4%',
							bottom : '3%',
							containLabel : true
						},
						xAxis : {
							type : 'value',
							boundaryGap : [ 0, 0.01 ]
						},
						yAxis : {
							type : 'category',
							data : [ '巴西', '印尼', '美国', '印度', '中国', '世界人口(万)' ]
						},
						series : [

						{
							name : '2012年',
							type : 'bar',
							data : [ 19325, 23438, 31000, 121594, 134141,
									681807 ]
						} ]
					};

					// 为echarts对象加载数据 
					myChart.setOption(op);
				});
			}

		}
		
	</script>
</body>
</html>
