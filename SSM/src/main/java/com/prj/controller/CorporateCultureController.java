package com.prj.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.prj.pojo.Corporate_culture;
import com.prj.service.ICorporateCultureService;

@Controller
public class CorporateCultureController {
	@Resource
	private ICorporateCultureService ccService;
	private Corporate_culture cc;
	public Corporate_culture getCc() {
		return cc;
	}
	public void setCc(Corporate_culture cc) {
		this.cc = cc;
	}
	@RequestMapping("/findAll_cc")
	public String findAll(HttpServletRequest request){
		Corporate_culture cc = ccService.findAll();
		if (cc == null) {
			return "error";
		}
		//企业简介截取10个长度，其余用...显示，在存入cc对象中
		String ccov = cc.getCorporationOverview().substring(0, 10)+"......";
		cc.setCorporationOverview(ccov);
		//企业历史截取10个长度，其余用...显示，在存入cc对象中
		String ccbh = cc.getBrandHistory().substring(0, 10)+"......";
		cc.setBrandHistory(ccbh);
		//品牌承诺截取10个长度，其余用...显示，在存入cc对象中
		String ccbp = cc.getBrandPromise().substring(0, 10)+"......";
		cc.setBrandPromise(ccbp);
		request.getSession().setAttribute("cc", cc);
		return "right";
	}
	@RequestMapping("/findById_cc")
	public String findById(HttpServletRequest request){
		Corporate_culture cc1 = ccService.findAll();
		if (cc1 == null) {
			return "error";
		}
		request.getSession().setAttribute("cc1", cc1);
		return "cc_details";
	}
	@RequestMapping("/tuupdatecc")
	public String tuupdatecc(HttpServletRequest request){
		Corporate_culture cc2 = ccService.findAll();
		if (cc2 == null) {
			return "error";
		}
		request.getSession().setAttribute("cc2", cc2);
		return "cc_update";
	}
	@RequestMapping("/update_cc")
	public String update(Corporate_culture cc,HttpServletRequest request){
		HttpSession session = request.getSession();
		//获取car对象的图片，转换成路径，调用删除服务器图片方法，删除图片，为后面修改页面准备。
		String oldPic = session.getServletContext()
		.getRealPath("images/brand")+"\\"+cc.getCorporationPic();
		FileUtils.deleteQuietly(new File(oldPic));
		// 1.获取文件
		MultipartFile picFile = cc.getPicFile();
		// 2.获取文件名
		String picName = picFile.getOriginalFilename();
		// 3.上传图片
		String path = session.getServletContext()
				.getRealPath("images/brand");
		String pname = "\\" + picFile.getOriginalFilename();
		path += pname;
		try {
			FileUtils.copyInputStreamToFile(picFile.getInputStream(), new File(
					path));
		} catch (IOException e) {
			e.printStackTrace();
		}
		cc.setCorporationPic(picName);
		ccService.update(cc);
		return "redirect:findAll_cc";
	}
}
