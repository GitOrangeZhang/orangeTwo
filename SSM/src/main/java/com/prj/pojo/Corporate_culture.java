package com.prj.pojo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Corporate_culture implements Serializable {

	/**
	 * 企业文化实体类
	 */
	private static final long serialVersionUID = 3635012672026090566L;
	private Integer ccId;// 企业文化ID
	private String corporationName;// 企业名称
	private String corporationOverview;// 企业简介
	private String brandHistory;// 企业历史
	private String brandPromise;// 品牌承诺
	private String corporationPic;// 企业logo
	private MultipartFile picFile;// 图片文件接收对象

	public Corporate_culture() {
		super();
	}

	public Corporate_culture(Integer ccId, String corporationName,
			String corporationOverview, String brandHistory,
			String brandPromise, String corporationPic, MultipartFile picFile) {
		super();
		this.ccId = ccId;
		this.corporationName = corporationName;
		this.corporationOverview = corporationOverview;
		this.brandHistory = brandHistory;
		this.brandPromise = brandPromise;
		this.corporationPic = corporationPic;
		this.picFile = picFile;
	}

	public Integer getCcId() {
		return ccId;
	}

	public void setCcId(Integer ccId) {
		this.ccId = ccId;
	}

	public String getCorporationName() {
		return corporationName;
	}

	public void setCorporationName(String corporationName) {
		this.corporationName = corporationName;
	}

	public String getCorporationOverview() {
		return corporationOverview;
	}

	public void setCorporationOverview(String corporationOverview) {
		this.corporationOverview = corporationOverview;
	}

	public String getBrandHistory() {
		return brandHistory;
	}

	public void setBrandHistory(String brandHistory) {
		this.brandHistory = brandHistory;
	}

	public String getBrandPromise() {
		return brandPromise;
	}

	public void setBrandPromise(String brandPromise) {
		this.brandPromise = brandPromise;
	}

	public String getCorporationPic() {
		return corporationPic;
	}

	public void setCorporationPic(String corporationPic) {
		this.corporationPic = corporationPic;
	}

	public MultipartFile getPicFile() {
		return picFile;
	}

	public void setPicFile(MultipartFile picFile) {
		this.picFile = picFile;
	}
}
