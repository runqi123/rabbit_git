package com.rabbit.service;

import com.rabbit.dao.TaskMapper;
import com.rabbit.pojo.Occupation;
import com.rabbit.pojo.Task;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TaskServiceImpl implements TaskService {
    @Resource
    private TaskMapper taskMapper;

    @Override
    public int tianjiaTask(Task task) {
     int result= taskMapper.insertTask(task);
        return result;
    }

    @Override
    public List<Occupation> getOccupation() {
        return taskMapper.getOccupation();
    }

    @Override
    public List<Task> taskSelect(Integer price, Integer typeId, Integer timeIs) {
        System.out.println(1111);
        return taskMapper.taskSelect(price,typeId,timeIs);
    }

    @Override
    public Task getTask(Integer taskId) {
        return taskMapper.getTask(taskId);
    }
    @Override
    public List<Task> getTaskByPublisherId(Integer publisherId) {
        return taskMapper.getTaskByPublisherId(publisherId);
    }

    @Override
    public List<Task> getTaskByRecipient(Integer recipient) {
        return taskMapper.getTaskByRecipient(recipient);
    }

    @Override
    public int upTask(Task task) {
        return taskMapper.upTask(task);
    }
}
