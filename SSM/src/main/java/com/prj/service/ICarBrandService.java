package com.prj.service;

import java.util.List;

import com.prj.pojo.CarBrand;

public interface ICarBrandService {
	public void save(CarBrand carBrand);

	public void del(int id);

	public void update(CarBrand carBrand);

	public CarBrand findById(int id);

	public List<CarBrand> findAll();
}
