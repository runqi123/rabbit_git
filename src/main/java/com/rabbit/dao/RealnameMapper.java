package com.rabbit.dao;

import com.rabbit.pojo.Imgcon;
import com.rabbit.pojo.Realname;
import org.apache.ibatis.annotations.Param;

public interface RealnameMapper {
    //插入实名认证
    public Integer addRealname(Realname realname);
    //插入照片
    public Integer addImgcon(Imgcon imgcon);
    //产看身份证
    public Imgcon gety(Integer imgUserId);
    //查看你证件照
    public Imgcon getr(Integer imgUserId);
    //查看实名信息
    public Realname slectRelanme(Integer ruserId);
}
