package com.prj.service;

import java.util.List;

import com.prj.pojo.Administrators;

public interface IAdminService {
	public void save(Administrators admin);

	public void del(int id);

	public void update(Administrators admin);

	public Administrators findById(int id);

	public List<Administrators> findAll();
	
	public Administrators check(Administrators admin);
}
