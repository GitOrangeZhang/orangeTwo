package com.prj.pojo;

import java.io.Serializable;

public class Recruit implements Serializable {

	/**
	 * ’–∆∏ µÃÂ¿‡
	 */
	private static final long serialVersionUID = 8341148990737955972L;
	private Integer recruitId;
	private String position;
	private String requirement;
	private String recruitState;
	private String salary;
	public Recruit() {
		super();
	}
	public Recruit(Integer recruitId, String position, String requirement,
			String recruitState, String salary) {
		super();
		this.recruitId = recruitId;
		this.position = position;
		this.requirement = requirement;
		this.recruitState = recruitState;
		this.salary = salary;
	}
	public Integer getRecruitId() {
		return recruitId;
	}
	public void setRecruitId(Integer recruitId) {
		this.recruitId = recruitId;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	public String getRecruitState() {
		return recruitState;
	}
	public void setRecruitState(String recruitState) {
		this.recruitState = recruitState;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	
}
