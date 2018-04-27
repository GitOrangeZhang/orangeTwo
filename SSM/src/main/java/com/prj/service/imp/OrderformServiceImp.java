package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.OrderformMapper;
import com.prj.pojo.Orderform;
import com.prj.service.IOrderformService;
@Service
public class OrderformServiceImp implements IOrderformService {
	@Resource
	private OrderformMapper mapper;
	@Override
	public void save(Orderform order) {
		mapper.save(order);
	}

	@Override
	public void del(int id) {
		mapper.del(id);
	}

	@Override
	public void update(Orderform order) {
		mapper.update(order);
	}

	@Override
	public List<Orderform> findAll() {
		return mapper.findAll();
	}

	@Override
	public Orderform findById(int id) {
		return mapper.findById(id);
	}

}
