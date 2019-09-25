<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>实名认证</title>
</head>
<style>
    .AUTH_one{
        margin: 30px;
    }
    .AUTH_one>a{
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
    .AUTH_FORM{
        width: 600px;
    }
    .name{
        font-family: "微软雅黑";
        font-size: 30px;
        color: rgb(40,40,40);
    }
    .name>input{
        font-family: "微软雅黑";
        font-size: 30px;
        color: rgb(40,40,40);
        border: 0px;
        border-bottom: 1px solid rgb(40,40,40);
        outline: medium;
        padding-left: 10px;
    }
    .number{
        font-family: "微软雅黑";
        font-size: 30px;
        color: rgb(40,40,40);
    }
    .number>input{
        font-family: "微软雅黑";
        font-size: 30px;
        color: rgb(40,40,40);
        border: 0px;
        border-bottom: 1px solid rgb(40,40,40);
        outline: medium;
        padding-left: 10px;
    }
    button{
        width: 80%;
        padding: 20px 100px;
        border: 1px solid white;
        border-radius: 5px;
        font-size: 30px;
        font-family: "微软雅黑";
        color: white;
        background: rgb(88,202,126);
        transition: background 1s ease,border 1s ease,color 1s ease;
    }
    button:hover{
        cursor: pointer;
        background: rgba(0,0,0,0);
        border: 1px solid rgb(88,202,126);
        color: rgb(88,202,126);
        transition: background 1s ease,border 1s ease,color 1s ease;
    }
</style>
<body>
<div class="AUTH_one">
    <a href="myInfo.html">
        <img class="jian" src="../static/img/jiantou.png"/>返回
    </a>
</div>
<form action="addzy" method="post" enctype="multipart/form-data">
    <div align="center">
        <img style="width:800px;" src="../static/img/shiming.png"/>
        <div align="center" class="AUTH_FORM">
            <p class="name">
                <label id="lblErr" style="color: red"></label>
                真实姓名:
                <input id="realName" name="realName" />
            </p>
            <p class="number" >
                身份证号:
                <input id="realNameCard" name="realNameCard" />
            </p>
            <p class="number" >
                职业:
                <select id="button_box" style=" font-size: 18px; width: 60% ;height: 50px" name="occupationId">
                    <option value="0">请选择</option>
                    <#list occupationList as occupation>
                    <option value="${occupation.occupationId}">${occupation.occupationName}</option>
                    </#list>
                </select>
            </p>
        </div>
        <img class="SFI" src="../static/img/shenfen.png" id="1" width="80%"/>
        <input type="file" name="attachs" class="SF" style="display: none;" id="4" />
        <img class="ZYI" src="../static/img/zhiye.png" id="2" width="80%"/>
        <input type="file" name="attachs" class="ZY" style="display: none;" id="3"/>
        <div align="center" style="margin: 50px 0px;">
        <button>提交审核</button>
    </div>
</form>
</body>
<script type="text/javascript" src="../static/js/jquery-1.8.3.min.js" ></script>
<script>
    $("#1").click(function(){
        $("#4").click();
    });
    $("#2").click(function(){
        $("#3").click();
    });
    $(document).ready(function(){
        $("input").keydown(function(){
            $("input").css("background-color","#FFFFCC");
        });
        $("input").keyup(function(){
            $("input").css("background-color","#D6D6FF");
        });
    });
    $("form").submit(function(){
        var occupationId=$("#button_box").val();


        var realName=$("#realName").val();
        var realNameCard=$("#realNameCard").val();
        if (realName==""||realName==null){
            $("#lblErr").text("不能为空");
            $("#lblErr").css("display","block");
            return false;
        }else{
            $("#lblErr").css("display","none");
            $("#lblErr").text("");
        }
        if(occupationId==0){
            $("#lblErr").text("请选择职业");
            $("#lblErr").css("display","block");
        }
        if(realName.indexOf(" ") > 0){
            $("#lblErr").text("不能输入空格！");
            $("#lblErr").css("display","block");
            return false;
        }else{
            $("#lblErr").css("display","none");
            $("#lblErr").text("");
        }
        if(realName.match(/\s/)){
            $("#lblErr").text("不能输入空白字符！");
            $("#lblErr").css("display","block");
            return false;
        }else{
            $("#lblErr").css("display","none");
            $("#lblErr").text("");
        }
        var reg = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;

        if(!reg.test(realNameCard)){
            $("#lblErr").text("请输入正确的身份证格式！");
            $("#lblErr").css("display","block");
            return false;
        }else{
            $("#lblErr").css("display","none");
            $("#lblErr").text("");
        }

        return true;
    });
    var file1=$("#3");
    file1.change(function () {
        $("#2").attr("src",getObjectURL(file1[0].files[0]));
    });
    function getObjectURL(file1) {
        var url = null;
        /* window.URL = window.URL || window.webkitURL;*/

        if (window.createObjcectURL != undefined) {
            url = window.createOjcectURL(file1);
        } else if (window.URL != undefined) {
            url = window.URL.createObjectURL(file1);
        } else if (window.webkitURL != undefined) {
            url = window.webkitURL.createObjectURL(file1);
        }
        return url;

    }


    var file=$("#4");
    file.change(function () {
        $("#1").attr("src",getObjectURL(file[0].files[0]));
    });
    function getObjectURL(file) {
        var url = null;
        /* window.URL = window.URL || window.webkitURL;*/
        if (window.createObjcectURL != undefined) {
            url = window.createOjcectURL(file);
        } else if (window.URL != undefined) {
            url = window.URL.createObjectURL(file);
        } else if (window.webkitURL != undefined) {
            url = window.webkitURL.createObjectURL(file);
        }
        return url;

    }

</script>
</html>
