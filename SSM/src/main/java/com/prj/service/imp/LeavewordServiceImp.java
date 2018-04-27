package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.LeavewordMapper;
import com.prj.pojo.Leaveword;
import com.prj.service.ILeavewordService;
@Service
public class LeavewordServiceImp implements ILeavewordService {
	@Resource
	private LeavewordMapper mapper;
	@Override
	public void save(Leaveword lea) {
		mapper.save(lea);
	}

	@Override
	public void del(int id) {
		mapper.del(id);
	}

	@Override
	public void update(Leaveword lea) {
		mapper.update(lea);
	}

	@Override
	public List<Leaveword> findAll() {
		return mapper.findAll();
	}

	@Override
	public Leaveword findById(int id) {
		return mapper.findById(id);
	}

}
