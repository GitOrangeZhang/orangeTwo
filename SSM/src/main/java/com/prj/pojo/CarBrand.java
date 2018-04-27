package com.prj.pojo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/**
 * ����Ʒ��ʵ����
 * 
 * @author Administrator
 * 
 */
public class CarBrand implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 777152202504324799L;

	private Integer carbrandId;// Ʒ��ID
	private String carbrandName;// Ʒ����
	private String carbrandInitiator;// Ʒ�ƴ�ʼ��
	private String initiatorTime;// Ʒ�ƴ���ʱ��
	private MultipartFile picFile;//�����ϴ���ͼƬ
	private String carbrandPic;// Ʒ��ͼƬ
	private List<Car> cars;//Ʒ���µĳ�������
	public CarBrand() {
		super();
	}
	public CarBrand(Integer carbrandId, String carbrandName,
			String carbrandInitiator, String initiatorTime,
			MultipartFile picFile, String carbrandPic, List<Car> cars) {
		super();
		this.carbrandId = carbrandId;
		this.carbrandName = carbrandName;
		this.carbrandInitiator = carbrandInitiator;
		this.initiatorTime = initiatorTime;
		this.picFile = picFile;
		this.carbrandPic = carbrandPic;
		this.cars = cars;
	}
	public Integer getCarbrandId() {
		return carbrandId;
	}
	public void setCarbrandId(Integer carbrandId) {
		this.carbrandId = carbrandId;
	}
	public String getCarbrandName() {
		return carbrandName;
	}
	public void setCarbrandName(String carbrandName) {
		this.carbrandName = carbrandName;
	}
	public String getCarbrandInitiator() {
		return carbrandInitiator;
	}
	public void setCarbrandInitiator(String carbrandInitiator) {
		this.carbrandInitiator = carbrandInitiator;
	}
	public String getInitiatorTime() {
		return initiatorTime;
	}
	public void setInitiatorTime(String initiatorTime) {
		this.initiatorTime = initiatorTime;
	}
	public MultipartFile getPicFile() {
		return picFile;
	}
	public void setPicFile(MultipartFile picFile) {
		this.picFile = picFile;
	}
	public String getCarbrandPic() {
		return carbrandPic;
	}
	public void setCarbrandPic(String carbrandPic) {
		this.carbrandPic = carbrandPic;
	}
	public List<Car> getCars() {
		return cars;
	}
	public void setCars(List<Car> cars) {
		this.cars = cars;
	}

	
	

}
