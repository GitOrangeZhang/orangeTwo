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

	// ��ѯ�����û�����
	@RequestMapping("/findAll_lw")
	public String findAll(HttpServletRequest request) {
		List<Leaveword> lsstlea = leavewordService.findAll();
		HttpSession session = request.getSession();
		session.setAttribute("leavewords", lsstlea);
		return "Leaverword_list";
	}

	// ����һ������
	@RequestMapping("/savelea")
	public String save(Leaveword lea) {
		leavewordService.save(lea);
		return "";
	}
	// ɾ������

	// �޸�����

	// ����id��ѯ����
}
