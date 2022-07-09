<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WordCloud Demo</title>
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <script type="text/javascript" src="js/echarts-wordcloud.min.js"></script>
</head>
<body>
    <div id="main" style="width: 800px; height: 600px"></div>
    <script>
        onload = function () {
            var data = {
                value: 
                	[
                	    {
                	      "name": "手机",
                	      "value": "321"
                	    },
                	    {
                	      "name": "小米",
                	      "value": "103"
                	    },
                	    {
                	      "name": "问题",
                	      "value": "99"
                	    },
                	    {
                	      "name": "京东",
                	      "value": "89"
                	    },
                	    {
                	      "name": "客服",
                	      "value": "84"
                	    },
                	    {
                	      "name": "没有",
                	      "value": "78"
                	    },
                	    {
                	      "name": "就是",
                	      "value": "63"
                	    },
                	    {
                	      "name": "垃圾",
                	      "value": "60"
                	    },
                	    {
                	      "name": "降价",
                	      "value": "51"
                	    },
                	    {
                	      "name": "差评",
                	      "value": "51"
                	    },
                	    {
                	      "name": "还是",
                	      "value": "49"
                	    },
                	    {
                	      "name": "一个",
                	      "value": "43"
                	    },
                	    {
                	      "name": "信号",
                	      "value": "43"
                	    },
                	    {
                	      "name": "屏幕",
                	      "value": "42"
                	    },
                	    {
                	      "name": "真的",
                	      "value": "41"
                	    },
                	    {
                	      "name": "出现",
                	      "value": "37"
                	    },
                	    {
                	      "name": "不了",
                	      "value": "36"
                	    },
                	    {
                	      "name": "什么",
                	      "value": "34"
                	    },
                	    {
                	      "name": "不能",
                	      "value": "34"
                	    },
                	    {
                	      "name": "一直",
                	      "value": "33"
                	    },
                	    {
                	      "name": "耳机",
                	      "value": "33"
                	    },
                	    {
                	      "name": "体验",
                	      "value": "32"
                	    },
                	    {
                	      "name": "不好",
                	      "value": "31"
                	    },
                	    {
                	      "name": "不行",
                	      "value": "30"
                	    },
                	    {
                	      "name": "评价",
                	      "value": "30"
                	    },
                	    {
                	      "name": "不是",
                	      "value": "30"
                	    },
                	    {
                	      "name": "退货",
                	      "value": "30"
                	    },
                	    {
                	      "name": "申请",
                	      "value": "29"
                	    },
                	    {
                	      "name": "这个",
                	      "value": "29"
                	    },
                	    {
                	      "name": "充电",
                	      "value": "29"
                	    },
                	    {
                	      "name": "使用",
                	      "value": "29"
                	    },
                	    {
                	      "name": "发热",
                	      "value": "29"
                	    },
                	    {
                	      "name": "不要",
                	      "value": "28"
                	    },
                	    {
                	      "name": "购买",
                	      "value": "28"
                	    },
                	    {
                	      "name": "不到",
                	      "value": "28"
                	    },
                	    {
                	      "name": "这样",
                	      "value": "28"
                	    },
                	    {
                	      "name": "视频",
                	      "value": "27"
                	    },
                	    {
                	      "name": "质量",
                	      "value": "27"
                	    },
                	    {
                	      "name": "售后",
                	      "value": "27"
                	    },
                	    {
                	      "name": "但是",
                	      "value": "27"
                	    },
                	    {
                	      "name": "怎么",
                	      "value": "25"
                	    },
                	    {
                	      "name": "几天",
                	      "value": "25"
                	    },
                	    {
                	      "name": "知道",
                	      "value": "25"
                	    },
                	    {
                	      "name": "严重",
                	      "value": "24"
                	    },
                	    {
                	      "name": "用户",
                	      "value": "24"
                	    },
                	    {
                	      "name": "保价",
                	      "value": "23"
                	    },
                	    {
                	      "name": "而且",
                	      "value": "23"
                	    },
                	    {
                	      "name": "及时",
                	      "value": "23"
                	    },
                	    {
                	      "name": "现在",
                	      "value": "23"
                	    },
                	    {
                	      "name": "一次",
                	      "value": "22"
                	    },
                	    {
                	      "name": "打电话",
                	      "value": "22"
                	    },
                	    {
                	      "name": "100",
                	      "value": "21"
                	    },
                	    {
                	      "name": "可以",
                	      "value": "21"
                	    },
                	    {
                	      "name": "经常",
                	      "value": "21"
                	    },
                	    {
                	      "name": "重启",
                	      "value": "21"
                	    },
                	    {
                	      "name": "一样",
                	      "value": "21"
                	    },
                	    {
                	      "name": "内容",
                	      "value": "21"
                	    },
                	    {
                	      "name": "自己",
                	      "value": "20"
                	    },
                	    {
                	      "name": "正常",
                	      "value": "20"
                	    },
                	    {
                	      "name": "反应",
                	      "value": "20"
                	    },
                	    {
                	      "name": "检测",
                	      "value": "20"
                	    },
                	    {
                	      "name": "电话",
                	      "value": "20"
                	    },
                	    {
                	      "name": "填写",
                	      "value": "20"
                	    },
                	    {
                	      "name": "结果",
                	      "value": "19"
                	    },
                	    {
                	      "name": "时候",
                	      "value": "18"
                	    },
                	    {
                	      "name": "非常",
                	      "value": "18"
                	    },
                	    {
                	      "name": "今天",
                	      "value": "18"
                	    },
                	    {
                	      "name": "买手机",
                	      "value": "18"
                	    },
                	    {
                	      "name": "情况",
                	      "value": "18"
                	    },
                	    {
                	      "name": "无法",
                	      "value": "18"
                	    },
                	    {
                	      "name": "第一次",
                	      "value": "18"
                	    },
                	    {
                	      "name": "赠品",
                	      "value": "17"
                	    },
                	    {
                	      "name": "这么",
                	      "value": "17"
                	    },
                	    {
                	      "name": "一个月",
                	      "value": "17"
                	    },
                	    {
                	      "name": "联系",
                	      "value": "17"
                	    },
                	    {
                	      "name": "消费者",
                	      "value": "17"
                	    },
                	    {
                	      "name": "发现",
                	      "value": "17"
                	    },
                	    {
                	      "name": "红米",
                	      "value": "17"
                	    },
                	    {
                	      "name": "刚买",
                	      "value": "16"
                	    },
                	    {
                	      "name": "开始",
                	      "value": "16"
                	    },
                	    {
                	      "name": "感觉",
                	      "value": "16"
                	    },
                	    {
                	      "name": "收到",
                	      "value": "16"
                	    },
                	    {
                	      "name": "显示",
                	      "value": "16"
                	    },
                	    {
                	      "name": "声音",
                	      "value": "16"
                	    },
                	    {
                	      "name": "大家",
                	      "value": "16"
                	    },
                	    {
                	      "name": "失望",
                	      "value": "16"
                	    },
                	    {
                	      "name": "购物",
                	      "value": "16"
                	    },
                	    {
                	      "name": "建议",
                	      "value": "15"
                	    },
                	    {
                	      "name": "然后",
                	      "value": "15"
                	    },
                	    {
                	      "name": "关机",
                	      "value": "15"
                	    },
                	    {
                	      "name": "以后",
                	      "value": "15"
                	    },
                	    {
                	      "name": "新手机",
                	      "value": "15"
                	    },
                	    {
                	      "name": "只能",
                	      "value": "15"
                	    },
                	    {
                	      "name": "不会",
                	      "value": "15"
                	    },
                	    {
                	      "name": "系统",
                	      "value": "15"
                	    },
                	    {
                	      "name": "我们",
                	      "value": "15"
                	    },
                	    {
                	      "name": "快递",
                	      "value": "15"
                	    },
                	    {
                	      "name": "hellip15",
                	      "value": "0"
                	    },
                	    {
                	      "name": "便宜",
                	      "value": "14"
                	    },
                	    {
                	      "name": "自动",
                	      "value": "14"
                	    },
                	    {
                	      "name": "一天",
                	      "value": "14"
                	    },
                	    {
                	      "name": "价格",
                	      "value": "14"
                	    },
                	    {
                	      "name": "换货",
                	      "value": "14"
                	    },
                	    {
                	      "name": "服务",
                	      "value": "14"
                	    },
                	    {
                	      "name": "东西",
                	      "value": "14"
                	    },
                	    {
                	      "name": "自营",
                	      "value": "14"
                	    },
                	    {
                	      "name": "直接",
                	      "value": "13"
                	    },
                	    {
                	      "name": "状态",
                	      "value": "13"
                	    },
                	    {
                	      "name": "黑屏",
                	      "value": "13"
                	    },
                	    {
                	      "name": "还要",
                	      "value": "13"
                	    },
                	    {
                	      "name": "处理",
                	      "value": "13"
                	    },
                	    {
                	      "name": "最后",
                	      "value": "13"
                	    },
                	    {
                	      "name": "特别",
                	      "value": "13"
                	    },
                	    {
                	      "name": "第二天",
                	      "value": "13"
                	    },
                	    {
                	      "name": "你们",
                	      "value": "13"
                	    },
                	    {
                	      "name": "闪退",
                	      "value": "12"
                	    },
                	    {
                	      "name": "开机",
                	      "value": "12"
                	    },
                	    {
                	      "name": "死机",
                	      "value": "12"
                	    },
                	    {
                	      "name": "别人",
                	      "value": "12"
                	    },
                	    {
                	      "name": "卡顿",
                	      "value": "12"
                	    },
                	    {
                	      "name": "其他",
                	      "value": "12"
                	    },
                	    {
                	      "name": "居然",
                	      "value": "12"
                	    },
                	    {
                	      "name": "因为",
                	      "value": "12"
                	    },
                	    {
                	      "name": "小时",
                	      "value": "12"
                	    },
                	    {
                	      "name": "这次",
                	      "value": "12"
                	    },
                	    {
                	      "name": "软件",
                	      "value": "12"
                	    },
                	    {
                	      "name": "真是",
                	      "value": "11"
                	    },
                	    {
                	      "name": "一般",
                	      "value": "11"
                	    },
                	    {
                	      "name": "本来",
                	      "value": "11"
                	    },
                	    {
                	      "name": "星期",
                	      "value": "11"
                	    },
                	    {
                	      "name": "电池",
                	      "value": "11"
                	    },
                	    {
                	      "name": "速度",
                	      "value": "11"
                	    },
                	    {
                	      "name": "拍照",
                	      "value": "11"
                	    },
                	    {
                	      "name": "时间",
                	      "value": "11"
                	    },
                	    {
                	      "name": "10",
                	      "value": "11"
                	    },
                	    {
                	      "name": "还有",
                	      "value": "11"
                	    },
                	    {
                	      "name": "外观",
                	      "value": "11"
                	    },
                	    {
                	      "name": "出来",
                	      "value": "10"
                	    },
                	    {
                	      "name": "一下",
                	      "value": "10"
                	    },
                	    {
                	      "name": "配送",
                	      "value": "10"
                	    },
                	    {
                	      "name": "所以",
                	      "value": "10"
                	    },
                	    {
                	      "name": "发烫",
                	      "value": "10"
                	    },
                	    {
                	      "name": "通话",
                	      "value": "10"
                	    },
                	    {
                	      "name": "游戏",
                	      "value": "10"
                	    },
                	    {
                	      "name": "老是",
                	      "value": "10"
                	    },
                	    {
                	      "name": "语音",
                	      "value": "10"
                	    },
                	    {
                	      "name": "设置",
                	      "value": "10"
                	    },
                	    {
                	      "name": "到手",
                	      "value": "10"
                	    },
                	    {
                	      "name": "这种",
                	      "value": "10"
                	    },
                	    {
                	      "name": "需要",
                	      "value": "10"
                	    },
                	    {
                	      "name": "这是",
                	      "value": "10"
                	    },
                	    {
                	      "name": "取件",
                	      "value": "10"
                	    },
                	    {
                	      "name": "两天",
                	      "value": "9"
                	    },
                	    {
                	      "name": "起来",
                	      "value": "9"
                	    },
                	    {
                	      "name": "发货",
                	      "value": "9"
                	    },
                	    {
                	      "name": "为什么",
                	      "value": "9"
                	    },
                	    {
                	      "name": "下单",
                	      "value": "9"
                	    },
                	    {
                	      "name": "充电器",
                	      "value": "9"
                	    },
                	    {
                	      "name": "30",
                	      "value": "9"
                	    },
                	    {
                	      "name": "效果",
                	      "value": "9"
                	    },
                	    {
                	      "name": "有时",
                	      "value": "9"
                	    },
                	    {
                	      "name": "拿到",
                	      "value": "9"
                	    },
                	    {
                	      "name": "维修",
                	      "value": "9"
                	    },
                	    {
                	      "name": "买回来",
                	      "value": "9"
                	    },
                	    {
                	      "name": "一点",
                	      "value": "9"
                	    },
                	    {
                	      "name": "很差",
                	      "value": "9"
                	    },
                	    {
                	      "name": "价保",
                	      "value": "9"
                	    },
                	    {
                	      "name": "差劲",
                	      "value": "9"
                	    },
                	    {
                	      "name": "差价",
                	      "value": "9"
                	    },
                	    {
                	      "name": "答复",
                	      "value": "9"
                	    },
                	    {
                	      "name": "任何",
                	      "value": "9"
                	    },
                	    {
                	      "name": "里面",
                	      "value": "9"
                	    },
                	    {
                	      "name": "优惠券",
                	      "value": "8"
                	    },
                	    {
                	      "name": "网络",
                	      "value": "8"
                	    },
                	    {
                	      "name": "晚上",
                	      "value": "8"
                	    },
                	    {
                	      "name": "满意",
                	      "value": "8"
                	    },
                	    {
                	      "name": "王者",
                	      "value": "8"
                	    },
                	    {
                	      "name": "两个",
                	      "value": "8"
                	    },
                	    {
                	      "name": "更新",
                	      "value": "8"
                	    },
                	    {
                	      "name": "打开",
                	      "value": "8"
                	    },
                	    {
                	      "name": "超级",
                	      "value": "8"
                	    },
                	    {
                	      "name": "20",
                	      "value": "8"
                	    },
                	    {
                	      "name": "回复",
                	      "value": "8"
                	    },
                	    {
                	      "name": "断网",
                	      "value": "8"
                	    },
                	    {
                	      "name": "打游戏",
                	      "value": "8"
                	    },
                	    {
                	      "name": "不管",
                	      "value": "8"
                	    },
                	    {
                	      "name": "模式",
                	      "value": "8"
                	    },
                	    {
                	      "name": "不想",
                	      "value": "8"
                	    },
                	    {
                	      "name": "简直",
                	      "value": "8"
                	    },
                	    {
                	      "name": "旗舰店",
                	      "value": "8"
                	    },
                	    {
                	      "name": "他们",
                	      "value": "8"
                	    },
                	    {
                	      "name": "不如",
                	      "value": "8"
                	    },
                	    {
                	      "name": "如果",
                	      "value": "8"
                	    },
                	    {
                	      "name": "半天",
                	      "value": "8"
                	    },
                	    {
                	      "name": "说话",
                	      "value": "8"
                	    },
                	    {
                	      "name": "华为",
                	      "value": "8"
                	    },
                	    {
                	      "name": "已经",
                	      "value": "8"
                	    },
                	    {
                	      "name": "指纹",
                	      "value": "7"
                	    },
                	    {
                	      "name": "好评",
                	      "value": "7"
                	    },
                	    {
                	      "name": "本人",
                	      "value": "7"
                	    },
                	    {
                	      "name": "遇到",
                	      "value": "7"
                	    },
                	    {
                	      "name": "听筒",
                	      "value": "7"
                	    },
                	    {
                	      "name": "之后",
                	      "value": "7"
                	    },
                	    {
                	      "name": "荣耀",
                	      "value": "7"
                	    },
                	    {
                	      "name": "慎重",
                	      "value": "7"
                	    },
                	    {
                	      "name": "要求",
                	      "value": "7"
                	    },
                	    {
                	      "name": "运行",
                	      "value": "7"
                	    },
                	    {
                	      "name": "音效",
                	      "value": "7"
                	    },
                	    {
                	      "name": "那个",
                	      "value": "7"
                	    },
                	    {
                	      "name": "应用",
                	      "value": "7"
                	    },
                	    {
                	      "name": "麻烦",
                	      "value": "7"
                	    },
                	    {
                	      "name": "产品",
                	      "value": "7"
                	    },
                	    {
                	      "name": "是不是",
                	      "value": "7"
                	    },
                	    {
                	      "name": "新机",
                	      "value": "7"
                	    },
                	    {
                	      "name": "机器人",
                	      "value": "7"
                	    },
                	    {
                	      "name": "商品",
                	      "value": "7"
                	    },
                	    {
                	      "name": "重新",
                	      "value": "7"
                	    },
                	    {
                	      "name": "不错",
                	      "value": "7"
                	    },
                	    {
                	      "name": "不用",
                	      "value": "7"
                	    },
                	    {
                	      "name": "整个",
                	      "value": "7"
                	    },
                	    {
                	      "name": "期间",
                	      "value": "7"
                	    },
                	    {
                	      "name": "后悔",
                	      "value": "7"
                	    },
                	    {
                	      "name": "11",
                	      "value": "7"
                	    },
                	    {
                	      "name": "玩游戏",
                	      "value": "7"
                	    },
                	    {
                	      "name": "外放",
                	      "value": "7"
                	    },
                	    {
                	      "name": "解决",
                	      "value": "7"
                	    },
                	    {
                	      "name": "这些",
                	      "value": "7"
                	    },
                	    {
                	      "name": "以为",
                	      "value": "7"
                	    },
                	    {
                	      "name": "太差",
                	      "value": "7"
                	    },
                	    {
                	      "name": "态度",
                	      "value": "7"
                	    },
                	    {
                	      "name": "清楚",
                	      "value": "7"
                	    },
                	    {
                	      "name": "提示",
                	      "value": "7"
                	    },
                	    {
                	      "name": "为了",
                	      "value": "7"
                	    },
                	    {
                	      "name": "用过",
                	      "value": "7"
                	    },
                	    {
                	      "name": "假货",
                	      "value": "7"
                	    },
                	    {
                	      "name": "功能",
                	      "value": "7"
                	    },
                	    {
                	      "name": "父亲",
                	      "value": "7"
                	    },
                	    {
                	      "name": "家人",
                	      "value": "7"
                	    },
                	    {
                	      "name": "解锁",
                	      "value": "6"
                	    },
                	    {
                	      "name": "手机卡",
                	      "value": "6"
                	    },
                	    {
                	      "name": "总是",
                	      "value": "6"
                	    },
                	    {
                	      "name": "之前",
                	      "value": "6"
                	    },
                	    {
                	      "name": "对方",
                	      "value": "6"
                	    },
                	    {
                	      "name": "后台",
                	      "value": "6"
                	    },
                	    {
                	      "name": "翻新",
                	      "value": "6"
                	    },
                	    {
                	      "name": "突然",
                	      "value": "6"
                	    },
                	    {
                	      "name": "好好",
                	      "value": "6"
                	    },
                	    {
                	      "name": "退换",
                	      "value": "6"
                	    },
                	    {
                	      "name": "看到",
                	      "value": "6"
                	    },
                	    {
                	      "name": "客户",
                	      "value": "6"
                	    },
                	    {
                	      "name": "退出",
                	      "value": "6"
                	    },
                	    {
                	      "name": "那么",
                	      "value": "6"
                	    },
                	    {
                	      "name": "像素",
                	      "value": "6"
                	    },
                	    {
                	      "name": "主板",
                	      "value": "6"
                	    },
                	    {
                	      "name": "来说",
                	      "value": "6"
                	    },
                	    {
                	      "name": "三天",
                	      "value": "6"
                	    },
                	    {
                	      "name": "各种",
                	      "value": "6"
                	    },
                	    {
                	      "name": "要死",
                	      "value": "6"
                	    },
                	    {
                	      "name": "很快",
                	      "value": "6"
                	    },
                	    {
                	      "name": "值得",
                	      "value": "6"
                	    },
                	    {
                	      "name": "待机",
                	      "value": "6"
                	    },
                	    {
                	      "name": "可能",
                	      "value": "6"
                	    },
                	    {
                	      "name": "老人",
                	      "value": "6"
                	    },
                	    {
                	      "name": "备用机",
                	      "value": "6"
                	    },
                	    {
                	      "name": "没想到",
                	      "value": "6"
                	    },
                	    {
                	      "name": "或者",
                	      "value": "6"
                	    },
                	    {
                	      "name": "苹果",
                	      "value": "6"
                	    },
                	    {
                	      "name": "虽然",
                	      "value": "6"
                	    },
                	    {
                	      "name": "掉电",
                	      "value": "6"
                	    },
                	    {
                	      "name": "真心",
                	      "value": "6"
                	    },
                	    {
                	      "name": "1799",
                	      "value": "6"
                	    },
                	    {
                	      "name": "极差",
                	      "value": "6"
                	    },
                	    {
                	      "name": "最差",
                	      "value": "6"
                	    },
                	    {
                	      "name": "提醒",
                	      "value": "6"
                	    },
                	    {
                	      "name": "实际",
                	      "value": "6"
                	    },
                	    {
                	      "name": "套路",
                	      "value": "6"
                	    },
                	    {
                	      "name": "无语",
                	      "value": "6"
                	    },
                	    {
                	      "name": "这款",
                	      "value": "6"
                	    },
                	    {
                	      "name": "怀疑",
                	      "value": "6"
                	    },
                	    {
                	      "name": "相信",
                	      "value": "6"
                	    },
                	    {
                	      "name": "的话",
                	      "value": "6"
                	    },
                	    {
                	      "name": "投诉",
                	      "value": "6"
                	    },
                	    {
                	      "name": "算是",
                	      "value": "6"
                	    },
                	    {
                	      "name": "很多",
                	      "value": "6"
                	    },
                	    {
                	      "name": "连接",
                	      "value": "6"
                	    },
                	    {
                	      "name": "礼物",
                	      "value": "6"
                	    },
                	    {
                	      "name": "要么",
                	      "value": "6"
                	    },
                	    {
                	      "name": "评论",
                	      "value": "6"
                	    },
                	    {
                	      "name": "包装",
                	      "value": "5"
                	    },
                	    {
                	      "name": "关闭",
                	      "value": "5"
                	    },
                	    {
                	      "name": "半个",
                	      "value": "5"
                	    },
                	    {
                	      "name": "一会",
                	      "value": "5"
                	    },
                	    {
                	      "name": "几个",
                	      "value": "5"
                	    },
                	    {
                	      "name": "界面",
                	      "value": "5"
                	    },
                	    {
                	      "name": "刚用",
                	      "value": "5"
                	    },
                	    {
                	      "name": "几次",
                	      "value": "5"
                	    },
                	    {
                	      "name": "偶尔",
                	      "value": "5"
                	    },
                	    {
                	      "name": "掉线",
                	      "value": "5"
                	    },
                	    {
                	      "name": "难道",
                	      "value": "5"
                	    },
                	    {
                	      "name": "摄像头",
                	      "value": "5"
                	    },
                	    {
                	      "name": "才能",
                	      "value": "5"
                	    },
                	    {
                	      "name": "总之",
                	      "value": "5"
                	    },
                	    {
                	      "name": "震动",
                	      "value": "5"
                	    },
                	    {
                	      "name": "多次",
                	      "value": "5"
                	    },
                	    {
                	      "name": "自带",
                	      "value": "5"
                	    },
                	    {
                	      "name": "强制",
                	      "value": "5"
                	    },
                	    {
                	      "name": "一会儿",
                	      "value": "5"
                	    },
                	    {
                	      "name": "千万",
                	      "value": "5"
                	    },
                	    {
                	      "name": "120",
                	      "value": "5"
                	    },
                	    {
                	      "name": "一定",
                	      "value": "5"
                	    },
                	    {
                	      "name": "故障",
                	      "value": "5"
                	    },
                	    {
                	      "name": "每次",
                	      "value": "5"
                	    },
                	    {
                	      "name": "烫手",
                	      "value": "5"
                	    },
                	    {
                	      "name": "理解",
                	      "value": "5"
                	    },
                	    {
                	      "name": "优点",
                	      "value": "5"
                	    },
                	    {
                	      "name": "完全",
                	      "value": "5"
                	    },
                	    {
                	      "name": "希望",
                	      "value": "5"
                	    },
                	    {
                	      "name": "预售",
                	      "value": "5"
                	    },
                	    {
                	      "name": "比较",
                	      "value": "5"
                	    },
                	    {
                	      "name": "接受",
                	      "value": "5"
                	    },
                	    {
                	      "name": "容易",
                	      "value": "5"
                	    },
                	    {
                	      "name": "良心",
                	      "value": "5"
                	    },
                	    {
                	      "name": "定金",
                	      "value": "5"
                	    },
                	    {
                	      "name": "操作",
                	      "value": "5"
                	    },
                	    {
                	      "name": "站点",
                	      "value": "5"
                	    },
                	    {
                	      "name": "再也",
                	      "value": "5"
                	    },
                	    {
                	      "name": "解决不了",
                	      "value": "5"
                	    },
                	    {
                	      "name": "我用",
                	      "value": "5"
                	    },
                	    {
                	      "name": "朋友",
                	      "value": "5"
                	    },
                	    {
                	      "name": "承诺",
                	      "value": "5"
                	    },
                	    {
                	      "name": "行为",
                	      "value": "5"
                	    },
                	    {
                	      "name": "提前",
                	      "value": "5"
                	    },
                	    {
                	      "name": "人家",
                	      "value": "5"
                	    },
                	    {
                	      "name": "电子产品",
                	      "value": "5"
                	    },
                	    {
                	      "name": "音量",
                	      "value": "5"
                	    },
                	    {
                	      "name": "买来",
                	      "value": "5"
                	    },
                	    {
                	      "name": "上网",
                	      "value": "5"
                	    },
                	    {
                	      "name": "基本",
                	      "value": "5"
                	    },
                	    {
                	      "name": "官方",
                	      "value": "5"
                	    },
                	    {
                	      "name": "两年",
                	      "value": "5"
                	    },
                	    {
                	      "name": "密码",
                	      "value": "5"
                	    },
                	    {
                	      "name": "辣鸡",
                	      "value": "5"
                	    },
                	    {
                	      "name": "有时候",
                	      "value": "5"
                	    },
                	    {
                	      "name": "以前",
                	      "value": "5"
                	    },
                	    {
                	      "name": "公司",
                	      "value": "5"
                	    },
                	    {
                	      "name": "事情",
                	      "value": "5"
                	    },
                	    {
                	      "name": "照片",
                	      "value": "5"
                	    },
                	    {
                	      "name": "快充",
                	      "value": "5"
                	    },
                	    {
                	      "name": "天玑",
                	      "value": "5"
                	    },
                	    {
                	      "name": "1100",
                	      "value": "5"
                	    },
                	    {
                	      "name": "信息",
                	      "value": "5"
                	    },
                	    {
                	      "name": "短信",
                	      "value": "5"
                	    },
                	    {
                	      "name": "由于",
                	      "value": "5"
                	    },
                	    {
                	      "name": "七天",
                	      "value": "5"
                	    },
                	    {
                	      "name": "登录",
                	      "value": "5"
                	    },
                	    {
                	      "name": "到货",
                	      "value": "4"
                	    },
                	    {
                	      "name": "不停",
                	      "value": "4"
                	    },
                	    {
                	      "name": "送给",
                	      "value": "4"
                	    },
                	    {
                	      "name": "喜欢",
                	      "value": "4"
                	    },
                	    {
                	      "name": "一段时间",
                	      "value": "4"
                	    },
                	    {
                	      "name": "掉价",
                	      "value": "4"
                	    },
                	    {
                	      "name": "时不时",
                	      "value": "4"
                	    },
                	    {
                	      "name": "意思",
                	      "value": "4"
                	    },
                	    {
                	      "name": "当天",
                	      "value": "4"
                	    },
                	    {
                	      "name": "办法",
                	      "value": "4"
                	    },
                	    {
                	      "name": "全是",
                	      "value": "4"
                	    },
                	    {
                	      "name": "智能",
                	      "value": "4"
                	    },
                	    {
                	      "name": "耐用",
                	      "value": "4"
                	    },
                	    {
                	      "name": "厉害",
                	      "value": "4"
                	    },
                	    {
                	      "name": "扫码",
                	      "value": "4"
                	    },
                	    {
                	      "name": "毛病",
                	      "value": "4"
                	    },
                	    {
                	      "name": "杂音",
                	      "value": "4"
                	    },
                	    {
                	      "name": "有点",
                	      "value": "4"
                	    },
                	    {
                	      "name": "玩个",
                	      "value": "4"
                	    },
                	    {
                	      "name": "呵呵",
                	      "value": "4"
                	    },
                	    {
                	      "name": "流量",
                	      "value": "4"
                	    },
                	    {
                	      "name": "没用",
                	      "value": "4"
                	    },
                	    {
                	      "name": "自动关机",
                	      "value": "4"
                	    },
                	    {
                	      "name": "换机",
                	      "value": "4"
                	    },
                	    {
                	      "name": "原因",
                	      "value": "4"
                	    },
                	    {
                	      "name": "听到",
                	      "value": "4"
                	    },
                	    {
                	      "name": "方面",
                	      "value": "4"
                	    },
                	    {
                	      "name": "图片",
                	      "value": "4"
                	    },
                	    {
                	      "name": "一周",
                	      "value": "4"
                	    },
                	    {
                	      "name": "解决问题",
                	      "value": "4"
                	    },
                	    {
                	      "name": "检查",
                	      "value": "4"
                	    },
                	    {
                	      "name": "回答",
                	      "value": "4"
                	    },
                	    {
                	      "name": "并且",
                	      "value": "4"
                	    },
                	    {
                	      "name": "好用",
                	      "value": "4"
                	    },
                	    {
                	      "name": "优惠",
                	      "value": "4"
                	    },
                	    {
                	      "name": "退款",
                	      "value": "4"
                	    },
                	    {
                	      "name": "共振",
                	      "value": "4"
                	    },
                	    {
                	      "name": "人员",
                	      "value": "4"
                	    },
                	    {
                	      "name": "变色",
                	      "value": "4"
                	    },
                	    {
                	      "name": "赠送",
                	      "value": "4"
                	    },
                	    {
                	      "name": "机子",
                	      "value": "4"
                	    },
                	    {
                	      "name": "唯一",
                	      "value": "4"
                	    },
                	    {
                	      "name": "同样",
                	      "value": "4"
                	    },
                	    {
                	      "name": "商家",
                	      "value": "4"
                	    },
                	    {
                	      "name": "外形",
                	      "value": "4"
                	    }
                	  ]

                ,
                //小鸟图片
                image: "data:image/png;base64,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"
            }
            var myChart = echarts.init(document.getElementById('main'));
            //温馨提示：image 选取有严格要求不可过大；，否则firefox不兼容  iconfont上面的图标可以
            var maskImage = new Image();
            maskImage.src = data.image
 
            maskImage.onload = function(){
                myChart.setOption( {
                    backgroundColor:'#fff',
                    tooltip: {
                        show: false
                    },
                    series: [{
                        type: 'wordCloud',
                        gridSize: 1,
                        sizeRange: [12, 55],
                        rotationRange: [-45, 0, 45, 90],
                        maskImage: maskImage,
                        textStyle: {
                            normal: {
                                color: function() {
                                    return 'rgb(' +
                                            Math.round(Math.random() * 255) +
                                            ', ' + Math.round(Math.random() * 255) +
                                            ', ' + Math.round(Math.random() * 255) + ')'
                                }
                            }
                        },
                        left: 'center',
                        top: 'center',
                        // width: '96%',
                        // height: '100%',
                        right: null,
                        bottom: null,
                        // width: 300,
                        // height: 200,
                        // top: 20,
                        data: data.value
                    }]
                })
            }
 
        }
    </script>
</body>
</html>