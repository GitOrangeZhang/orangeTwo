package com.prj.pojo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;
/**
 * 车辆实体类
 * @author Administrator
 *
 */
public class Car implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 175195214993860889L;
	
	private Integer carId;//车辆ID
	private Integer carbrandId;//品牌ID
	private CarBrand carBrand;//车辆品牌
	private Integer cartypeId;//类型ID
	private CarType carType;//车辆类型
	private Integer carPrice;//车辆售价
	private String carMarketTime;//上牌时间
	private String carSynopsis;//车况简介
	private String carPic;//图片名称
	private String carVersion;//车辆型号
	private String otherMessage;//其他信息（行驶里程等等）
	private MultipartFile pic;//接收车辆照片上传
	public Car() {
		super();
	}
	public Car(Integer carId, Integer carbrandId, CarBrand carBrand,
			Integer cartypeId, CarType carType, Integer carPrice,
			String carMarketTime, String carSynopsis, String carPic,
			String carVersion, String otherMessage, MultipartFile pic) {
		super();
		this.carId = carId;
		this.carbrandId = carbrandId;
		this.carBrand = carBrand;
		this.cartypeId = cartypeId;
		this.carType = carType;
		this.carPrice = carPrice;
		this.carMarketTime = carMarketTime;
		this.carSynopsis = carSynopsis;
		this.carPic = carPic;
		this.carVersion = carVersion;
		this.otherMessage = otherMessage;
		this.pic = pic;
	}
	public Integer getCarId() {
		return carId;
	}
	public void setCarId(Integer carId) {
		this.carId = carId;
	}
	public Integer getCarbrandId() {
		return carbrandId;
	}
	public void setCarbrandId(Integer carbrandId) {
		this.carbrandId = carbrandId;
	}
	public CarBrand getCarBrand() {
		return carBrand;
	}
	public void setCarBrand(CarBrand carBrand) {
		this.carBrand = carBrand;
	}
	public Integer getCartypeId() {
		return cartypeId;
	}
	public void setCartypeId(Integer cartypeId) {
		this.cartypeId = cartypeId;
	}
	public CarType getCarType() {
		return carType;
	}
	public void setCarType(CarType carType) {
		this.carType = carType;
	}
	public Integer getCarPrice() {
		return carPrice;
	}
	public void setCarPrice(Integer carPrice) {
		this.carPrice = carPrice;
	}
	public String getCarMarketTime() {
		return carMarketTime;
	}
	public void setCarMarketTime(String carMarketTime) {
		this.carMarketTime = carMarketTime;
	}
	public String getCarSynopsis() {
		return carSynopsis;
	}
	public void setCarSynopsis(String carSynopsis) {
		this.carSynopsis = carSynopsis;
	}
	public String getCarPic() {
		return carPic;
	}
	public void setCarPic(String carPic) {
		this.carPic = carPic;
	}
	public String getCarVersion() {
		return carVersion;
	}
	public void setCarVersion(String carVersion) {
		this.carVersion = carVersion;
	}
	public String getOtherMessage() {
		return otherMessage;
	}
	public void setOtherMessage(String otherMessage) {
		this.otherMessage = otherMessage;
	}
	public MultipartFile getPic() {
		return pic;
	}
	public void setPic(MultipartFile pic) {
		this.pic = pic;
	}
	
	
	
}
