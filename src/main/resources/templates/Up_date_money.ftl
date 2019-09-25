<!Doctype html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
		<meta content="yes" name="apple-mobile-web-app-capable">
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<meta content="telephone=no" name="format-detection">
		<meta content="email=no" name="format-detection">
		<meta http-equiv="refresh" content="100">
		<title></title>
		<script src="../static/js/lCalendar.min.js"></script>
		<link rel="stylesheet" href="../static/css/lCalendar.css">
		<style type="text/css">
			* {
				margin: 0;
				padding: 0;
				-webkit-appearance: none;
				-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
				-webkit-touch-callout: none;
				box-sizing: border-box;
				font-family: "微软雅黑";
			}
			html,
			body {
				margin: 0 auto;
				width: 100%;
				min-height: 100%;
				overflow-x: hidden;
				-webkit-user-select: none;
			}
			body {
				font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
				-webkit-text-size-adjust: 100%;
				-webkit-overflow-scrolling: touch;
				overflow-scrolling: touch;
			}
			h1 {
				background-color: #19b5ee;
				color: #fff;
				font-size: 25px;
				text-align: center;
				padding: 10px;
			}
			input {
				width: 90%;
				height: 40px;
				font-family: "微软雅黑";
				font-size: 18px;
				border: 1px solid rgb(88,202,126);
				border-radius: 5px;
				margin: 20px 5% 0 5%;
				padding: 5px;
				outline: none;
				color: black;
				transition: background-color 1s ease,color 1s ease;
			}
			input:hover{
				background-color: rgb(88,202,126);
				color: white;
				transition: background-color 1s ease,color 1s ease;
			}
			.Top_up_one{
				margin: 10px;
			}
			.Top_up_one>a{
				font-family: "微软雅黑";
				font-size: 20px;
				color: rgba(100,100,100,0.8);
				text-decoration: none;
			}
			.jian{
				width: 20px;
				transform: rotate(180deg);
				position: relative;
				top: 3px;
			}
			button{
				width: 90%;
				height: 40px;
				font-family: "微软雅黑";
				font-size: 18px;
				border: 1px solid rgb(88,202,126);
				border-radius: 5px; 
				margin: 20px 5% 0 5%;
				outline: none;
				color: white;
				background-color: rgb(88,202,126);
				transition: background-color 1s ease,color 1s ease;
			}
			button:hover{
				background-color: rgba(0,0,0,0);
				color: black;
				transition: background-color 1s ease,color 1s ease;
			}
			.fuhao{
				position: absolute;
				top:165px;
				left: 350px;
			}
			.tishi{
				color: rgb(88,202,126);
				text-align: left;
				padding-left: 20px;
				margin-bottom: 10px;
			}
			.topup{
				width: 90%;
				height: 100px;
				font-family: "微软雅黑";
				font-size: 18px;
				border: 1px solid rgb(88,202,126);
				border-radius: 5px;
				margin: 20px 5% 0 5%;
				padding: 5px;
				outline: none;
				color: black;
				transition: background-color 1s ease,color 1s ease;
			}
			.topup>textarea{font-size: 20px;outline: none;border: none;background: rgba(0,0,0,0);font-family: "微软雅黑"; }
			.tixing{
				width: 97%;
				margin-top: 50px;
			}
			#zhiye{
				width: 90%;
				height: 40px;
				font-family: "微软雅黑";
				font-size: 18px;
				border: 1px solid rgb(88,202,126);
				border-radius: 5px;
				margin: 20px 5% 0 5%;
				padding: 5px;
				outline: none;
				color: black;
				transition: background-color 1s ease,color 1s ease;
			}
		</style>
	</head>
	<body>
		<div class="Top_up_one">
			<a href="myInfo.html">
				<img class="jian" src="../static/img/jiantou.png"/>返回
			</a>
		</div>
		<div align="center">
			<form action="insertTask" method="post">
				<input name="taskTitle" placeholder="请为您发布的任务设置一个标题"/>
				<p class="tishi">标题尽量简单明了，以便他人方便查看</p>
				<input name="typeId" value="${typeId}" style="display: none">
				<input name="price" placeholder="请设置任务赏金"/>
				<span class="fuhao">￥</span>
				<p class="tishi">赏金要给出一个合理的价格呦</p>
				<div>
					<input id="demo2" type="text" readonly="" name="specifiedtime" placeholder="请选择任务截止日期" data-lcalendar="2010-01-11,2019-12-31" />
				</div>
				<p class="tishi">如果未能在截止日期内完成此任务将会全额退款</p>

					<select name="taskOccupationId" id="zhiye"  onChange=""  >
						<option value="0">请选择</option>
						<#if listOccupation ?? >
							<#list listOccupation as occupation>
                                <option value="${occupation.occupationId}" >${occupation.occupationName}</option>
							</#list>
						</#if>
						<#if listType ?? >
							<#list listType as type>
                                <option value="${type.typeId}"<#if type.typeId==typeId>selected='selected'</#if>>${type.typeContent}</option>
							</#list>
						</#if>
					</select>

				<input name="place" placeholder="请输入您的任务地址"/>
				<p class="tishi"><a href="/to/gps">查看定位</a></p>

				<div align="center" class="topup" >
					<textarea  placeholder="请输入任务的具体内容" name="specificRequest"></textarea>
				</div>

				<button>发布任务</button>
			</form>
		</div>
		<div class="tixing">
			<p class="tishi">○ 填写合适的时间限制、金额、标题等可以让他人更快接受您的任务</p>
			<p class="tishi">○ 如果对方未能在规定时间内完成任务我们将会全额退款并且降低TA的信用度</p>
			<p class="tishi">○ 信用度过低将会对其进行封停处理</p>
		</div>
		<script>
			var calendardatetime = new lCalendar();
			calendardatetime.init({
				'trigger': '#demo2',
				'type': 'datetime'
			});
		</script>
	</body>

</html>