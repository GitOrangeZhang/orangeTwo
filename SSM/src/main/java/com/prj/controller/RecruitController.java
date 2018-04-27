package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.pojo.Recruit;
import com.prj.service.IRecruitService;

@Controller
public class RecruitController {
	@Resource
	private IRecruitService recruitService;
	private Recruit recruit;
	public Recruit getRecruit() {
		return recruit;
	}
	public void setRecruit(Recruit recruit) {
		this.recruit = recruit;
	}
	@RequestMapping("/findAll_recruit")
	public String findAll(HttpServletRequest request){
		List<Recruit> recruits = recruitService.findAll();
		request.getSession().setAttribute("recruits", recruits);
		return "recruitlist";
	}
	@RequestMapping("/findById_rec")
	public String findById(int id,HttpServletRequest request){
		Recruit recruit = recruitService.findById(id);
		request.getSession().setAttribute("recruit", recruit);
		return "recruit_details";
	}
	@RequestMapping("/delById_rec")
	public String delById_rec(int id){
		recruitService.del(id);
		return "redirect:findAll_recruit";
	}
	@RequestMapping("/toupdaterec")
	public String toupdaterec(int id,HttpServletRequest request){
		Recruit recruit = recruitService.findById(id);
		request.getSession().setAttribute("recruit", recruit);
		return "recruit_update";
	}
	@RequestMapping("/update_rec")
	public String update(Recruit recruit){
		recruitService.update(recruit);
		return "redirect:findAll_recruit";
	}
}
