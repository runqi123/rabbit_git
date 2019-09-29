<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>解忧兔-登录</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>
<style>
    *{margin: 0;padding: 0;overflow: hidden;}
    html,body{width: 100%;height: 100%;background-color: white;}
    body>div{width: 100%;height: 100%;position: relative;top: 300px;}
    .ticon{width: 80%;}
    input{
        width: 80%;
        height: 80px;
        display: block;
        margin-top: 40px;
        text-align:center;
        outline:medium;
        border-radius: 10px;
        border: 1px solid rgb(90,193,139);
        font-family: "微软雅黑";
        color: rgb(40,40,40);
        font-size: 40px;
    }
    .loginButton{
        width: 80%;
        height: 80px;
        display: block;
        border: 0px;
        border-radius:10px;
        background-color: rgb(90,193,139);
        font-family: "微软雅黑";
        color: white;
        font-size: 40px;
        margin-top: 30px;
    }
    .regirester{display:block;margin-top:30px;color: rgb(90,193,139);}
</style>
<body>
<div align="center">
    <img class="ticon" src="http://runqi123.cn/static/img/Rlogo.png"/>

    <input class="nickName" placeholder="用户名/邮箱" id="uname"/>
    <input class="password" type="password" placeholder="密码" id="pass"/>
    <button class="loginButton" onclick="Rlogin()">登录</button>

    <a href="../to/RegisterMT" class="regirester">注册一个新账号</a>
</div>

</body>
<script src="http://runqi123.cn/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    //登录方法
    function Rlogin() {
        var uname=$("#uname").val()
        var pass=$("#pass").val()
        //非空验证
        if(uname==''&&pass==''){
            alert("输入完整")
        }else{
            $.post("../users/login","uname="+uname+"&pass="+pass,function(data){
                if(data.exkey==null){
                    alert("登录失败")
                }else{
                    window.location.href="../to/MyHome"
                }
            },"json")
        }
    }

</script>
</html>