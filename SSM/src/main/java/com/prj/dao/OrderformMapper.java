package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.Orderform;
@Service
public interface OrderformMapper {
	public void save(Orderform order);

	public void del(int id);

	public void update(Orderform order);

	public List<Orderform> findAll();

	public Orderform findById(int id);
	
	public List<Orderform> seach(String ofname);

}
