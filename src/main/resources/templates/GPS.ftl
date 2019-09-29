<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>查看位置</title>
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <script type="text/javascript"
            src="http://webapi.amap.com/maps?v=1.3&key=c15847809408c99849b96cd9dcb27772"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
    <style type="text/css">
        html {
            height: 100%
        }
        body {
            height: 100%;
            margin: 0px;
            padding: 0px
        }
        #container {
            height: 100%
        }
    </style>
<body>

<div id='container'></div>
<div id="tip"></div>
<script src="http://runqi123.cn/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    /***************************************
     由于Chrome、IOS10等已不再支持非安全域的浏览器定位请求，为保证定位成功率和精度，请尽快升级您的站点到HTTPS。
     ***************************************/
    var map, geolocation;
    //加载地图，调用浏览器定位服务
    map = new AMap.Map('container', {
        resizeEnable: true
    });
    map.plugin('AMap.Geolocation', function () {
        geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
            buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
            zoomToAccuracy: true,      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
            buttonPosition: 'RB'
        });
        map.addControl(geolocation);
        geolocation.getCurrentPosition();
        AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
        AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
    });
    //解析定位结果
    function onComplete(data) {
        var str = ['定位成功'];
        str.push('经度：' + data.position.getLng());
        str.push('纬度：' + data.position.getLat());
        var accuracy= data.accuracy == null ? 0 : data.accuracy
        str.push('精度：' +accuracy + ' 米');
        str.push('是否经过偏移：' + (data.isConverted ? '是' : '否'));
        document.getElementById('tip').innerHTML = str.join('<br>');
        var lnglatXY = new AMap.LngLat(data.position.getLng(),data.position.getLat());
        //document.getElementById('result').innerHTML = "您输入的是：" + key_1;
        //加载地理编码插件
        map.plugin(["AMap.Geocoder"], function() {
            MGeocoder = new AMap.Geocoder({
                radius: 1000,
                extensions: "all"
            });
            //返回地理编码结果
            AMap.event.addListener(MGeocoder, "complete", geocoder_CallBack2);
            //逆地理编码
            MGeocoder.getAddress(lnglatXY);
        });
        //加点
        var marker = new AMap.Marker({
            map:map,
            icon: new AMap.Icon({
                image: "http://api.amap.com/Public/images/js/mark.png",
                size:new AMap.Size(58,30),
                imageOffset: new AMap.Pixel(-32, -0)
            }),
            position: lnglatXY,
            offset: new AMap.Pixel(-5,-30)
        });
        map.setFitView();
    }
    function geocoder_CallBack2(data) { //回调函数
        var address;
        //返回地址描述
        address = data.regeocode.formattedAddress;
        document.getElementById('tip').innerHTML=document.getElementById('tip').innerHTML+"<br>当前位置 :"+address;
    }
    //解析定位错误信息
    function onError(data) {
        document.getElementById('tip').innerHTML = '定位失败';
    }
</script>
</body>
</html>
