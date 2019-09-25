
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
    }
    .bottom{
        width: 100%;
        height: 100px;
        box-shadow: 0px 0px 5px black;
        background-color: white;
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
        height: 80px;
        box-shadow: 0px 0px 5px black;
        font-family: "微软雅黑";
        font-size: 50px;
        padding-top: 15px;
        color: rgb(66,141,114);
    }
    .zhong{
        width: 100%;
        height: 80px;
    }
    .order{
        font-family: "微软雅黑";
        font-size: 35px;
        color: rgb(91,191,143);
    }
    .order1{position: absolute;left: 50px;}
    .order2{position: absolute;left: 200px;}
    .order3{position: absolute;left: 350px;}
    .order4{position: absolute;left: 500px;}
    .order5{position: absolute;right: 20px;}
    .order5>span{font-size: 40px;}
    .order5>img{width:40px;position: relative;top: 7px;}
    .ul{
        width: 100%;
        height: 200px;
        display: none;
        overflow: hidden;
    }
    .li{
        color: rgb(91,191,143);
        text-decoration: none;
        font-family: "微软雅黑";
        font-size: 40px;
        margin: 20px;
        display: inline-block;
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
        left: 150px;
    }
    .renwuPCC{
        font-family: "微软雅黑";
        font-size: 25px;
        color: gray;
        position: absolute;
        top: 150px;
        left: 400px;
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
    .fabu{
        width: 100%;
        height: 800px;
        background-image: url(../static/img/fabu.png);
        background-size: 100%;
        position: fixed;
        bottom: -800px;
    }
    .fabu-close{
        display: block;
        font-family: "微软雅黑";
        font-size: 100px;
        position: relative;
        top: 650px;
    }
    .zhiding{
        width:150px;
        height:150px;
        position: fixed;
        bottom:200px;
        left:-200px;
    }
    .zhiding>img{
        width:100%;
        height:100%;
    }
    .rwTypeButton{
        color: rgb(40,40,40);
        border-radius: 5px;
        border: 1px solid rgb(40,40,40);
        padding: 5px 20px;
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
    .iconimg{
        width: 100px;
    }
    .iconborder{
        display: inline-block;
        text-decoration: none;
        margin: 0px 30px;
        position: relative;
        top: -80px;
    }
    .iconfont{
        font-family: "微软雅黑";
        font-size: 30px;
        text-decoration: none;
        color: rgb(100,100,100);
    }
</style>
<body>
<div class="top" align="center">
    全部任务
</div>
<div class="zhong" align="center">
    <p>
        <a class="order order1">排序</a>
        <a class="order order2" href="../to/MyHome?price=1">价格</a>
        <a class="order order3" href="../to/MyHome?timeIs=1">时间</a>
        <a class="order order4">距离</a>
        <a class="order order5">
            <span>分类</span>
            <img src="../static/img/分类.png" />
        </a>
    </p>
</div>
<div class="ul" align="center">
<#list list as list1>
    <a class="li" href="../to/MyHome?typeId=${list1.typeId}">${list1.typeContent}</a>
</#list>
</div>
<div class="neirong" align="center">
<#list taskList as task>
    <div class="neirongONE">
        <p class="renwuName">${task.taskTitle}</p>
        <span class="renwuCity"><img src="../static/img/dibiao.png"/><a>${task.place}</a></span>
        <span class="renwuType"><a class="rwTypeButton">
            <#if task.typeId==1 >买卖
            <#elseif task.typeId==2>跑腿
            <#elseif task.typeId==3>家教
            <#elseif task.typeId==4>代驾
            <#elseif task.typeId==5>外勤
            <#elseif task.typeId==6>演绎
            <#elseif task.typeId==7>看病
            <#elseif task.typeId==8>充场
            <#elseif task.typeId==9>外包
            <#elseif task.typeId==11>
                <#if task.taskOccupationId=1>IT
                    <#elseif task.taskOccupationId==2>医生
                    <#elseif task.taskOccupationId==3>设计
                    <#elseif task.taskOccupationId==4>教育
                    <#elseif task.taskOccupationId==5>司机
                    <#elseif task.taskOccupationId==6>演绎
                    <#elseif task.taskOccupationId==7>律师
                    <#elseif task.taskOccupationId==8>编辑
                    <#elseif task.taskOccupationId==9>秘书
                    <#elseif task.taskOccupationId==10>销售
                    <#else>其他
                </#if>
            <#else >其他</#if></a></span>
        <span class="renwuPC"><span class="redRediu"></span> <a> ${task.taskCreateTime?string("MM月dd日 HH:mm")}</a></span>
        <span class="renwuPCC"><span class="blueRediu"></span> : <a> ${task.uname}</a></span>
        <p class="renwuMoney"><img style="width: 40px;" src="../static/img/jinbi.png"/>×<span>${task.price}</span></p>
        <a class="aioc upPosistion" href="../to/taskUp?taskId=${task.taskId}">查看详情</a>
    </div>
</#list>

</div>
<div class="bottom" align="center">
    <a class="bottomRadius quan"><img src="../static/img/全部任务click.png"/></a>
    <a class="bottomRadius fa"><img src="../static/img/center.png"/></a>
    <a class="bottomRadius my"><img src="../static/img/我的.png"/></a>
</div>
<div class="zhiding">
    <img src="../static/img/7957446f13bb7fc.png">
</div>
<div class="fabu" align="center">
    <span class="fabu-close">×</span>
     <#list list as list1>
        <a href="/to/toUp?typeId=${list1.typeId}" class="iconborder"><img class="iconimg" src="${list1.typeImg}" /><p class="iconfont">${list1.typeContent}</p></a>
     </#list>
</div>
</body>
<script type="text/javascript" src="../static/js/jquery-1.8.3.min.js" ></script>
<script type="text/javascript">
    $(function(){
        $(window).scroll(function(e){
            var to=$(window).scrollTop();
            if(to>0){
                $(".bottom").css({"bottom":"-300px","transition":"bottom 2s ease"});
                $(".zhiding").css({"left":"50px","transition":"left 1s ease"});
            }else if(to==0){
                $(".bottom").css({"bottom":"0px","transition":"bottom 2s ease"});
                $(".zhiding").css({"left":"-200px","transition":"left 1s ease"});
            }
        });
        var xunhuangao;
        $(".zhiding").click(function(){
            xunhuangao=$(window).scrollTop();
            var ss=setInterval(function(){
                xunhuangao=xunhuangao-10;
                $(window).scrollTop(xunhuangao);
                if(xunhuangao<0){
                    window.clearInterval(ss);
                }
            },1);
        });
        $(".fabu-close").click(function(){
            $(".fabu").css({"bottom":"-1000px","transition":"bottom 0.5s ease"});
            $(".bottom").css({"bottom":"0px","transition":"bottom 0.5s ease"});
            $(".fabu-close").css({"transform":"rotate(-180deg)","transition":"transform 1s ease"});
        });
        $(".quan").click(function(){
            location.href="Home.html"
        });
        $(".fa").click(function(){
            $(".fabu").css({"bottom":"0px","transition":"bottom 0.5s ease"});
            $(".bottom").css({"bottom":"-300px","transition":"bottom 0.5s ease"});
            $(".fabu-close").css({"transform":"rotate(180deg)","transition":"transform 1s ease"});
        });
        $(".my").click(function(){
            location.href="ifLogin"
        });
        var order5=1;
        $(".order5").click(function(){
            order5++;
            if(order5%2==0){
                $(".order5").children("span").css("color","rgb(67,141,115)");
                $(".order5").children("img").attr("src","../static/img/分类click.png");
                $(".ul").slideDown();
            }else{
                $(".order5").children("span").css("color","rgb(91,191,143)");
                $(".order5").children("img").attr("src","../static/img/分类.png");
                $(".ul").slideUp();
            }
        });
        $(".order2").click(function(){
            $(".order2").css("color","rgb(67,141,115)");
            $(".order3").css("color","rgb(91,191,143)");
            $(".order4").css("color","rgb(91,191,143)");
        });
        $(".order3").click(function(){
            $(".order2").css("color","rgb(91,191,143)");
            $(".order3").css("color","rgb(67,141,115)");
            $(".order4").css("color","rgb(91,191,143)");
        });
        $(".order4").click(function(){
            $(".order2").css("color","rgb(91,191,143)");
            $(".order3").css("color","rgb(91,191,143)");
            $(".order4").css("color","rgb(67,141,115)");
        });
    });
</script>
</html>
