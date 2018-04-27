package com.prj.service;

import java.util.List;

import com.prj.pojo.CarType;

public interface ICarTypeService {
	public void save(CarType carType);// ������������

	public void delete(int id);// ɾ����������

	public void update(CarType carType);// �޸ĳ�������

	public CarType findById(int id);// ����ID���ҳ�������

	public List<CarType> findAll();// ��ѯ��������
}
