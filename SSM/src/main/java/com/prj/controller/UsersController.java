package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.pojo.Users;
import com.prj.service.IUsersService;

@Controller
public class UsersController {
	@Resource
	private IUsersService usersService;
	private Users user;

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	@RequestMapping("/findAll_user")
	public String findAll(HttpServletRequest request){
		List<Users> users = usersService.findAll();
		request.getSession().setAttribute("users", users);
		return "userslist";
	}
	@RequestMapping("/findbyiduser")
	public String findbyid(int id,HttpServletRequest request){
		Users user = usersService.findById(id);
		request.getSession().setAttribute("user", user);
		return "user_update";
	}
	@RequestMapping("/deluser")
	public String del(int id){
		usersService.del(id);
		return "redirect:findAll_user";
	}
}
