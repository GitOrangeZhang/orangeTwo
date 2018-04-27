package com.prj.service;

import java.util.List;

import com.prj.pojo.Car;

public interface ICarService {
	// 新增车辆
		public void save(Car car);

		// 删除车辆
		public void delete(int id);

		// 根据ID查找
		public Car findById(int id);

		// 修改车辆
		public void update(Car car);

		// 查询所有车辆
		public List<Car> findAll();
}
