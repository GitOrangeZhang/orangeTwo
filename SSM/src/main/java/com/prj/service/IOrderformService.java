package com.prj.service;

import java.util.List;

import com.prj.pojo.Orderform;

public interface IOrderformService {
	public void save(Orderform order);

	public void del(int id);

	public void update(Orderform order);

	public List<Orderform> findAll();

	public Orderform findById(int id);

}
