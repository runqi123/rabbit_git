
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人资料</title>
</head>
<style>
    body{
        background-color: rgb(252,252,252);
    }
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
    .infoUpdUl{
        width: 100%;
    }
    .infoUpdUl>li{
        width: 100%;
        height:100px;
        font-family: "微软雅黑";
        font-size: 50px;
        background-color: rgb(254,254,254);
        color: rgb(40,40,40);
        margin-top: 5px;
        border: 1px solid rgb(230,230,230);
        position: relative;
    }
    .infoUpdUl>li>span{
        position: absolute;
        top: 15px;
        left: 30px;
    }
    .infoUpdUl>li>img{
        width: 30px;
        position: absolute;
        top: 35px;
        right: 30px;
    }
    .margintop{
        margin-top: 100px;
    }
    .inps{
        font-family: "微软雅黑";
        font-size: 40px;
        width: 500px;
        height: 50px;
        border: 0px;
        outline: medium;
        position: absolute;
        top: 25px;
        left: 250px;
    }
</style>
<body>
<div class="Top_up_one">
    <a href="myInfo.html">
        <img class="jian" src="../static/img/jiantou.png"/>返回
    </a>
</div>
<ul class="infoUpdUl">
    <li style="margin-top: 50px;">
        <span>头像</span>
        <img src="../static/img/jiantou.png"/>
    </li>
    <li style="margin-top: 50px;">
        <span>昵称:</span>
        <input class="inps" value="${ruser.uname}"/>
    </li>

    <li>
        <span>性别:</span>
        <#if realname.sex==1><input class="inps" value="男"/></#if><#if realname.sex==2><input class="inps" value="女"/></#if>
    </li>
    <li>
        <span>生日:${realname.birthday}</span>
        <img src="../static/img/jiantou.png"/>
    </li>
    <li>
        <span>户口所在地:${realname.hometown}</span>
        <img src="../static/img/jiantou.png"/>
    </li>
    <li style="margin-top: 50px;">
        <span>邮箱:</span>
        <input class="inps" value="${ruser.emailUser}"/>
    </li>
</ul>
</body>
</html>
