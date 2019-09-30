package com.rabbit.controller;

import com.alibaba.fastjson.JSON;
import com.rabbit.pojo.Occupation;
import com.rabbit.pojo.Realname;
import com.rabbit.pojo.Ruser;
import com.rabbit.pojo.Task;
import com.rabbit.service.TaskService;
import com.rabbit.service.UserService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("to")
public class TaskController {

    @Resource
    private TaskService taskService;

    @Resource
    private UserService userService;
    /**
     * 发布任务
     * @param price
     * @param taskTitle
     * @param taskOccupationId
     * @param specificRequest
     * @param place
     * @param specifiedtime
     * @param typeId
     * @return
     */
    @RequestMapping("insertTask")
    public String toInsert(@RequestParam("price")int price, @RequestParam("taskTitle")String taskTitle, @RequestParam("taskOccupationId")int taskOccupationId
                          , @RequestParam("specificRequest")String specificRequest, @RequestParam("place")String place,
                         @RequestParam("specifiedtime") String specifiedtime, @RequestParam("typeId") int typeId, HttpServletRequest request){
                        if(request.getSession().getAttribute("ruser")==null){
                            return "redirect:/to/login";
                        }
                        Task task = new Task();
                        task.setPrice(price);//任务价格
                        task.setTaskTitle(taskTitle);//任务标题
                        task.setTaskOccupationId(taskOccupationId);//任务职业id
                        task.setSpecificRequest(specificRequest);//具体要求
                        task.setPlace(place);//地点
                        task.setRecipient(0);//接收者id
                        task.setIsAccept(0);//任务是否被接受
                        task.setIsComplete(0);//双方是否同意
                        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
                        try{
                            Date date=sdf.parse(specifiedtime);
                            task.setSpecifiedtime(date);
                        }catch (Exception e){
                            e.printStackTrace();
                        }
                        Ruser ruser=null;
                        ruser=(Ruser) request.getSession().getAttribute("ruser");
                        task.setPublisherId( ruser.getRuserId());//任务发布者id
                        task.setTaskCreateTime(new Date());//任务发布日期
                        task.setTypeId(typeId);
                        task.setTaskState(0);//任务状态
                        task.setIsrecipient(0);//接受者确认是否完成任务
                        task.setIspublisher(0);//发布任务者确认是否完成任务


                            Ruser ruser1=null;
                            ruser1=(Ruser) request.getSession().getAttribute("ruser");
                            int yue=ruser1.getBalance()-price;
                            if(yue<0){
                                int result = taskService.tianjiaTask(task);
                                return "JuInfo";
                            }else {
                                userService.chongzhi(yue,ruser1.getRuserId());
                                ruser1=userService.upRuser(ruser1.getRuserId());
                                request.getSession().setAttribute("ruser",ruser1);
                                return "redirect:/to/MyHome";
                            }


                    }
    @RequestMapping("upTask")
    public String upTask(HttpServletRequest request,@RequestParam("taskId") Integer taskId) {
        System.out.println("hool");
        Ruser ruser = (Ruser) request.getSession().getAttribute("ruser");
        Task tasks = taskService.getTask(taskId);
        if (ruser == null) {
            return "login";
        }
        Realname realname = (Realname) request.getSession().getAttribute("realname");
        if (realname.getRuserId() == null) {
            return "redirect:/to/addzys";
        } else {
            if (tasks.getTypeId() == 11) {
                if (realname.getOccupationId() == tasks.getTaskOccupationId()) {
                    Task task = new Task();
                    task.setRecipient(ruser.getRuserId());
                    task.setTaskId(taskId);
                    int result = taskService.upTask(task);
                    return "redirect:/to/MyHome";
                }else {
                    return "errInfo";
                }

            } else {
                System.out.println("hello word");
                Task task = new Task();
                task.setRecipient(ruser.getRuserId());
                task.setTaskId(taskId);
                int result = taskService.upTask(task);
                return "redirect:/to/MyHome";
            }
        }

    }

}
