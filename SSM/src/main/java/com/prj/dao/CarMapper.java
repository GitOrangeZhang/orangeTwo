package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.Car;
@Service
// ��������
public interface CarMapper {
	public void save(Car car);

	// ɾ������
	public void delete(int id);

	// ����ID����
	public Car findById(int id);

	// �޸ĳ���
	public void update(Car car);

	// ��ѯ���г���
	public List<Car> findAll();

}
