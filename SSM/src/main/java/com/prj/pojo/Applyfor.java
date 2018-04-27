package com.prj.pojo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Applyfor implements Serializable {

	/**
	 * 应聘实体类
	 */
	private static final long serialVersionUID = 2792196735599362863L;
	private Integer applyForId;//应聘ID
	private Recruit recruit;//招聘对象
	private Integer recruitId;//招聘对象ID
	private Users user;//应聘者
	private Integer userId;//应聘者ID
	private String userRealName;//应聘者真实姓名
	private String birthday;//应聘者生日
	private String userPic;//应聘者头像
	private MultipartFile pic;//接收用户头像
	private String userAdress;//应聘者的地址
	private String userQualification;//应聘者的学历
	private String userIDCardNumber;//应聘者身份证号码
	private String workExperience;//应聘者的工作经验
	private String selfEvaluation;//应聘者自我评价
	public Applyfor() {
		super();
	}
	public Applyfor(Integer applyForId, Recruit recruit, Integer recruitId,
			Users user, Integer userId, String userRealName, String birthday,
			String userPic, MultipartFile pic, String userAdress,
			String userQualification, String userIDCardNumber,
			String workExperience, String selfEvaluation) {
		super();
		this.applyForId = applyForId;
		this.recruit = recruit;
		this.recruitId = recruitId;
		this.user = user;
		this.userId = userId;
		this.userRealName = userRealName;
		this.birthday = birthday;
		this.userPic = userPic;
		this.pic = pic;
		this.userAdress = userAdress;
		this.userQualification = userQualification;
		this.userIDCardNumber = userIDCardNumber;
		this.workExperience = workExperience;
		this.selfEvaluation = selfEvaluation;
	}
	public Integer getApplyForId() {
		return applyForId;
	}
	public void setApplyForId(Integer applyForId) {
		this.applyForId = applyForId;
	}
	public Recruit getRecruit() {
		return recruit;
	}
	public void setRecruit(Recruit recruit) {
		this.recruit = recruit;
	}
	public Integer getRecruitId() {
		return recruitId;
	}
	public void setRecruitId(Integer recruitId) {
		this.recruitId = recruitId;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserRealName() {
		return userRealName;
	}
	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getUserPic() {
		return userPic;
	}
	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}
	public MultipartFile getPic() {
		return pic;
	}
	public void setPic(MultipartFile pic) {
		this.pic = pic;
	}
	public String getUserAdress() {
		return userAdress;
	}
	public void setUserAdress(String userAdress) {
		this.userAdress = userAdress;
	}
	public String getUserQualification() {
		return userQualification;
	}
	public void setUserQualification(String userQualification) {
		this.userQualification = userQualification;
	}
	public String getUserIDCardNumber() {
		return userIDCardNumber;
	}
	public void setUserIDCardNumber(String userIDCardNumber) {
		this.userIDCardNumber = userIDCardNumber;
	}
	public String getWorkExperience() {
		return workExperience;
	}
	public void setWorkExperience(String workExperience) {
		this.workExperience = workExperience;
	}
	public String getSelfEvaluation() {
		return selfEvaluation;
	}
	public void setSelfEvaluation(String selfEvaluation) {
		this.selfEvaluation = selfEvaluation;
	}
	
}
