package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.ApplyforMapper;
import com.prj.pojo.Applyfor;
import com.prj.service.IApplyforService;
@Service
public class ApplyforServiceImp implements IApplyforService {
	@Resource
	private ApplyforMapper mapper;
	@Override
	public void save(Applyfor applyfor) {
		mapper.save(applyfor);
	}

	@Override
	public void del(int id) {
		mapper.del(id);
	}

	@Override
	public void update(Applyfor applyfor) {
		mapper.update(applyfor);
	}

	@Override
	public Applyfor findById(int id) {
		return mapper.findById(id);
	}

	@Override
	public List<Applyfor> findAll() {
		return mapper.findAll();
	}

}
