package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.CarType;
@Service
public interface CarTypeMapper {
	public void save(CarType carType);// ������������

	public void delete(int id);// ɾ����������

	public void update(CarType carType);// �޸ĳ�������

	public CarType findById(int id);// ����ID���ҳ�������

	public List<CarType> findAll();// ��ѯ��������
}
