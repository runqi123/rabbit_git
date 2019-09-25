package com.rabbit.dao;

import org.apache.ibatis.annotations.Param;

import com.rabbit.pojo.Ruser;

import java.util.List;

public interface UserMapper {
	//登录
	public Ruser login(@Param("uname") String uname, @Param("pass") String pass);
	//注册
	public Integer register(Ruser ruser);
	//充值
	public Integer chongzhi(@Param("balance")Integer balance, @Param("ruserId")Integer ruserId);

	//查询单个对象（ps:可用于更新session作用域）
	public Ruser upRuser(@Param("rUserId")Integer rUserId);

	//修改当前对象实名
	public int shiming(@Param("userId")Integer userId);
}
