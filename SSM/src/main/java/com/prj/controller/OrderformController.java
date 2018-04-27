package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.pojo.Orderform;
import com.prj.service.IOrderformService;

@Controller
public class OrderformController {
	@Resource
	private IOrderformService orderformService;
	
	private Orderform of;

	public Orderform getOf() {
		return of;
	}

	public void setOf(Orderform of) {
		this.of = of;
	}
	@RequestMapping("/findAll_orderform")
	public String findAll(HttpServletRequest request){
		List<Orderform> orderforms = orderformService.findAll();
		request.getSession().setAttribute("orderforms", orderforms);
		return "orderform_list";
	}
	@RequestMapping("/seach_of")
	public String seach(String ofname){
		
		return "";
	}
}
