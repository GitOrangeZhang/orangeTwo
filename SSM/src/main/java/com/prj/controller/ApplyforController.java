package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.pojo.Applyfor;
import com.prj.service.IApplyforService;

@Controller
public class ApplyforController {
	@Resource
	private IApplyforService applyforService;
	private Applyfor applyfor;
	public Applyfor getApplyfor() {
		return applyfor;
	}
	public void setApplyfor(Applyfor applyfor) {
		this.applyfor = applyfor;
	}
	@RequestMapping("/findAll_applyfor")
	public String findAll(HttpServletRequest request){
		List<Applyfor> applyfors = applyforService.findAll();
		request.getSession().setAttribute("applyfors", applyfors);
		return "applyforlist";
	}
	@RequestMapping("/findById_af")
	public String findById_af(int id,HttpServletRequest request){
		Applyfor applyfor = applyforService.findById(id);
		request.getSession().setAttribute("applyfor", applyfor);
		return "applyfor_details";
	}
	@RequestMapping("/delById_af")
	public String delById(int id){
		applyforService.del(id);
		return "redirect:findAll_applyfor";
	}
}
