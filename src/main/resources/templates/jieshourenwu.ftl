<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="http://runqi123.cn/static/js/jquery-2.1.0.min.js"></script>
    <meta charset="UTF-8">
    <title>我的任务</title>
</head>
<link rel="stylesheet" href="http://runqi123.cn/static/css/core.css" />
<style>
    .Top_up_one{
        margin: 30px;
    }
    .Top_up_one>a{
        font-family: "微软雅黑";
        font-size: 40px;
        color: rgba(100,100,100,0.8);
        text-decoration: none;
    }
    .jian{
        width: 40px;
        transform: rotate(180deg);
        position: relative;
        top: 5px;
    }
    .neirong{
        width: 100%;
    }
    .neirongONE{
        width: 95%;
        height: 200px;
        border: 1px solid lightgray;
        margin-top: 30px;
        position: relative;
    }
    .renwuName{
        font-family: "微软雅黑";
        font-size: 40px;
        color: rgb(91,191,143);
        position: absolute;
        top: -20px;
        left: 10px;
    }
    .renwuTime{
        font-family: "微软雅黑";
        font-size: 25px;
        color: gray;
        position: absolute;
        top: 90px;
        left: 220px;
    }
    .renwuType{
        font-family: "微软雅黑";
        font-size: 25px;
        color: gray;
        position: absolute;
        top: 150px;
        left: 10px;
    }
    .renwuCity{
        font-family: "微软雅黑";
        font-size: 30px;
        color: gray;
        position: absolute;
        top: 85px;
        left: 10px;
    }
    .renwuCity>img{
        width: 20px;
        margin-right: 10px;
    }
    .renwuPC{
        font-family: "微软雅黑";
        font-size: 25px;
        color: gray;
        position: absolute;
        top: 150px;
        left: 10px;
    }
    .upPosistion{
        position: absolute;
        top: 30px;
        right: 30px;
    }
    .renwuMoney{
        position: absolute;
        top: 120px;
        right: 30px;
        font-family: "微软雅黑";
        font-size: 25px;
        color: goldenrod;
    }
    .renwuMoney>span{
        color: gold;
    }
    .aioc{
        text-decoration: none;
        padding: 20px 50px;
        border: 1px solid white;
        border-radius: 5px;
        font-size: 30px;
        font-family: "微软雅黑";
        color: white;
        background: rgb(88,202,126);
        transition: background 1s ease,border 1s ease,color 1s ease;
    }
    .aioc:hover{
        cursor: pointer;
        background: rgba(0,0,0,0);
        border: 1px solid rgb(88,202,126);
        color: rgb(88,202,126);
        transition: background 1s ease,border 1s ease,color 1s ease;
    }
    .redRediu{
        display: inline-block;
        width: 30px;height: 30px;
        border-radius: 50%;
        background-color: rgb(248,194,242);
        position: relative;
        top: 5px;
    }
    .blueRediu{
        display: inline-block;
        width: 30px;height: 30px;
        border-radius: 50%;
        background-color: rgb(201,214,254);
        position: relative;
        top: 5px;
    }
    .renwuPCC{
        font-family: "微软雅黑";
        font-size: 25px;
        color: gray;
        position: absolute;
        top: 150px;
        left: 250px;
    }
    .selectmyoryour{
        width: 100%;
        height: 100px;
        background-color: rgb(88,202,126);
        border-radius: 10px;
    }
    .selectmyoryour>span{
        font-family: "微软雅黑";
        font-size:40px;
        color: white;
        display: inline-block;
        margin: 20px 130px;
        transition: color 1s ease;
    }
    .selectmyoryour>span:hover{
        color: rgb(150,252,166);
        transition: color 1s ease;
    }
    .centers{
        font-family: "微软雅黑";
        font-size:40px;
        color: white;
    }
</style>
<body>
<div class="Top_up_one">
    <a onclick="fanhui()">
        <img class="jian" src="http://runqi123.cn/static/img/jiantou.png"/>返回
    </a>
</div>
<div class="selectmyoryour" align="center">
    <span class="fabus" onclick="danji()">我发布的</span>
    <a class="centers">|</a>
    <span class="jieshous" >我接受的</span>
</div>
<div class="neirong" align="center">
    <#list jsrwList as list>
        <div class="neirongONE">

            <input id="xq" style="display: none" type="text" value="${list.taskId}"/>
            <p class="renwuName">${list.taskTitle}</p>
            <span class="renwuCity"><img src="http://runqi123.cn/static/img/dibiao.png"/><a>${list.place}</a></span>
            <span class="renwuPC"><span class="redRediu"></span> : <a> ${list.taskCreateTime?string("MM月dd日 HH:mm")}</a></span>
            <span class="renwuPCC"><span class="blueRediu" ></span> : <a style="color: red;"> <#if list.isComplete==1>已完成
            <#elseif list.ispublisher==1>雇主：已确认<#elseif list.isrecipient==1>
					接受者：已确认<#else> 未完成</#if></a></span>
            <#if list.isComplete==1><img src="http://runqi123.cn/static/img/timg111.png" style="opacity: 0.6" width="180px"/></#if>
            <p class="renwuMoney"><img style="width: 40px;" src="http://runqi123.cn/static/img/jinbi.png"/>×<span>${list.price}</span></p>
            <a class="aioc upPosistion" href="../to/queren?taskId=${list.taskId}">查看详情</a>


        </div>
    </#list>
</div>
<script type="text/javascript">
    function fanhui() {
        window.history.back(-1);
    }
    function danji(){
        window.location.href="../to/goLoading";
    }
</script>
</body>

</html>
