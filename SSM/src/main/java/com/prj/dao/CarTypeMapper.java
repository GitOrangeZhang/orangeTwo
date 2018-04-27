package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.CarType;
@Service
public interface CarTypeMapper {
	public void save(CarType carType);// 新增车辆类型

	public void delete(int id);// 删除车辆类型

	public void update(CarType carType);// 修改车辆类型

	public CarType findById(int id);// 根据ID查找车辆类型

	public List<CarType> findAll();// 查询所有类型
}
