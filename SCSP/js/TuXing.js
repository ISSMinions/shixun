function option(QuesNo,flag) {
	
	document.getElementById("main"+QuesNo).style.display="block";
	
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
			var myChart = ec.init(document.getElementById("main"+QuesNo));

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
			var myChart = ec.init(document.getElementById("main"+QuesNo));

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
					data : [ 19325, 23438, 31000, 121594, 134141, 681807 ]
				} ]
			};
			// 为echarts对象加载数据
			myChart.setOption(op);
		});
	}

	if (flag == 4) {
		require([ 'echarts', 'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
		], function(ec) {
			// 基于准备好的dom，初始化echarts图表
			var myChart = ec.init(document.getElementById("main"+QuesNo));

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
					data : [ 19325, 23438, 31000, 121594, 134141, 681807 ]
				} ]
			};
			// 为echarts对象加载数据
			myChart.setOption(op);
		});
	}

}
