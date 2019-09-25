package com.rabbit.service;

import com.rabbit.dao.OccupationMapper;
import com.rabbit.pojo.Occupation;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class OccupationServiceImpl implements OccupationService{

    @Resource
    private OccupationMapper occupationMapper;

    @Override
    public List<Occupation> occupationList() {
        return occupationMapper.occupationList();
    }
}
