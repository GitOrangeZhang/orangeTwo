package com.prj.pojo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/**
 * 车辆品牌实体类
 * 
 * @author Administrator
 * 
 */
public class CarBrand implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 777152202504324799L;

	private Integer carbrandId;// 品牌ID
	private String carbrandName;// 品牌名
	private String carbrandInitiator;// 品牌创始人
	private String initiatorTime;// 品牌创世时间
	private MultipartFile picFile;//接收上传的图片
	private String carbrandPic;// 品牌图片
	private List<Car> cars;//品牌下的车辆集合
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
