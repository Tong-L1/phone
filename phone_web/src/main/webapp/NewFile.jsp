<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
    THIS EXAMPLE WAS DOWNLOADED FROM https://echarts.apache.org/examples/zh/editor.html?c=bar-simple
-->
<%@page import="bean.Poorkey"%>
<%@page import="java.util.List"%>
<%@page import="dao.Dao"%>
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8");
Dao dao = new Dao();
List<Poorkey> list = dao.getTables();
%>
<!DOCTYPE html>
<html style="height: 100%">
    <head>
        <meta charset="utf-8">
    </head>
    <body style="height: 100%; margin: 0">
        <div id="container" style="height: 100%"></div>

        
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.3.1/dist/echarts.min.js"></script>
        <!-- Uncomment this line if you want to dataTool extension
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.3.1/dist/extension/dataTool.min.js"></script>
        -->
        <!-- Uncomment this line if you want to use gl extension
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl@2/dist/echarts-gl.min.js"></script>
        -->
        <!-- Uncomment this line if you want to echarts-stat extension
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat@latest/dist/ecStat.min.js"></script>
        -->
        <!-- Uncomment this line if you want to use map
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.3.1/map/js/china.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.3.1/map/js/world.js"></script>
        -->
        <!-- Uncomment these two lines if you want to use bmap extension
        <script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=<Your Key Here>"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@{{version}}/dist/extension/bmap.min.js"></script>
        -->

        <script type="text/javascript">
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};

var option;



option = {
  xAxis: {
    type: 'category',
    data: [
    	<%
    	for(int i=0;i<10;i++){
    		out.print("'"+list.get(i).getKeywords()+"',");
    	}
    	
    	%>
    	
    	
    	
    ]
  },
  yAxis: {
    type: 'value'
  },
  series: [
    {
      data: [
    	  
    	  <%
      	for(int i=0;i<10;i++){
      		out.print(list.get(i).getCount()+",");
      	}
      	
      	%>
    	  
    	  
      ],
      type: 'bar'
    }
  ]
};

if (option && typeof option === 'object') {
    myChart.setOption(option);
}

        </script>
    </body>
</html>
    