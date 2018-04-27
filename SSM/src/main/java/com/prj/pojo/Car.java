package com.prj.pojo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;
/**
 * ����ʵ����
 * @author Administrator
 *
 */
public class Car implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 175195214993860889L;
	
	private Integer carId;//����ID
	private Integer carbrandId;//Ʒ��ID
	private CarBrand carBrand;//����Ʒ��
	private Integer cartypeId;//����ID
	private CarType carType;//��������
	private Integer carPrice;//�����ۼ�
	private String carMarketTime;//����ʱ��
	private String carSynopsis;//�������
	private String carPic;//ͼƬ����
	private String carVersion;//�����ͺ�
	private String otherMessage;//������Ϣ����ʻ��̵ȵȣ�
	private MultipartFile pic;//���ճ�����Ƭ�ϴ�
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
