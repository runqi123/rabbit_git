package com.rabbit.service;

import com.rabbit.dao.UpdisMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UpdisServiceImpl implements UpdisService{

    @Resource
    private UpdisMapper um;
    @Override
    public int updispublisher(int taskid) {
        return um.updispublisher(taskid);
    }

    @Override
    public int updisrecipient(int taskid) {
        return um.updisrecipient(taskid);
    }

    @Override
    public int upisComplete(int taskid) {
        return um.upisComplete(taskid);
    }
}
