package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.CarTypeMapper;
import com.prj.pojo.CarType;
import com.prj.service.ICarTypeService;
@Service
public class CarTypeServiceImp implements ICarTypeService {
	@Resource
	private CarTypeMapper mapper;
	@Override
	public void save(CarType carType) {
		mapper.save(carType);
	}

	@Override
	public void delete(int id) {
		mapper.delete(id);
	}

	@Override
	public void update(CarType carType) {
		mapper.update(carType);
	}

	@Override
	public CarType findById(int id) {
		return mapper.findById(id);
	}

	@Override
	public List<CarType> findAll() {
		return mapper.findAll();
	}

}
