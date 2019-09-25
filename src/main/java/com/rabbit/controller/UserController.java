package com.rabbit.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.rabbit.pojo.Realname;
import com.rabbit.service.RealnameService;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.rabbit.pojo.Ruser;
import com.rabbit.service.UserService;

@Controller
@RequestMapping("users")
public class UserController {
    @Resource
    public UserService userService;

    @Resource
    public RealnameService realnameService;

    /**
     * 登录
     * @param request
     * @param uname
     * @param pass
     * @return
     */
    @ResponseBody
    @RequestMapping("login")
    public JSON login(HttpServletRequest request,@RequestParam("uname")String uname,@RequestParam("pass") String pass){

        Map<String, String> map=new HashMap<String, String>();
        Ruser ruser=userService.login(uname, pass);
        if(ruser!=null){
            request.getSession().setAttribute("ruser", ruser);
            Realname realname=realnameService.slectRelanme(ruser.getRuserId());
                if(realname==null){
                    realname=new Realname();
                    realname.setSex(0);
                    realname.setHometown("  .  .  .  .  .");
                }
                request.getSession().setAttribute("realname",realname);
            map.put("exkey", "true");
        }else{
            map.put("exkey", null);
        }
        return (JSON) JSON.toJSON(map);
    }

    /**
     *
     * @param request
     * @param emailUser
     * @param uname
     * @param pass
     * @return
     */
    @ResponseBody
    @RequestMapping("register")
    public JSON register(HttpServletRequest request,@RequestParam("emailUser")String emailUser,@RequestParam("uname")String uname,@RequestParam("pass") String pass){
        Ruser user=new Ruser();
        user.setBalance(0);
        user.setRuserState(0);
        user.setEmailUser(emailUser);
        user.setUname(uname);
        user.setPass(pass);
        Map<String, String> map=new HashMap<String, String>();
        try{
            Integer  result=userService.register(user);
            if(result>0){
                map.put("exkey", "true");
            }else{
                map.put("exkey", null);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return (JSON) JSON.toJSON(map);
    }
    @RequestMapping("chongzhi")
    public String chongzhi(HttpServletRequest request, @RequestParam("money")Integer money,  @RequestParam("count")Integer count,Model model){
        Ruser ruser = (Ruser) request.getSession().getAttribute("ruser");
        Integer count3=count+money;
        Integer count2= ruser.getRuserId();
        Integer count1=userService.chongzhi(count3,count2);
        if(count1==1){
            Ruser ruser1=null;
            ruser1=(Ruser) request.getSession().getAttribute("ruser");
            System.out.println(ruser.getRuserId());
            Ruser ruser2=userService.upRuser(ruser.getRuserId());
            request.getSession().setAttribute("ruser",ruser2);
            model.addAttribute("err","充值成功");
            return "Ju";
        }else{
            model.addAttribute("err","充值失败");
        }
        return "Ju";
    }

}
