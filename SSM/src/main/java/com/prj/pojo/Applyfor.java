package com.prj.pojo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Applyfor implements Serializable {

	/**
	 * ӦƸʵ����
	 */
	private static final long serialVersionUID = 2792196735599362863L;
	private Integer applyForId;//ӦƸID
	private Recruit recruit;//��Ƹ����
	private Integer recruitId;//��Ƹ����ID
	private Users user;//ӦƸ��
	private Integer userId;//ӦƸ��ID
	private String userRealName;//ӦƸ����ʵ����
	private String birthday;//ӦƸ������
	private String userPic;//ӦƸ��ͷ��
	private MultipartFile pic;//�����û�ͷ��
	private String userAdress;//ӦƸ�ߵĵ�ַ
	private String userQualification;//ӦƸ�ߵ�ѧ��
	private String userIDCardNumber;//ӦƸ�����֤����
	private String workExperience;//ӦƸ�ߵĹ�������
	private String selfEvaluation;//ӦƸ����������
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
