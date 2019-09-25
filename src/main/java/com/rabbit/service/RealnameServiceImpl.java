package com.rabbit.service;

import com.rabbit.dao.RealnameMapper;
import com.rabbit.pojo.Imgcon;
import com.rabbit.pojo.Realname;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class RealnameServiceImpl implements RealnameService {
    @Resource
    private RealnameMapper realnameMapper;

    //插入实名认证
    @Override
    public Integer addRealname(Realname realname) {
        System.out.println("道了这个方法  //插入实名认证");
       return  realnameMapper.addRealname(realname);
    }
    //插入照片
    @Override
    public Integer addImgcon(Imgcon imgcon) {
        return realnameMapper.addImgcon(imgcon);

    }

    @Override
    public Imgcon gety(int imgUserId) {
        System.out.println("道了这个方法 //查看证件照片");
        System.out.println("有值"+imgUserId);
        return realnameMapper.gety(imgUserId);
    }

    @Override
    public Imgcon getr(int imgUserId) {
        System.out.println("道了这个方法 //专业照");
        System.out.println("有值"+imgUserId);
        return realnameMapper.getr(imgUserId);
    }

    @Override
    public Realname slectRelanme(Integer ruserId) {
        return realnameMapper.slectRelanme(ruserId);
    }

}
