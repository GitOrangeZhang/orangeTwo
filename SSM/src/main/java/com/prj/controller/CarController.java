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

import com.prj.pojo.Car;
import com.prj.pojo.CarBrand;
import com.prj.pojo.CarType;
import com.prj.service.ICarBrandService;
import com.prj.service.ICarService;
import com.prj.service.ICarTypeService;

@Controller
public class CarController {
	@Resource
	private ICarService carService;
	@Resource
	private ICarBrandService carBrandService;
	@Resource
	private ICarTypeService carTypeService;
	private Car car;

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	@RequestMapping("/findAll")
	// ��ѯ���г�����Ϣ
	public String findAll(HttpServletRequest request) {
		List<Car> cars = carService.findAll();
		request.getSession().setAttribute("cars", cars);
		return "carlist";
	}

	@RequestMapping("/addPrepare")
	// ����׼������
	public String addPrepare(Car car, HttpServletRequest request) {
		// 1.Ϊ�����б�׼������
		List<CarBrand> carBrands = carBrandService.findAll();
		List<CarType> carTypes = carTypeService.findAll();
		HttpSession session = request.getSession();
		session.setAttribute("carBrands", carBrands);
		session.setAttribute("carTypes", carTypes);
		return "car_add";
	}

	@RequestMapping("/add_car")
	public String add(Car car, HttpServletRequest request) {
		// 1.��ȡ�ļ�
		MultipartFile picFile = car.getPic();
		// 2.��ȡ�ļ���
		String picName = picFile.getOriginalFilename();
		// 3.�ϴ�ͼƬ
		String path = request.getSession().getServletContext()
				.getRealPath("images/brand");
		String pname = "\\" + picFile.getOriginalFilename();
		path += pname;
		try {
			FileUtils.copyInputStreamToFile(picFile.getInputStream(), new File(
					path));
		} catch (IOException e) {
			e.printStackTrace();
		}
		car.setCarPic(picName);
		carService.save(car);
		return "redirect:findAll";
	}

	@RequestMapping("/del_car")
	public String del(int id) {
		carService.delete(id);
		return "redirect:findAll";
	}

	@RequestMapping("/findById_car")
	public String findById(int id, HttpServletRequest request) {
		// 1.Ϊ�����б�׼������
		List<CarBrand> carBrands = carBrandService.findAll();
		List<CarType> carTypes = carTypeService.findAll();
		HttpSession session = request.getSession();
		session.setAttribute("carBrands", carBrands);
		session.setAttribute("carTypes", carTypes);
		//����������ҳ�洫��ID���car����
		Car car = carService.findById(id);
		//��ȡcar�����ͼƬ��ת����·��������ɾ��������ͼƬ������ɾ��ͼƬ��Ϊ�����޸�ҳ��׼����
		String oldPic = request.getSession().getServletContext()
		.getRealPath("images/brand")+"\\"+car.getCarPic();
		session.setAttribute("oldPic", oldPic);
		session.setAttribute("car", car);
		return "car_update";
	}

	@RequestMapping("/update_car")
	public String update(Car car, HttpServletRequest request) {
		//��ȡsession
		HttpSession session = request.getSession();
		//�Ȼ�ȡfindbyid�����д���session�ľ�ͼƬ·����Ȼ�������ɾ���������ϴ�ͼƬ����ִ���޸ķ�����
		String oldPic = (String) session.getAttribute("oldPic");
		FileUtils.deleteQuietly(new File(oldPic));
		// 1.��ȡ�ļ�
		MultipartFile picFile = car.getPic();
		// 2.��ȡ�ļ���
		String picName = picFile.getOriginalFilename();
		// 3.�ϴ�ͼƬ
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
		car.setCarPic(picName);
		carService.update(car);
		return "redirect:findAll";
	}
	@RequestMapping("/findtodetails")
	public String findtodetails(int id, HttpServletRequest request){
		Car car = carService.findById(id);
		request.setAttribute("car", car);
		return "car_details";
	}
}
