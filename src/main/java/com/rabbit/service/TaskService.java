package com.rabbit.service;

import com.rabbit.pojo.Occupation;
import com.rabbit.pojo.Task;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TaskService {
    //添加任务
    public int tianjiaTask(Task task);
    //添加的时候查询职业
    public List<Occupation> getOccupation();
    //任务
    public List<Task> taskSelect(Integer price, Integer typeId,Integer timeIs);
    //查看任务
    public Task getTask(Integer taskId);
    //查看我的发布全部任务
    public List<Task> getTaskByPublisherId(Integer publisherId);
    //查看我的接受全部任务
    public List<Task> getTaskByRecipient(Integer recipient);
    //接受任务
    public int upTask(Task task);

}
