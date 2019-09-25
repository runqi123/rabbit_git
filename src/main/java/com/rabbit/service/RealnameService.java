package com.rabbit.service;

import com.rabbit.pojo.Imgcon;
import com.rabbit.pojo.Realname;
import org.apache.ibatis.annotations.Param;

public interface RealnameService {
    //插入实名认证
    public Integer addRealname(@Param("realname") Realname realname);
    //插入照片
    public Integer addImgcon(@Param("imgcon") Imgcon imgcon);
    //产看身份证
    public Imgcon gety(@Param("imgUserId") int imgUserId);
    //查看你证件照
    public Imgcon getr(@Param("imgUserId") int imgUserId);
    //查看实名信息
    public Realname slectRelanme(Integer ruserId);
}
