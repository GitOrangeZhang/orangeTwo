package com.prj.pojo;

import java.io.Serializable;

public class Administrators implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1441724508697366453L;
	private Integer adminId;//管理员ID
	private String adminName;//管理员姓名
	private String adminPassword;//管理员密码
	private String adminGender;//管理员性别
	private String adminTel;//管理员电话
	private Integer adminGrade; //管理员权限代号
	public Administrators() {
		super();
	}
	public Administrators(Integer adminId, String adminName,
			String adminPassword, String adminGender, String adminTel,
			Integer adminGrade) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.adminGender = adminGender;
		this.adminTel = adminTel;
		this.adminGrade = adminGrade;
	}
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public String getAdminGender() {
		return adminGender;
	}
	public void setAdminGender(String adminGender) {
		this.adminGender = adminGender;
	}
	public String getAdminTel() {
		return adminTel;
	}
	public void setAdminTel(String adminTel) {
		this.adminTel = adminTel;
	}
	public Integer getAdminGrade() {
		return adminGrade;
	}
	public void setAdminGrade(Integer adminGrade) {
		this.adminGrade = adminGrade;
	}
	
}
