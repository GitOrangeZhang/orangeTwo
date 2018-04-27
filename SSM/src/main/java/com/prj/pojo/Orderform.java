package com.prj.pojo;

import java.io.Serializable;

public class Orderform implements Serializable {

	/**
	 * ����ʵ����
	 */
	private static final long serialVersionUID = 6983521739434401831L;
	private Integer orderFormId;//����ID
	private String orderFormName;//��������
	private Users user;//�����û�
	private Integer deposit;//�������
	private String orderFormMessage;//������Ϣ
	private String orderFormTime;//�µ�ʱ��
	public Orderform() {
		super();
	}
	public Orderform(Integer orderFormId, String orderFormName, Users user,
			Integer deposit, String orderFormMessage, String orderFormTime) {
		super();
		this.orderFormId = orderFormId;
		this.orderFormName = orderFormName;
		this.user = user;
		this.deposit = deposit;
		this.orderFormMessage = orderFormMessage;
		this.orderFormTime = orderFormTime;
	}
	public Integer getOrderFormId() {
		return orderFormId;
	}
	public void setOrderFormId(Integer orderFormId) {
		this.orderFormId = orderFormId;
	}
	public String getOrderFormName() {
		return orderFormName;
	}
	public void setOrderFormName(String orderFormName) {
		this.orderFormName = orderFormName;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Integer getDeposit() {
		return deposit;
	}
	public void setDeposit(Integer deposit) {
		this.deposit = deposit;
	}
	public String getOrderFormMessage() {
		return orderFormMessage;
	}
	public void setOrderFormMessage(String orderFormMessage) {
		this.orderFormMessage = orderFormMessage;
	}
	public String getOrderFormTime() {
		return orderFormTime;
	}
	public void setOrderFormTime(String orderFormTime) {
		this.orderFormTime = orderFormTime;
	}
}
