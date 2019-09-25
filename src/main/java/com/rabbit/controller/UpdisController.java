package com.rabbit.controller;

import com.rabbit.pojo.Ruser;
import com.rabbit.pojo.Task;
import com.rabbit.service.TaskService;
import com.rabbit.service.UpdisService;
import com.rabbit.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("to")
public class UpdisController {

    @Resource
    private UpdisService us;

    @Resource
    private TaskService taskService;

    @Resource
    private UserService userService;

    @RequestMapping("ifUpto")
    public String ifUpto(HttpServletRequest request,@RequestParam("taskid") int taskid){
        Task task=taskService.getTask(taskid);
        Ruser ruser=(Ruser) request.getSession().getAttribute("ruser");
        if(ruser.getRuserId()==task.getPublisherId()){
            return "redirect:/to/updispublisher?taskid="+taskid;
        }else if(ruser.getRuserId()==task.getRecipient()){
            return "redirect:/to/updisrecipient?taskid="+taskid;
        }
        return null;
    }

    @RequestMapping("updispublisher")
    public String updispublisher(@RequestParam("taskid")int taskid, HttpServletRequest request){
        us.updispublisher(taskid);
        Task task=taskService.getTask(taskid);
        if(task.getIspublisher()==1&&task.getIsrecipient()==1){
           Ruser ruser= userService.upRuser(task.getRecipient());
           us.upisComplete(taskid);
           int yue=task.getPrice()+ruser.getBalance();
           userService.chongzhi(yue,ruser.getRuserId());
        }
        return "redirect:/to/goLoading";
    }
    @RequestMapping("updisrecipient")
    public String updisrecipient(@RequestParam("taskid")int taskid, HttpServletRequest request){
        us.updisrecipient(taskid);
        Task task=taskService.getTask(taskid);
        if(task.getIspublisher()==1&&task.getIsrecipient()==1){
            us.upisComplete(taskid);
            Ruser ruser= userService.upRuser(task.getRecipient());
            int yue=task.getPrice()+ruser.getBalance();
            userService.chongzhi(yue,ruser.getRuserId());
        }
        return "redirect:/to/goJsrw";
    }
}
