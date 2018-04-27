package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.CarBrand;

@Service
public interface CarBrandMapper {
	public void save(CarBrand carBrand);

	public void del(int id);

	public void update(CarBrand carBrand);

	public CarBrand findById(int id);

	public List<CarBrand> findAll();
}
