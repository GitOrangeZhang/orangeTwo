package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.AdministratorsMapper;
import com.prj.pojo.Administrators;
import com.prj.service.IAdminService;
@Service
public class AdminServiceImp implements IAdminService {
	@Resource
	private AdministratorsMapper mapper;
	@Override
	public void save(Administrators admin) {
		mapper.save(admin);
	}

	@Override
	public void del(int id) {
		mapper.del(id);
	}

	@Override
	public void update(Administrators admin) {
		mapper.update(admin);
	}

	@Override
	public Administrators findById(int id) {
		return mapper.findById(id);
	}

	@Override
	public List<Administrators> findAll() {
		return mapper.findAll();
	}

	@Override
	public Administrators check(Administrators admin) {
		return mapper.check(admin);
	}

}
