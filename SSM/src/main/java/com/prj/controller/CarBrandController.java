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

import com.prj.pojo.CarBrand;
import com.prj.service.ICarBrandService;

@Controller
public class CarBrandController {
	@Resource
	private ICarBrandService brandService;
	private CarBrand carBrand;
	public CarBrand getCarBrand() {
		return carBrand;
	}
	public void setCarBrand(CarBrand carBrand) {
		this.carBrand = carBrand;
	}
	
	@RequestMapping("/findAll_carBrand")
	public String findAll(HttpServletRequest request){
		List<CarBrand> carBrands = brandService.findAll();
		HttpSession session = request.getSession();
		session.setAttribute("carBrands", carBrands);
		return "carbrandlist";
	}
	@RequestMapping("/del_carBrand")//末尾删除超链接删除
	public String del(int id){
		brandService.del(id);
		return "redirect:findAll_carBrand";
	}
	@RequestMapping("/add_carBrand")
	public String add(CarBrand carBrand,HttpServletRequest request){
		// 1.获取文件
		MultipartFile picFile = carBrand.getPicFile();
		// 2.获取文件名
		String picName = picFile.getOriginalFilename();
		//3.上传图片
		String path = request.getSession().getServletContext().getRealPath("images/brand");
		String pname = "\\" + picFile.getOriginalFilename();
		path += pname;
		try {
			FileUtils.copyInputStreamToFile(picFile.getInputStream(),
					new File(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
		carBrand.setCarbrandPic(picName);
		brandService.save(carBrand);
		return "redirect:findAll_carBrand";
	}
	@RequestMapping("/delcarbrand")//复选删除
	public String delmany(String delid){
		String[] delId = delid.split(",");
		for (String id : delId) {
			brandService.del(Integer.parseInt(id));
		}
		return "redirect:findAll_carBrand";
	}
	
	
}
