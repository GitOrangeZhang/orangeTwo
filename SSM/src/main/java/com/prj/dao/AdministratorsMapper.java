package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.Administrators;
@Service
public interface AdministratorsMapper {
	public void save(Administrators admin);

	public void del(int id);

	public void update(Administrators admin);

	public Administrators findById(int id);

	public List<Administrators> findAll();
	
	public Administrators check(Administrators admin);
}
