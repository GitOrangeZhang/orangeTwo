package com.prj.pojo;

import java.io.Serializable;
import java.util.List;
/**
 * 车辆类型实体类
 * @author Administrator
 *
 */
public class CarType implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1630426215916676883L;
	private Integer cartypeId;//类型ID
	private String cartypeName;//类型名称
	private List<Car> cars;//类型下所有车辆集合
	public CarType() {
		super();
	}
	public CarType(Integer cartypeId, String cartypeName, List<Car> cars) {
		super();
		this.cartypeId = cartypeId;
		this.cartypeName = cartypeName;
		this.cars = cars;
	}
	public Integer getCartypeId() {
		return cartypeId;
	}
	public void setCartypeId(Integer cartypeId) {
		this.cartypeId = cartypeId;
	}
	public String getCartypeName() {
		return cartypeName;
	}
	public void setCartypeName(String cartypeName) {
		this.cartypeName = cartypeName;
	}
	public List<Car> getCars() {
		return cars;
	}
	public void setCars(List<Car> cars) {
		this.cars = cars;
	}
	
}
