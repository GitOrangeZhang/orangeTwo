package com.prj.pojo;

import java.io.Serializable;
import java.util.List;

public class Users implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 270660187105867008L;
	private Integer userId;
	private String userName;
	private String userPassword;
	private String userGender;
	private String userTel;
	private List<Leaveword> leavewords;
	private List<Orderform> orderforms;
	public Users() {
		super();
	}
	public Users(Integer userId, String userName, String userPassword,
			String userGender, String userTel, List<Leaveword> leavewords,
			List<Orderform> orderforms) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userGender = userGender;
		this.userTel = userTel;
		this.leavewords = leavewords;
		this.orderforms = orderforms;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public List<Leaveword> getLeavewords() {
		return leavewords;
	}
	public void setLeavewords(List<Leaveword> leavewords) {
		this.leavewords = leavewords;
	}
	public List<Orderform> getOrderforms() {
		return orderforms;
	}
	public void setOrderforms(List<Orderform> orderforms) {
		this.orderforms = orderforms;
	}
}
