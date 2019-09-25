package com.rabbit.service;


import com.rabbit.pojo.Ruser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
	//登录
    public Ruser login(String uname, String pass);
	//注册用户
	public Integer register(Ruser Ruser);
	//充值
	public Integer chongzhi(Integer balance,Integer ruserId);
	//查询单个对象（ps:可用于更新session作用域）
	public Ruser upRuser(@Param("rUserId")Integer rUserId);

    public int shiming(Integer userId);
}
