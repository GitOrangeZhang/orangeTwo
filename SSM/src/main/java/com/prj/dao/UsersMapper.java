package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.Users;
@Service
public interface UsersMapper {
	public void save(Users user);

	public void del(int id);

	public void update(Users user);

	public Users findById(int id);

	public List<Users> findAll();
}
