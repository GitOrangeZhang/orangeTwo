package com.prj.pojo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Corporate_culture implements Serializable {

	/**
	 * ��ҵ�Ļ�ʵ����
	 */
	private static final long serialVersionUID = 3635012672026090566L;
	private Integer ccId;// ��ҵ�Ļ�ID
	private String corporationName;// ��ҵ����
	private String corporationOverview;// ��ҵ���
	private String brandHistory;// ��ҵ��ʷ
	private String brandPromise;// Ʒ�Ƴ�ŵ
	private String corporationPic;// ��ҵlogo
	private MultipartFile picFile;// ͼƬ�ļ����ն���

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
