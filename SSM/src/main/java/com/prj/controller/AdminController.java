package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.pojo.Administrators;
import com.prj.service.IAdminService;

@Controller
public class AdminController {
	@Resource
	private IAdminService adminService;
	private Administrators admin;
	public Administrators getAdmin() {
		return admin;
	}
	public void setAdmin(Administrators admin) {
		this.admin = admin;
	}
	@RequestMapping("/findAll_admin")
	public String findAll(HttpServletRequest request){
		List<Administrators> admins = adminService.findAll();
		request.getSession().setAttribute("admins", admins);
		return "adminlist";
	}
	@RequestMapping("/add_admin")
	public String add(Administrators admin){
		adminService.save(admin);
		return "redirect:findAll_admin";
	}
	@RequestMapping("/del_admin")
	public String del(int id){
		adminService.del(id);
		return "redirect:findAll_admin";
	}
	@RequestMapping("/deladmin")
	public String deladmin(String delid){
		String[] delId = delid.split(",");
		for (String id : delId) {
			adminService.del(Integer.parseInt(id));
		}
		return "redirect:findAll_admin";
	}
	@RequestMapping("/checkadmin")
	public String check(Administrators admin,HttpServletRequest request,HttpServletResponse response){
		Administrators adm = adminService.check(admin);
		if (adm==null) {
			return "login1";
		}
		request.getSession().setAttribute("adm", adm);
		return "main";
	}
	@RequestMapping("/findById_adm")
	public String findById(int id,HttpServletRequest request){
		Administrators admin = adminService.findById(id);
		if (admin==null) {
			return "error";
		}
		request.getSession().setAttribute("adm", admin);
		return "adm";
	}
}
