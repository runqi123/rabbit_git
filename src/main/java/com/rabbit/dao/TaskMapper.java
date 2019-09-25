package com.rabbit.dao;

import com.rabbit.pojo.Occupation;
import com.rabbit.pojo.Task;
import com.rabbit.pojo.Type;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TaskMapper {
    //添加任务
    public int insertTask(Task task);
    //添加的时候查询职业
    public List<Occupation> getOccupation();
    //查询全部的任务
    public List<Task> taskSelect(@Param("price")Integer price,@Param("typeId") Integer typeId,@Param("timeIs")Integer timeIs);
    //查看我的发布全部任务
    public List<Task> getTaskByPublisherId(@Param("publisherId") Integer publisherId);
    //查看我的接受全部任务
    public List<Task> getTaskByRecipient(@Param("recipient") Integer recipient);
    //查询单个任务
    public Task getTask(@Param("taskId") Integer taskId);
    //接受任务
    public int upTask(Task task);
}
