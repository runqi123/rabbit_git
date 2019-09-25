package com.rabbit.service;

import com.rabbit.dao.AreacodeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AreacodeServiceImpl implements AreacodeService{

    @Resource
    public AreacodeMapper areacodeMapper;

    @Override
    public String selectDesc(String zone) {

        return areacodeMapper.selectAreacode(zone);
    }
}
