package com.rabbit.service;

import com.rabbit.dao.TypeMapper;
import com.rabbit.pojo.Type;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class TypeServiceImpl implements TypeService {

    @Resource
    private TypeMapper  typeMapper;

    @Override
    public List<Type> getType() {
        return typeMapper.getType();
    }

}
