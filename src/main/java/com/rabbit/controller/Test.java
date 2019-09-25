package com.rabbit.controller;

import com.rabbit.util.HttpDownloader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("to")
public class Test {
    // 将经纬度getLng， getLat   通过getAmapByLngAndLat方法转换地址
    public static String getAmapByLngAndLat(String getLng,String getLat) throws Exception{
        String url;
        try {
            url = "http://restapi.amap.com/v3/geocode/regeo?output=JSON&location="+getLng+","+getLat+"&key=c15847809408c99849b96cd9dcb27772&radius=0&extensions=base";
            System.out.println(url);
            HttpDownloader httpDownloader = new HttpDownloader();
            String result = httpDownloader.download(url);
            if (result==null){
                return "-1";
            }
            //将获取结果转为json 数据
            net.sf.json.JSONObject obj = net.sf.json.JSONObject.fromObject(result);
            if (obj.get("status").toString().equals("1")) {
//              如果没有返回-1

                net.sf.json.JSONObject regeocode = obj.getJSONObject("regeocode");
                if(regeocode.size()>0){
                    // 在regeocode中拿到 formatted_address 具体位置
                    String formatted = regeocode.get("formatted_address").toString();
                    System.out.println(formatted);
                    return formatted;

                }else{
                    System.out.println("未找到相匹配的地址！");
                    return "-1";

                }
            } else {
                System.out.println("请求错误！");
                return "-2";
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return  "-1";
    }

    @RequestMapping("get")
    public String  getAdress(Model model) {
        try{
            String adress=Test.getAmapByLngAndLat("116.49585","39.83061");
            model.addAttribute("adress",adress);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "adress";
    }
}
