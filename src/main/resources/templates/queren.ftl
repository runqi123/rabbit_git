<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>查看任务</title>
	</head>
	<style>
		*{
			margin: 0px;
			padding: 0px;
		}
		.total{
			width: 100%;
			height: 1250px;
			background-image: url(http://runqi123.cn/static/img/infobg.png);
		}
		.neirong{
			width: 100%;
		}
		.footer{
			width: 100%;
			height: 200px;
			background-image: url(http://runqi123.cn/static/img/4-pd.png);
			background-size: 100%;
			position: relative;
		}
		.headImg{
			width: 400px;
			height: 400px;
			border-radius: 50%;
			position: absolute;
			top: 55px;
			left: 95px;
			animation: headImg 2s ease-in-out;
		}
		.Name{
			font-family: "微软雅黑";
			font-size: 80px;
			position: absolute;
			top: 130px;
			left: 590px;
			animation: option1 3s ease-in-out;
		}
		.Phone{
			font-family: "微软雅黑";
			font-size: 35px;
			color: rgb(50,50,50);
			position: absolute;
			top: 300px;
			left: 590px;
		}
		.Job{
			font-family: "微软雅黑";
			font-size: 35px;
			color: rgb(50,50,50);
			position: absolute;
			top: 350px;
			left: 590px;
		}
		.Address{
			font-family: "微软雅黑";
			font-size: 35px;
			color: rgb(50,50,50);
			position: absolute;
			top: 400px;
			left: 590px;
		}
		.Xin{
			font-family: "微软雅黑";
			font-size: 35px;
			color: rgb(50,50,50);
			position: absolute;
			top: 500px;
			left: 590px;
		}
		.jiezhiDate{
			font-family: "微软雅黑";
			font-size: 25px;
			color: rgb(238,108,72);
			position: absolute;
			top: 630px;
			left: 650px;
			animation: jiezhiDate 5s ease;
			animation-iteration-count: 100;
		}
		.fabuDate{
			font-family: "微软雅黑";
			font-size: 32px;
			color: rgb(247,48,48);
			position: absolute;
			top: 680px;
			left: 350px;
			animation: fabuDate 5s ease;
			animation-iteration-count: 100;
			animation-delay: 0.5s;
		}
		.yujiDate{
			font-family: "微软雅黑";
			font-size: 43px;
			color: rgb(12,175,211);
			position: absolute;
			top: 750px;
			left: 250px;
			animation: yujiDate 5s ease;
			animation-iteration-count: 100;
			animation-delay: 1s;
		}
		.juB{
			font-family: "微软雅黑";
			font-size: 70px;
			color: rgb(255,181,0);
			position: absolute;
			top: 820px;
			left: 300px;
			animation: juB 5s ease;
			animation-iteration-count: 100;
			animation-delay: 1.3s;
		}
		.leixing{
			font-family: "微软雅黑";
			font-size: 80px;
			color: rgb(116,183,72);
			position: absolute;
			top: 970px;
			left: 350px;
			animation: leixing 6s ease;
			animation-iteration-count: 100;
			animation-delay: 2s;
		}
		.fabuPerson{
			font-family: "微软雅黑";
			font-size: 24px;
			color: rgb(118,122,255);
			position: absolute;
			top: 930px;
			left: 200px;
			animation: fabuPerson 5s ease;
			animation-iteration-count: 100;
			animation-delay: 1.7s;
		}
		@keyframes jiezhiDate{
			0%{top: 630px;}
			50%{top: 620px;}
			100%{top: 630px;}
		}
		@keyframes fabuDate{
			0%{top: 680px;}
			50%{top: 670px;}
			100%{top: 680px;}
		}
		@keyframes yujiDate{
			0%{top: 750px;}
			50%{top: 740px;}
			100%{top: 750px;}
		}
		@keyframes juB{
			0%{top: 820px;}
			50%{top: 800px;}
			100%{top: 820px;}
		}
		@keyframes leixing{
			0%{top: 970px;}
			50%{top: 940px;}
			100%{top: 970px;}
		}
		@keyframes fabuPerson{
			0%{top: 930px;}
			50%{top: 920px;}
			100%{top: 930px;}
		}
		.aioc{
			padding: 15px 40px;
			border: 1px solid white;
			border-radius: 5px;
			font-size: 35px;
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
		.aioc1{
			position: absolute;
			bottom: 30px;
			right: 30px;
		}
		.aioc2{
			position: absolute;
			bottom: 30px;
			right: 300px;
		}
		.set{
			width: 90%;
		}
		.nav{
			font-family: "微软雅黑";
			font-size: 70px;
			color: rgb(40,40,40);
		}
		hr{
			display: block;
			margin: 40px 0px;
		}
		.renwuNR{
			font-size: 55px;
			color: rgb(40,40,40);
		}
		.redRediu{
			display: inline-block;
			width: 30px;height: 30px;
			border-radius: 50%;
			background-color: rgb(248,194,242);
			position: relative;
			top: 5px;
		}
		.redRediu+a{
			font-family: "微软雅黑";
			font-size: 24px;
			color: rgb(40,40,40);
		}
		.blueRediu{
			display: inline-block;
			width: 30px;height: 30px;
			border-radius: 50%;
			background-color: rgb(201,214,254);
			position: relative;
			top: 5px;
		}
		.blueRediu+a{
			font-family: "微软雅黑";
			font-size: 24px;
			color: rgb(40,40,40);
		}
		@keyframes option1{
			from{opacity: 0;}
			to{opacity: 1;}
		}
		@keyframes headImg{
			from{opacity: 0;transform: rotate(0deg);}
			to{opacity: 1;transform: rotate(360deg);}
		}
	</style>
	<body>
		<div class="total">
			<img src="http://runqi123.cn/static/img/zd4.jpg" class="headImg"/>
			<span class="Name">${ruserTask.uname}</span>
			<p class="Phone">邮箱 : ${ruserTask.emailUser}</p>
			<p class="Address">地址 : ${taskUp.place} </p>
			<p class="Xin">
				信用度:
				<img style="width: 40px;" src="http://runqi123.cn/static/img/xingji.png"/>
				<img style="width: 40px;" src="http://runqi123.cn/static/img/xingji.png"/>
				<img style="width: 40px;" src="http://runqi123.cn/static/img/xingji.png"/>
				<img style="width: 40px;" src="http://runqi123.cn/static/img/xingji.png"/>
				<img style="width: 40px;" src="http://runqi123.cn/static/img/xingji.png"/>
			</p>
			<p class="jiezhiDate">截止时间 : ${taskUp.specifiedtime?string("MM月dd日 HH:mm")}</p>
			<p class="fabuDate">发布时间 : ${taskUp.taskCreateTime?string("MM月dd日 HH:mm")}</p>
			<p class="yujiDate"></p>
			<p class="juB">JU币 : ${taskUp.price}</p>
			<p class="fabuPerson">发布人 : ${ruserTask.uname}</p>
		</div>
		<div class="neirong" align="center">
			<div class="set" align="left">
				<p class="nav">${taskUp.taskTitle}</p>
				<span class="redRediu"></span><a> ${taskUp.place}</a>
				<br/>
				<span class="blueRediu"></span><a> ${taskUp.specifiedtime?string("MM月dd日 HH:mm")}</a>
				<hr />
				<p class="renwuNR">
                     ${taskUp.specificRequest}
				</p>
			</div>
		</div>
		<div class="footer">
			<a class="aioc aioc1" href="../to/ifUpto?taskid=${taskUp.taskId}">确认完成</a>
			<a class="aioc aioc2" href="#"  onclick="javascript :history.go(-1);">返回</a>
		</div>
	</body>
    <script type="text/javascript">
        window.onload=function(){
            var myDate = new Date();
            var a=myDate.getDate();
            var b=myDate.getHours();
            var c=myDate.getMinutes();
            //首先获取截止日期分割字符串    1月20日18:30
            var strdate="${taskUp.specifiedtime?string('yyyy-MM-dd HH:mm')}";
            var strday=strdate.substring(strdate.indexOf("-")+4,strdate.indexOf("-")+6);
            var strh=strdate.substring(strdate.indexOf("-")+6,strdate.indexOf(":"));
            var strm=strdate.substring(strdate.indexOf(":")+1,strdate.indexOf(":")+3);
            //之后将当前日期减去截止日期
            var newdates=(parseInt(strday)-parseInt(a))*24*60*60;
            var newh=(parseInt(strh)-parseInt(b))*60*60;
            var news=(parseInt(strm)-parseInt(c))*60;
            //再对日期进行处理得出秒数
            countDown(newdates+newh+news);
        }
        function countDown(times){
            var timer=null;
            timer=setInterval(function(){
                var day=0,
                        hour=0,
                        minute=0,
                        second=0;//时间默认值
                if(times > 0){
                    day = Math.floor(times / (60 * 60 * 24));
                    hour = Math.floor(times / (60 * 60)) - (day * 24);
                    minute = Math.floor(times / 60) - (day * 24 * 60) - (hour * 60);
                    second = Math.floor(times) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
                }
                if (day <= 9) day = '0' + day;
                if (hour <= 9) hour = '0' + hour;
                if (minute <= 9) minute = '0' + minute;
                if (second <= 9) second = '0' + second;
                var yujiDate=document.getElementsByClassName("yujiDate")[0];
                yujiDate.innerText="距离截止剩:"+day+"天"+hour+"小时"+minute+"分钟:"+second+"秒";
                times--;
            },1000);
            if(times<=0){
                clearInterval(timer);
            }
        }
    </script>
</html>
