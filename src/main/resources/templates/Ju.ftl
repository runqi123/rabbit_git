<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>余额</title>
    <script type="text/javascript" src="../static/js/jquery-1.8.3.min.js" ></script>
</head>
<style>
    *{
        margin: 0px;
        padding: 0px;
    }
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
    .Top_up_two{
        width: 100%;
        margin-top: 200px;
    }
    .myJUfont{
        font-family: "微软雅黑";
        font-size: 60px;
        color: rgb(40,40,40);
    }
    .count{
        font-family: "微软雅黑";
        font-size: 150px;
        color: rgb(248,232,77);
    }
    .gefont{
        font-family: "微软雅黑";
        font-size: 60px;
        color: rgb(40,40,40);
    }
    .top-up{
        width: 500px;
        font-family: "微软雅黑";
        font-size: 40px;
        color: white;
        display: block;
        margin: 20px 0px;
        padding: 20px 100px;
        background-color: rgb(249,205,4);
        border-radius: 10px;
    }
    .withdrawal{
        width: 500px;
        font-family: "微软雅黑";
        font-size: 40px;
        display: block;
        color: white;
        margin: 20px 0px;
        padding: 20px 100px;
        background-color: rgb(248,232,77);
        border-radius: 10px;
    }
    .money{
        position: relative;
        top: 100px;
        width: 200px;
        font-family: "微软雅黑";
        font-size: 40px;
        color: rgb(40,40,40);
        text-align: center;
        border: 0px;
        border-bottom: 1px solid black;
        display: block;
        outline:medium;
    }
</style>
<link rel="stylesheet" href="../static/css/core.css" />
<body>
<div class="Top_up_one">
    <a href="../to/myInfo">
        <img class="jian" src="../static/img/jiantou.png"/>返回
    </a>
</div>
<div class="Top_up_two" align="center">
    <img style="width: 200px;" src="../static/img/topupmoneyimg.png" />
    <p class="myJUfont">JU币</p>
    <p>
        <span class="count" id="count">${ruser.balance}</span>
        <span class="gefont">个</span>
    </p>
    <a class="top-up">充值</a>
    <a class="withdrawal">提现</a>
</div>
<div id="XZTK" align="center">
    <div align="center">
        <span id="BZTKinfo">请输入充值金额</span>
        <input type="text" class="money" id="money"/>
        <div class="success">确定</div>
        <div class="no">取消</div>
    </div>
</div>

</body>
<script type="text/javascript">
    var topup=document.getElementsByClassName("top-up")[0];
    var success=document.getElementsByClassName("success")[0];
    var no=document.getElementsByClassName("no")[0];
    var XZTK=document.getElementById("XZTK");
    topup.onclick=function(){
        XZTK.style.display='block';
    }
    success.onclick=function(){
        XZTK.style.display='none';
    }
    no.onclick=function(){
        XZTK.style.display='none';
    }
    $(".success").click(function () {
        var money=$("#money").val();
        var count=$("#count").text();
        window.location.href="../users/chongzhi?money="+money+"&count="+count;
    })
</script>

</html>
