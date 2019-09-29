<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的职业</title>
    <script type="text/javascript" src="http://runqi123.cn/static/js/jquery-1.8.3.min.js" ></script>
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
<link rel="stylesheet" href="http://runqi123.cn/static/css/core.css" />
<body>
<div class="Top_up_one">
    <a href="../to/myInfo">
        <img class="jian" src="http://runqi123.cn/static/img/jiantou.png"/>返回
    </a>
</div>
<div class="Top_up_two" align="center">
    <img style="width: 200px;" src="http://runqi123.cn/static/img/20170727144118_ciCs3.thumb.224_0.gif" />
    <p class="myJUfont">您已完成职业认证，您的职业是</p>
    <a class="top-up" >
    <#if realname.occupationId=1>IT
    <#elseif realname.occupationId==2>医生
    <#elseif realname.occupationId==3>设计
    <#elseif realname.occupationId==4>教育
    <#elseif realname.occupationId==5>司机
    <#elseif realname.occupationId==6>演绎
    <#elseif realname.occupationId==7>律师
    <#elseif realname.occupationId==8>编辑
    <#elseif realname.occupationId==9>秘书
    <#elseif realname.occupationId==10>销售
    <#elseif realname.occupationId==0>未认证
    <#else>其他
    </#if>
    </a>
</div>


</body>
<script>
    function getAll() {
        window.location.href="../to/getOccupation"
    }
</script>

</html>
