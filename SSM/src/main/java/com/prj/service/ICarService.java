package com.prj.service;

import java.util.List;

import com.prj.pojo.Car;

public interface ICarService {
	// ��������
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
