package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.RecruitMapper;
import com.prj.pojo.Recruit;
import com.prj.service.IRecruitService;
@Service
public class RecruitServicerImp implements IRecruitService {
	@Resource
	private RecruitMapper mapper;
	@Override
	public void save(Recruit recruit) {
		mapper.save(recruit);
	}

	@Override
	public void del(int id) {
		mapper.del(id);
	}

	@Override
	public void update(Recruit recruit) {
		mapper.update(recruit);
	}

	@Override
	public Recruit findById(int id) {
		return mapper.findById(id);
	}

	@Override
	public List<Recruit> findAll() {
		return mapper.findAll();
	}

}
