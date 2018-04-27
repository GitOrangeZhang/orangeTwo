package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.CarBrandMapper;
import com.prj.pojo.CarBrand;
import com.prj.service.ICarBrandService;
@Service
public class CarBrandServiceImp implements ICarBrandService {
	@Resource
	private CarBrandMapper mapper;
	@Override
	public void save(CarBrand carBrand) {
		mapper.save(carBrand);
	}

	@Override
	public void del(int id) {
		mapper.del(id);
	}

	@Override
	public void update(CarBrand carBrand) {
		mapper.update(carBrand);
	}

	@Override
	public CarBrand findById(int id) {
		return mapper.findById(id);
	}

	@Override
	public List<CarBrand> findAll() {
		return mapper.findAll();
	}

}
