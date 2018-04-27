package com.prj.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.UsersMapper;
import com.prj.pojo.Users;
import com.prj.service.IUsersService;
@Service
public class UsersServiceImp implements IUsersService {
	@Resource
	private UsersMapper mapper;
	@Override
	public void save(Users user) {
		mapper.save(user);
	}

	@Override
	public void del(int id) {
		mapper.del(id);
	}

	@Override
	public void update(Users user) {
		mapper.update(user);
	}

	@Override
	public Users findById(int id) {
		return mapper.findById(id);
	}

	@Override
	public List<Users> findAll() {
		return mapper.findAll();
	}
	
}
