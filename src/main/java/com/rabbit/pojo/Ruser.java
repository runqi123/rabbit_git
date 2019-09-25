package com.rabbit.pojo;
/**
 * 用户表
 * @author runqi
 *
 */
public class Ruser {

	private int ruserId;//int(11)用户Id
	private String emailUser;//varchar(50)用户邮箱
	private String uname;//varchar(50)用户名
	private int balance;//int(11)余额
	private int ruserState;//int(11)账号状态0正常1封禁
	private int ruserCredit;//信用#默认85
	private String pass;//密码
	private int img_Id;


	private int isrname;
	//<------------------------构造方法分割线-------------------------->

	public int getImg_Id() {
		return img_Id;
	}

	public void setImg_Id(int img_Id) {
		this.img_Id = img_Id;
	}

	public int getIsrname() {
		return isrname;
	}

	public void setIsrname(int isrname) {
		this.isrname = isrname;
	}
	public int getRuserId() {
		return ruserId;
	}
	public void setRuserId(int ruserId) {
		this.ruserId = ruserId;
	}
	public String getEmailUser() {
		return emailUser;
	}
	public void setEmailUser(String emailUser) {
		this.emailUser = emailUser;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public int getRuserState() {
		return ruserState;
	}

	public void setRuserState(int ruserState) {
		this.ruserState = ruserState;
	}

	public int getRuserCredit() {
		return ruserCredit;
	}

	public void setRuserCredit(int ruserCredit) {
		this.ruserCredit = ruserCredit;
	}

	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

	
}
