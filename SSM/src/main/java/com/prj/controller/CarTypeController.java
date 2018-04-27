package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.pojo.CarType;
import com.prj.service.ICarTypeService;

@Controller
public class CarTypeController {
	@Resource
	private ICarTypeService carTypeService;
	private CarType carType;
	public CarType getCarType() {
		return carType;
	}
	public void setCarType(CarType carType) {
		this.carType = carType;
	}
	@RequestMapping("/findAll_carType")
	public String findAll(HttpServletRequest request){
		List<CarType> carTypes = carTypeService.findAll();
		HttpSession session = request.getSession();
		session.setAttribute("carTypes", carTypes);
		session.setAttribute("ctSize", carTypes.size());
		return "cartypelist";
	}
	@RequestMapping("/del_carType")
	public String del(int id){
		carTypeService.delete(id);
		return "redirect:findAll_carType";
	}
	@RequestMapping("/add_carType")
	public String add(CarType carType){
		carTypeService.save(carType);
		return "redirect:findAll_carType";
	}
	@RequestMapping("")
	public String update(){
		
		return "";
	}
	@RequestMapping("/delcartype")
	public String delmany(String delid){
		String[] delId = delid.split(",");
		for (String id : delId) {
			carTypeService.delete(Integer.parseInt(id));
		}
		return "redirect:findAll_carType";
	}
}
