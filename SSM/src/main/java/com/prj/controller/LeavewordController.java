package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.pojo.Leaveword;
import com.prj.service.ILeavewordService;

@Controller
public class LeavewordController {
	@Resource
	private ILeavewordService leavewordService;
	private Leaveword lw;

	public Leaveword getLw() {
		return lw;
	}

	public void setLw(Leaveword lw) {
		this.lw = lw;
	}

	// 查询所有用户留言
	@RequestMapping("/findAll_lw")
	public String findAll(HttpServletRequest request) {
		List<Leaveword> lsstlea = leavewordService.findAll();
		HttpSession session = request.getSession();
		session.setAttribute("leavewords", lsstlea);
		return "Leaverword_list";
	}

	// 新增一条留言
	@RequestMapping("/savelea")
	public String save(Leaveword lea) {
		leavewordService.save(lea);
		return "";
	}
	// 删除留言

	// 修改留言

	// 根据id查询留言
}
