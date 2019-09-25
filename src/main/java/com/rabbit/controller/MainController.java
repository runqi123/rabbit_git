package com.rabbit.controller;

import com.rabbit.pojo.Occupation;
import com.rabbit.pojo.Ruser;
import com.rabbit.pojo.Task;
import com.rabbit.pojo.Type;
import com.rabbit.service.OccupationService;
import com.rabbit.service.TaskService;
import com.rabbit.service.TypeService;
import com.rabbit.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("to")
public class MainController {

   @Resource
   private UserService userService;

   @Resource
   private TypeService typeService;

    @Resource
    private OccupationService occupationService;

    @Resource
    private TaskService taskService;

    @RequestMapping("login")
    public String index(){

        return "login";
    }

    //跳转至定位
    @RequestMapping("gps")
    public String toGPS(){

        return "GPS";
    }

    @RequestMapping("RegisterMT")
    public String test(){

        return "RegisterMT";
    }
    @RequestMapping("MyHome")
    public String MyHome(Model model, @RequestParam (value = "price", required = false )Integer price,
                         @RequestParam(value = "typeId", required = false) Integer typeId,
                         @RequestParam(value = "timeIs", required = false)Integer timeIs){
        List<Task> taskList=taskService.taskSelect(price,typeId,timeIs);
        List<Type> list =typeService.getType();
        model.addAttribute("list",list);
        model.addAttribute("taskList",taskList);
        return "MyHome";
    }
    @RequestMapping("myInfo")
    public String myInfo(){

        return "myInfo";
    }

    @RequestMapping("ifLogin")
    public String ifLogin(HttpServletRequest request){
        Ruser ruser=null;
        ruser=(Ruser) request.getSession().getAttribute("ruser");
        if(ruser==null){
            return "login";

        }else {
            return "myInfo";
        }
    }
    @RequestMapping("toJu")
    public String toJu(HttpServletRequest request,Model model){

        return "Ju";
    }
    @RequestMapping("toUp")
    public String toUp(Model model,@RequestParam(value = "typeId", required = false) int typeId){
     if(typeId == 11){
       List<Occupation> listOccupation =occupationService.occupationList();
        model.addAttribute("listOccupation",listOccupation);
        model.addAttribute("typeId",typeId);
     }
        else{
         List<Type> listType = typeService.getType();
         model.addAttribute("listType",listType);
         model.addAttribute("typeId",typeId);
     }
        return "Up_date_money";
    }
    @RequestMapping("infoUp")
    public String infoUp(){
        return "infoUpdate";
    }
    @RequestMapping("taskUp")
    public String taskUp(@RequestParam("taskId") Integer taskId,Model model){
        Task taskUp=taskService.getTask(taskId);
        Ruser ruserTask=userService.upRuser(taskUp.getPublisherId());
        model.addAttribute("taskUp",taskUp);
        model.addAttribute("ruserTask",ruserTask);
        return "TaskInfo";
    }
    @RequestMapping("goLoading")
    public String goLoading(HttpServletRequest request, Model model) {
        Ruser ruser = null;
        ruser = (Ruser) request.getSession().getAttribute("ruser");
        List<Task> lodingList = taskService.getTaskByPublisherId(ruser.getRuserId());
        model.addAttribute("lodingList", lodingList);
        return "loading";
    }

    @RequestMapping("goJsrw")
    public String goJsrw(HttpServletRequest request, Model model) {
        Ruser ruser = null;
        ruser = (Ruser) request.getSession().getAttribute("ruser");
        List<Task> jsrwList = taskService.getTaskByRecipient(ruser.getRuserId());
        model.addAttribute("jsrwList", jsrwList);
        return "jieshourenwu";
    }
    @RequestMapping("queren")
    public String queren(@RequestParam("taskId") Integer taskId,Model model){
        Task taskUp=taskService.getTask(taskId);
        Ruser ruserTask=userService.upRuser(taskUp.getPublisherId());
        model.addAttribute("taskUp",taskUp);
        model.addAttribute("ruserTask",ruserTask);
        return "queren";
    }
}

