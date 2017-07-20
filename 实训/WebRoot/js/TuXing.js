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
					        text: '选项分析',
					        subtext: '数据来源于调查问卷',
					        x:'center'
					    },
					    tooltip : {
					        trigger: 'item',
					        formatter: "{a} <br/>{b} : {c} ({d}%)"
					    },
					    legend: {
					        x : 'center',
					        y : 'bottom',
					        data:['第一项','第二项','第三项','第四项','第五项','第六项','第七项','第八项']
					    },
					    toolbox: {
					        show : true,
					        feature : {
					            mark : {show: true},
					            dataView : {show: true, readOnly: false},
					            magicType : {
					                show: true,
					                type: ['pie', 'funnel']
					            },
					            restore : {show: true},
					            saveAsImage : {show: true}
					        }
					    },
					    calculable : true,
					    series : [
					      
					        {
					            name:'面积模式',
					            type:'pie',
					            radius : [45, 130],
					            center : ['50%', '50%'],
					            roseType : 'area',
					            data:[
					                {value:10, name:'第一项'},
					                {value:5, name:'第二项'},
					                {value:15, name:'第三项'},
					                {value:25, name:'第四项'},
					                {value:20, name:'第五项'},
					                {value:35, name:'第六项'},
					                {value:30, name:'第七项'},
					                {value:40, name:'第八项'}
					            ]
					        }
					    ]
					};

					                // 为echarts对象加载数据 
					                myChart.setOption(op); 
					            }
					        );
	}
	if (flag == 3) {
		require([ 'echarts', 'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
		], function(ec) {
			// 基于准备好的dom，初始化echarts图表
			var myChart = ec.init(document.getElementById("main"+QuesNo));

			var op = {
					title : {
				        text: '问题答案',
				        subtext: '数据来自调查'
				    },
				    tooltip : {
				        trigger: 'axis'
				    },
				    legend: {
				        data:['选项']
				    },
				    toolbox: {
				        show : true,
				        feature : {
				            mark : {show: true},
				            dataView : {show: true, readOnly: false},
				            magicType : {show: true, type: ['line', 'bar']},
				            restore : {show: true},
				            saveAsImage : {show: true}
				        }
				    },
				    calculable : true,
				    xAxis : [
				        {
				            type : 'category',
				            data : ['第一项','第二项','第三项','第四项','第五项']
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    series : [
				        {
				            name:'选项',
				            type:'bar',
				            data:[12,23,25,33,65],
				            markPoint : {
				                data : [
				                    {type : 'max', name: '最大值'},
				                    {type : 'min', name: '最小值'}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name: '平均值'}
				                ]
				            }
				        },
				      
				            
				        
				    ]
				};
				        
				                // 为echarts对象加载数据 
				                myChart.setOption(op); 
				            }
				        );
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
					data : [ '选项答案' ]
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
					data : [ '第一项', '第二项', '第三项', '第四项', '第五项', '总数' ]
				},
				series : [

				{
					name : '选项答案',
					type : 'bar',
					data : [ 19, 23, 30, 12, 13, 97 ]
				} ]
			};
			// 为echarts对象加载数据
			myChart.setOption(op);
		});
	}

}
