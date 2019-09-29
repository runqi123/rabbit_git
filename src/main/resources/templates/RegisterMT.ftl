
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册用户</title>
</head>
<style>
    *{margin: 0;padding: 0;overflow: hidden;}
    html,body{width: 100%;height: 100%;background-color: white;}
    body>div{width: 100%;height: 100%;position: relative;top: 150px;}
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
        <input class="nickName" placeholder="用户名/昵称" id="userName"/>
        <input class="nickName"  placeholder="邮箱" id="emailUser"/>
        <input class="password" type="password" placeholder="密码" id="pass"/>
        <input class="NewPassword" type="password" placeholder="确认密码" id="passInfo"/>
        <button class="loginButton" onclick="register()">注册</button>
</div>
</body>
<script type="text/javascript" src="http://runqi123.cn/static/js/jquery-1.8.3.min.js" ></script>
<script>
    //注册代码
    function register() {
        var re=/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
        var uname=$("#userName").val();
        var emailUser=$("#emailUser").val();
        var pass=$("#pass").val();
        var passInfo=$("#passInfo").val();
        if(uname==""){
            alert("请填写完整")
        }else if(emailUser==""){
            alert("请填写完整")
        }else if(re.test(emailUser)==false){
            alert("请输入正确的邮箱")
        }else if(pass==""){
            alert("请填写完整")
        }else if(pass!=passInfo){
            alert("两次输入密码不一致")
        }else{
            $.post("../users/register","uname="+uname+"&emailUser="+emailUser+"&pass="+pass,function(data){
                        if(data.exkey=="true"){
                            alert("注册成功");
                            window.location.href="../to/login"
                        }else {
                            alert("注册失败");
                        }
            }, "json")
        }
    }
</script>
</html>
