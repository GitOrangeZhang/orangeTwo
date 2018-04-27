package com.prj.service;

import java.util.List;

import com.prj.pojo.Users;

public interface IUsersService {
	public void save(Users user);

	public void del(int id);

	public void update(Users user);

	public Users findById(int id);

	public List<Users> findAll();
}
