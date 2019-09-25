<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<style type="text/css">
    html,body{
        margin: 0px;
        padding: 0px;
        overflow: hidden;
    }
    .bottom{
        width: 100%;
        height: 100px;
        box-shadow: 0px 0px 5px black;
        position: fixed;
        bottom: 0px;
    }
    .bottomRadius{
        display: inline-block;
        margin: 30px 100px;
        font-family: "微软雅黑";
        font-size: 30px;
        position: relative;
        top:-80px;
    }
    .top{
        width: 100%;
        height: 400px;
        box-shadow: 0px 0px 5px black;
        font-family: "微软雅黑";
        font-size: 50px;
        padding-top: 15px;
        color: rgb(66,141,114);
        background-image: url(../static/img/201994-12062Q2342053.jpg);
        background-size: 100%;
    }
    .headImg{
        width: 300px;
        height: 300px;
        border-radius: 50%;
        border: 8px solid white;
        position: relative;
        top: -200px;
    }
    .nickName{
        font-family: "微软雅黑";
        font-size: 60px;
        position: relative;
        top: -200px;
        margin: 0px;
    }
    .center-next{
        width: 100%;
        position: relative;
        top: -200px;
    }
    .center-next-p{
        padding: 0px 50px;
        margin: 30px 0px;
        font-family: "微软雅黑";
        font-size: 40px;
    }
    .center-next-p>img{
        width: 40px;
        height: 40px;
    }
    .center-next-p>span{
        display: inline-block;
        margin: 0px 30px;
        position: relative;
        top: -8px;
    }
    .ct-info{
        margin-top: 100px;
        border-bottom: 1px solid rgb(200,200,200);
    }
    .ct-select{
        width: 100%;
        height: 600px;
    }
    .ct-select-p{
        width: 100%;
        height: 60px;
        font-size: 40px;
        font-family: "微软雅黑";
        color: black;
        margin: 0px;
        padding: 20px 30px;
        position: relative;
    }
    .jiantou{
        width: 30px;
        height: 30px;
        position: absolute;
        right: 120px;
        top: 30px;
    }
    .top-border{
        border-top: 1px solid rgb(200,200,200);
    }
    .stract{
        width: 30px;
        height: 30px;
    }
</style>
<body>
<div class="top" align="center"></div>
<div class="center" align="center">
    <img class="headImg" src="../static/img/Rlogo.png" />
    <p class="nickName">${ruser.uname}</p>
</div>
<div class="center-next">
    <div align="left" class="ct-info">
        <p class="center-next-p"><img src="../static/img/login.png"/><span>${ruser.emailUser}</span></p>
        <p class="center-next-p"><img src="../static/img/info.png"/><span><#if realname.sex==1>男</#if><#if realname.sex==2>女</#if><#if realname.sex==0>未知</#if></span></p>
        <p class="center-next-p"><img src="../static/img/city.png"/><span><#if realname.hometown??>${realname.hometown}</#if></span></p>
    </div>
    <div align="left" class="ct-select">
        <p class="ct-select-p" onclick="goLoading()">
            任务记录
            <img class="jiantou" src="../static/img/jiantou.png"/>
        </p>
        <p class="ct-select-p" id="ct-select-ju">
            我的JU币 : ${ruser.balance}个
            <img class="jiantou" src="../static/img/jiantou.png"/>
        </p>
        <#if (ruser.isrname==0)>
         <p class="ct-select-p" onclick="addzys()">
              实名认证 : 未认证
              <img class="stract" src="../static/img/error.png" />
              <img class="jiantou" src="../static/img/jiantou.png"/>
          </p>
        <#elseif (ruser.isrname==1)>
            <p class="ct-select-p" onclick="infoUp()" >
                实名认证 : 已认证
                <img class="jiantou" src="../static/img/jiantou.png"/>
            </p>
        <#else>

    </#if>

        <p class="ct-select-p">
            关于我们
            <img class="jiantou" src="../static/img/jiantou.png"/>
        </p>
        <p class="ct-select-p top-border">
            意见反馈
            <img class="jiantou" src="../static/img/jiantou.png"/>
        </p>
        <p class="ct-select-p">
            设置
            <img class="jiantou" src="../static/img/jiantou.png"/>
        </p>
    </div>
</div>
<div class="bottom" align="center">
    <a class="bottomRadius quan"><img src="../static/img/全部任务.png"/></a>
    <a class="bottomRadius fa"><img src="../static/img/center.png"/></a>
    <a class="bottomRadius my"><img src="../static/img/我的click.png"/></a>
</div>
</body>
<script type="text/javascript" src="../static/js/jquery-1.8.3.min.js" ></script>
<script type="text/javascript">
    $(function(){
        $(window).scroll(function(){
            var to=window.scrollTop;
        });
        $(".quan").click(function(){
            location.href="MyHome"
        });
        $(".fa").click(function(){

        });
        $(".my").click(function(){
            location.href="myInfo"
        });
        $("#ct-select-ju").click(function () {
               location.href="../to/toJu";
        })

    });
    function addzys() {
        location.href="../to/addzys"
    }
    function infoUp() {
        location.href="../to/infoUp"
    }
    function goLoading() {
        location.href="../to/goLoading"
    }
</script>
</html>
