<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List"%>
<%@page import="dao.Dao"%>

<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8");
Dao dao = new Dao();


int plusnum = dao.plusNum();
int noplusnum = dao.noplusNum();


%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        .chart {
            width: 100%;
            height: 400px;
            margin-bottom: 15px;
        }
    </style>

</head>
<body>
    <div id="chart1" class="chart"></div>
    <div id="chart2" class="chart"></div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.3.0/echarts.min.js"></script>
<script>
    window.onload = function() {
        let option1 = {
            // 绘图区域背景色
            backgroundColor: '#61a0a8',
            title: {
                text: ''
            },
            tooltip: {},
            
            // x轴
            xAxis: {
                data: ['plus会员', '非plus会员'],
                // x轴线条样式
                axisLine: {
                    lineStyle: {
                        color: '#d48265'
                    }
                }
            },
            // y轴
            yAxis: {},
            // 元素位置
            grid: {
                left: '2%',
                right: '2%',
                top: '10%',
                bottom: '5%',
                // 为true的时候类似与css的盒模型
                containLabel: true
            },
            // 数据
            series: [{
                name: '',
                // 展示类型
                type: 'bar',
                data: [],
                // 图形颜色
                itemStyle: {
                    normal: {
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = [
                              '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B'
                            ];
                            return colorList[params.dataIndex]
                        }
                    }
                }
            }]
        };
        let aechart1 = echarts.init(document.getElementById('chart1'));
        let option2 = {
            // 图形颜色
            color: ['#2f4554', '#749f83', '#ca8622', '#bda29a', '#6e7074'],
            // 绘图区域背景色
            backgroundColor: '#61a0a8',
            title: {
                text: ''
            },
            tooltip: {},
            
            // x轴
            xAxis: {
            	data: ['plus会员', '非plus会员'],
                // x轴线条样式
                axisLine: {
                    lineStyle: {
                        color: '#d48265'
                    }
                }
            },
            // y轴
            yAxis: {},
            // 元素位置
            grid: {
                left: '2%',
                right: '2%',
                top: '10%',
                bottom: '5%',
                // 为true的时候类似与css的盒模型
                containLabel: true
            },
            // 数据
            series: [{
                name: '',
                // 展示类型
                type: 'pie',
                data: []
            }]
        };
        let aechart2 = echarts.init(document.getElementById('chart2'));
        setInterval(getList, 2000);
        // 动态实时展示数据
        // 方式一：定时器   方式二：websocket
        // http协议缺陷：只能从客户端发起（单向）   websocket：可以长连接（双向）

        function getList() {
            let arr = [];
            for(let i = 0; i < 2; i++) {
                arr.push(parseInt(Math.random() * 101));
            }
            option1.series[0].data = arr;
            aechart1.setOption(option1);
            option2.series[0].data = arr;
            aechart2.setOption(option2);
        }
        getList();
        


        // 自适应
        window.onresize = function() {
            aechart.resize();
        }
    }
</script>
</html>
