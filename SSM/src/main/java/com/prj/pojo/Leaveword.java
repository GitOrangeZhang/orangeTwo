package com.prj.pojo;

import java.io.Serializable;

public class Leaveword implements Serializable {

	/**
	 * ¡Ù—‘ µÃÂ¿‡
	 */
	private static final long serialVersionUID = 7022328732360733201L;
	private Integer leaveWordId;
	private String leaveWordMessage;
	private String leaveWordTimeString;
	private Users user;
	private Integer userId;
	public Leaveword() {
		super();
	}
	public Leaveword(Integer leaveWordId, String leaveWordMessage,
			String leaveWordTimeString, Users user, Integer userId) {
		super();
		this.leaveWordId = leaveWordId;
		this.leaveWordMessage = leaveWordMessage;
		this.leaveWordTimeString = leaveWordTimeString;
		this.user = user;
		this.userId = userId;
	}
	public Integer getLeaveWordId() {
		return leaveWordId;
	}
	public void setLeaveWordId(Integer leaveWordId) {
		this.leaveWordId = leaveWordId;
	}
	public String getLeaveWordMessage() {
		return leaveWordMessage;
	}
	public void setLeaveWordMessage(String leaveWordMessage) {
		this.leaveWordMessage = leaveWordMessage;
	}
	public String getLeaveWordTimeString() {
		return leaveWordTimeString;
	}
	public void setLeaveWordTimeString(String leaveWordTimeString) {
		this.leaveWordTimeString = leaveWordTimeString;
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
}
