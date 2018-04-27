package com.prj.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.prj.pojo.Recruit;

@Service
public interface RecruitMapper {
	public void save(Recruit recruit);

	public void del(int id);

	public void update(Recruit recruit);

	public Recruit findById(int id);

	public List<Recruit> findAll();

}
