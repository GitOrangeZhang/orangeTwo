package com.prj.service;

import java.util.List;

import com.prj.pojo.CarType;

public interface ICarTypeService {
	public void save(CarType carType);// 新增车辆类型

	public void delete(int id);// 删除车辆类型

	public void update(CarType carType);// 修改车辆类型

	public CarType findById(int id);// 根据ID查找车辆类型

	public List<CarType> findAll();// 查询所有类型
}
