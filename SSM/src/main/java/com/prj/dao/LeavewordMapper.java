package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.Leaveword;
@Service
public interface LeavewordMapper {
	public void save(Leaveword lea);

	public void del(int id);

	public void update(Leaveword lea);

	public List<Leaveword> findAll();

	public Leaveword findById(int id);
}
