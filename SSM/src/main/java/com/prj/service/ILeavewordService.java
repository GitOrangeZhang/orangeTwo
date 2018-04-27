package com.prj.service;

import java.util.List;

import com.prj.pojo.Leaveword;

public interface ILeavewordService {
	public void save(Leaveword lea);

	public void del(int id);

	public void update(Leaveword lea);

	public List<Leaveword> findAll();

	public Leaveword findById(int id);
}
