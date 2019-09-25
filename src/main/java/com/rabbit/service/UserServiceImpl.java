package com.rabbit.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rabbit.dao.UserMapper;
import com.rabbit.pojo.Ruser;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userDao;
	/**
	 * 登录
	 */
	@Override
	public Ruser login(String uname ,String pass) {
		Ruser ruserLogin=userDao.login(uname, pass);
		if(ruserLogin!=null){
			if(ruserLogin.getPass().equals(pass)){
				return ruserLogin;
			}
		}
		return null;
	}

	@Override
	public Integer register(Ruser user) {
		System.out.println(user.getEmailUser()+"service");

		return userDao.register(user);
	}
	@Override
	public Integer chongzhi(Integer balance, Integer ruserId) {
		Integer count=userDao.chongzhi(balance,ruserId);
		return count;
	}

	@Override
	public Ruser upRuser(Integer rUserId) {
		return userDao.upRuser(rUserId);
	}

	@Override
	public int shiming(Integer userId) {
		return userDao.shiming(userId);
	}


}
