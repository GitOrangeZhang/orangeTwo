package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.CarMapper;
import com.prj.pojo.Car;
import com.prj.service.ICarService;
@Service
public class CarServiceImp implements ICarService {
	@Resource
	private CarMapper mapper;

	@Override
	public void save(Car car) {
		mapper.save(car);
	}

	@Override
	public void delete(int id) {
		mapper.delete(id);
	}

	@Override
	public Car findById(int id) {
		return mapper.findById(id);
	}

	@Override
	public void update(Car car) {
		mapper.update(car);
	}

	@Override
	public List<Car> findAll() {
		return mapper.findAll();
	}
	
}
